import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';

import '../../common/models/stats.dart';
import 'stats_file_serializer.dart';

class StatsFileManager {
  StatsFileManager({Future<Directory>? statsDirectory})
    : statsDirectory = statsDirectory ?? _getStatsDirectory();

  final Future<Directory> statsDirectory;

  Future<List<Stats>> loadStats() async {
    final statsFile = await _getStatsFile();
    if (await statsFile.exists()) {
      final saveContent = await statsFile.readAsBytes();
      return StatsFileSerializer.fromUint8List(saveContent);
    } else {
      return Future.value([]);
    }
  }

  Future<void> deleteStats() async {
    List<Stats> statsList = [];
    await _writeList(statsList);
  }

  Future<void> insertStats(Stats stats) async {
    List<Stats> statsList = await loadStats();
    statsList.add(stats);
    await _writeList(statsList);
  }

  Future<void> _writeList(List<Stats> statsList) async {
    Uint8List statsContent = StatsFileSerializer.toUint8List(statsList);
    final statsFile = await _getStatsFile();
    await statsFile.writeAsBytes(statsContent);
  }

  Future<File> _getStatsFile() async {
    final statsDirectoryPath = (await statsDirectory).path;
    return File('$statsDirectoryPath/stats');
  }

  static Future<Directory> _getStatsDirectory() async {
    final directory = await getApplicationSupportDirectory();
    final saveDirectory = Directory('${directory.path}/stats');
    if (!await saveDirectory.exists()) {
      await saveDirectory.create();
    }
    return saveDirectory;
  }
}
