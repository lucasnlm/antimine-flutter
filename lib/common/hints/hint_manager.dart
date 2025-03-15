import 'dart:math';

import '../../features/game/logic/game_constants.dart';
import '../settings/settings_repository.dart';

class HintManager {
  HintManager({required this.repository});

  final SettingsRepository repository;
  int? _hintCount;

  void clear() {
    _hintCount = null;
  }

  Future<int> getAmount() {
    final current = _hintCount;
    if (current != null) {
      return Future.value(current);
    }

    return repository.getInt(_hintCountKey, GameConstants.initialHintCount);
  }

  Future<void> addHint(int value) async {
    final current = await getAmount();
    final newValue = max(0, current + value);
    return repository
        .setInt(_hintCountKey, newValue)
        .then((value) => _hintCount = newValue);
  }

  Future<void> consumeHint() async {
    final current = await getAmount();
    final newValue = max(0, current - 1);
    return repository
        .setInt(_hintCountKey, newValue)
        .then((value) => _hintCount = newValue);
  }

  static const _hintCountKey = 'current_tips';
}
