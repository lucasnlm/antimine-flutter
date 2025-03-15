import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/hash/game_hash.dart';
import '../../../common/hash/hash_manager.dart';
import '../../../common/models/file/save.dart';
import '../../../foundation/io/save_file_manager.dart';
import '../models/history_item.dart';
import 'history_state.dart';

class HistoryBloc extends Cubit<HistoryState> {
  HistoryBloc({required this.saveFileManager, required this.hashManager})
    : super(const HistoryState(isLoading: true));

  final SaveFileManager saveFileManager;
  final HashManager hashManager;

  void load() async {
    final saveList = await saveFileManager.loadSaveList();
    final items = <String, List<HistoryItem>>{};

    for (var save in saveList.saves) {
      final loaded = await saveFileManager.loadSave(save);
      if (loaded != null && loaded.turns > 1) {
        final hash = _hashFromSave(loaded);
        if (hash != null) {
          final list = items[hash.hash] ?? [];
          items[hash.hash] = [...list, HistoryItem(save: loaded, hash: hash)];
        }
      }
    }

    for (var item in items.keys) {
      final games = items[item];
      if (games != null && games.length > 1) {
        games.sort((a, b) => b.save.startDate - a.save.startDate);
        items[item] = [games.first];
      }
    }

    final itemsList = items.values.expand((e) => e).toList();

    final sortedList = itemsList.toList();
    sortedList.sort((a, b) => b.save.startDate - a.save.startDate);

    emit(HistoryState(isLoading: false, historyItems: sortedList));
  }

  GameHash? _hashFromSave(SaveGame save) {
    final id = save.firstOpen.initialId;
    if (id == null) {
      return null;
    }

    final minefield = save.minefield.copyWith(seed: save.seed);

    final area =
        save.areas.where((e) => e.id == id).firstOrNull ?? save.areas[id];

    final initialX = area.x;
    final initialY = area.y;

    final hash = hashManager.createHash(
      minefield: minefield,
      initialX: initialX,
      initialY: initialY,
    );

    return hashManager.parseHash(hash);
  }
}
