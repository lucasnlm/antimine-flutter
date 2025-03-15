import 'dart:io';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

import '../../common/models/file/save.dart';
import '../../common/models/file/save_list.dart';
import '../../common/models/game_status.dart';
import '../uuid/uuid_generator.dart';
import 'save_file_serializer.dart';

class SaveFileManager {
  SaveFileManager({
    this.maxSaves = 100,
    required this.uuidGenerator,
    Future<Directory>? saveDirectory,
  }) : saveDirectory = saveDirectory ?? _getSaveDirectory();

  final int maxSaves;
  final UuidGenerator uuidGenerator;
  final Future<Directory> saveDirectory;
  final Set<String> saveListCache = {};

  /// Clears the save list cache.
  Future<void> clearCache() async {
    saveListCache.clear();
    await loadSaveList();
  }

  Future<SaveGame?> loadPreviewSave() async {
    final bytes = await rootBundle.load('assets/saves/preview.save');
    final saveContent = bytes.buffer.asUint8List();
    final save = SaveFileSerializer.fromUint8List(null, saveContent);
    return save?.copyWith(
      id: null,
      duration: 15000,
      status: GameStatus.notStarted,
    );
  }

  /// Loads a save game from the file system.
  Future<SaveGame?> loadSave(String id) async {
    final saveFile = await _saveFileOf(id);
    if (await saveFile.exists()) {
      final saveContent = await saveFile.readAsBytes();
      return SaveFileSerializer.fromUint8List(id, saveContent);
    } else {
      return Future.value(null);
    }
  }

  /// Saves a save game to the file system.
  Future<void> saveSave(SaveGame save) async {
    final saveId = save.id;

    if (saveId == null) {
      return;
    }

    final saveFile = await _saveFileOf(saveId);
    final saveContent = SaveFileSerializer.toUint8List(save);
    final file = await saveFile.writeAsBytes(saveContent);

    if (await file.exists()) {
      await insertToSaveList(saveId);
    }
  }

  /// Reads the save list from the file system.
  Future<SaveList> loadSaveList() async {
    if (saveListCache.isNotEmpty) {
      return SaveList(saves: saveListCache);
    }

    final saveIds = <String>{};

    final saveDir = await saveDirectory;
    final saveList = saveDir.listSync();
    saveList
        .sort((a, b) => a.statSync().modified.compareTo(b.statSync().modified));
    for (final file in saveList) {
      if (file.path.endsWith('.save')) {
        final saveId = file.path.split('/').last.replaceAll('.save', '');
        saveIds.add(saveId);
      }
    }

    saveListCache
      ..clear()
      ..addAll(saveIds);

    return SaveList(saves: saveIds);
  }

  Future<void> syncSaves() async {
    final saveList = await loadSaveList();

    final saves = <SaveGame>[];
    for (final saveId in saveList.saves) {
      final save = await loadSave(saveId);
      if (save != null) {
        saves.add(save);
      }
    }

    // Sort by last modified date
    saves.sort((a, b) => b.startDate.compareTo(a.startDate));

    // Delete old saves
    saves.skip(maxSaves).forEach((save) {
      final saveId = save.id;
      if (saveId != null) {
        deleteSave(saveId);
      }
    });
  }

  Future<void> deleteSave(String saveId) async {
    final saveFile = await _saveFileOf(saveId);
    if (await saveFile.exists()) {
      await saveFile.delete();
    }

    saveListCache.remove(saveId);
  }

  Future<void> insertToSaveList(String saveId) async {
    if (saveListCache.length >= max(1, maxSaves)) {
      final firstSave = saveListCache.first;
      saveListCache.remove(firstSave);
      deleteSave(firstSave);
    }

    saveListCache.add(saveId);
  }

  /// Generates a new save game id.
  String generateId() {
    return uuidGenerator.generate();
  }

  Future<File> _saveFileOf(String id) async {
    final saveDirectoryPath = (await saveDirectory).path;
    return File('$saveDirectoryPath/$id.save');
  }

  static Future<Directory> _getSaveDirectory() async {
    final directory = await getApplicationSupportDirectory();
    final saveDirectory = Directory('${directory.path}/saves');
    if (!await saveDirectory.exists()) {
      await saveDirectory.create();
    }
    return saveDirectory;
  }
}
