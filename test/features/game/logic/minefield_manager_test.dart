import 'dart:ui';

import 'package:antimine/common/models/difficulty.dart';
import 'package:antimine/common/minefield/minefield_manager.dart';
import 'package:antimine/common/settings/settings_manager.dart';
import 'package:antimine/features/game/logic/dimension_manager.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/mocks/test_settings_repository.dart';

void main() {
  final testRepository = TestSettingsRepository();
  final dimensionManager = DimensionManager(isMobile: true);
  final settingsManager = SettingsManager(repository: testRepository);
  final minefieldManager = MinefieldManager(
    dimensionManager: dimensionManager,
    settingsManager: settingsManager,
  );
  const seed = 300;
  const screenSize = Size(600, 800);

  setUp(() async {
    dimensionManager.init(screenSize: screenSize);
    await settingsManager.reload();
  });

  test('seed is saved in minefield', () {
    final result = minefieldManager.createMinefieldByDifficulty(
      difficulty: Difficulty.beginner,
      seed: seed,
    );

    expect(result.seed, seed);
  });

  test('beginner minefield', () {
    final result = minefieldManager.createMinefieldByDifficulty(
      difficulty: Difficulty.beginner,
      seed: seed,
    );

    expect(result.width, 9);
    expect(result.height, 9);
    expect(result.mines, 10);
  });

  test('intermediate minefield', () {
    final result = minefieldManager.createMinefieldByDifficulty(
      difficulty: Difficulty.intermediate,
      seed: seed,
    );

    expect(result.width, 16);
    expect(result.height, 16);
    expect(result.mines, 40);
  });

  test('expert minefield', () {
    final result = minefieldManager.createMinefieldByDifficulty(
      difficulty: Difficulty.expert,
      seed: seed,
    );

    expect(result.width, 24);
    expect(result.height, 24);
    expect(result.mines, 99);
  });

  test('master minefield', () {
    final result = minefieldManager.createMinefieldByDifficulty(
      difficulty: Difficulty.master,
      seed: seed,
    );

    expect(result.width, 50);
    expect(result.height, 50);
    expect(result.mines, 450);
  });

  test('legend minefield', () {
    final result = minefieldManager.createMinefieldByDifficulty(
      difficulty: Difficulty.legend,
      seed: seed,
    );

    expect(result.width, 100);
    expect(result.height, 100);
    expect(result.mines, 2000);
  });

  test('createMinefieldByDifficulty cant create CUSTOM', () {
    // Given
    settingsManager.setCustomWidth(20);
    settingsManager.setCustomHeight(25);
    settingsManager.setCustomMines(50);

    // When
    final result = minefieldManager.createMinefieldByDifficulty(
      difficulty: Difficulty.custom,
      seed: seed,
    );

    // Then
    expect(result.width, 20);
    expect(result.height, 25);
    expect(result.mines, 50);
  });

  test('difficulties have crescent proportion', () {
    final difficulties = [
      Difficulty.beginner,
      Difficulty.intermediate,
      Difficulty.expert,
      Difficulty.master,
      Difficulty.legend,
    ];

    final proportions =
        difficulties.map((difficulty) {
          final minefield = minefieldManager.createMinefieldByDifficulty(
            difficulty: difficulty,
            seed: seed,
          );
          return minefield.mines / (minefield.width * minefield.height);
        }).toList();

    var current = 0.0;
    final result = proportions.fold(true, (previousValue, element) {
      final lastElement = current;
      current = element;
      return previousValue && (lastElement < element);
    });

    expect(result, isTrue);
  });
}
