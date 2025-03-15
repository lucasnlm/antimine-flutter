import 'package:antimine/common/hints/hint_manager.dart';
import 'package:antimine/features/game/logic/game_constants.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/mocks/test_settings_repository.dart';

void main() {
  final testSettingsRepository = TestSettingsRepository();
  final hintManager = HintManager(
    repository: testSettingsRepository,
  );

  tearDown(() {
    testSettingsRepository.clear();
    hintManager.clear();
  });

  test('initial hint count', () async {
    final amount = await hintManager.getAmount();
    expect(amount, GameConstants.initialHintCount);
  });

  test('add hint', () async {
    // When
    await hintManager.addHint(1);

    // Then
    final amount = await hintManager.getAmount();
    expect(amount, GameConstants.initialHintCount + 1);
  });

  test('consume hint', () async {
    // When
    await hintManager.consumeHint();

    // Then
    final amount = await hintManager.getAmount();
    expect(amount, GameConstants.initialHintCount - 1);
  });

  test('consume hint when no hints', () async {
    // When
    for (var i = 0; i < GameConstants.initialHintCount + 1; i++) {
      await hintManager.consumeHint();
    }

    // Then
    final amount = await hintManager.getAmount();
    expect(amount, 0);
  });
}
