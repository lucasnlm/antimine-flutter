import 'dart:math';

import '../../features/game/logic/dimension_manager.dart';
import '../models/difficulty.dart';
import '../models/minefield.dart';
import '../settings/settings_manager.dart';

class MinefieldManager {
  MinefieldManager({
    required this.dimensionManager,
    required this.settingsManager,
  });

  final DimensionManager dimensionManager;
  final SettingsManager settingsManager;

  Difficulty fromMinefield(Minefield? minefield) {
    if (minefield == null) {
      return Difficulty.standard;
    }

    final width = minefield.width;
    final height = minefield.height;
    final mines = minefield.mines;

    if (width == 9 && height == 9 && mines == 10) {
      return Difficulty.beginner;
    } else if (width == 16 && height == 16 && mines == 40) {
      return Difficulty.intermediate;
    } else if (width == 24 && height == 24 && mines == 99) {
      return Difficulty.expert;
    } else if (width == 50 && height == 50 && mines == 450) {
      return Difficulty.master;
    } else if (width == 100 && height == 100 && mines == 2000) {
      return Difficulty.legend;
    } else {
      return Difficulty.custom;
    }
  }

  Minefield createMinefieldByDifficulty({
    required Difficulty difficulty,
    required int seed,
  }) {
    switch (difficulty) {
      case Difficulty.fixedSize:
        final stdSize = dimensionManager.standardMinefieldSize();
        final area = stdSize.width * stdSize.height;
        final baseMines = (area * _initMineRatio).toInt();
        final progress = settingsManager.cache.progressiveValue;
        final maxMines = (area * _maxMineRatio).toInt();
        final mines = min(maxMines, baseMines + progress);
        final width = stdSize.width.toInt();
        final height = stdSize.height.toInt();

        return Minefield(
          seed: seed,
          width: width,
          height: height,
          mines: mines,
        );
      case Difficulty.standard:
        final stdSize = dimensionManager.standardMinefieldSize();
        final area = stdSize.width * stdSize.height;
        final baseMines = (area * _initMineRatio).toInt();
        final progress = settingsManager.cache.progressiveValue;
        final maxMines = (area * _maxMineRatio).toInt();
        final mines = min(maxMines, baseMines + progress);
        var width = stdSize.width.toInt();
        var height = stdSize.height.toInt();
        var currentRatio = mines / (width * height);
        while (currentRatio > _maxProgressiveRatio) {
          width += _incrementStep;
          height += _incrementStep;
          currentRatio = mines / (width * height);
        }

        return Minefield(
          seed: seed,
          width: width,
          height: height,
          mines: mines,
        );
      case Difficulty.beginner:
        return Minefield(seed: seed, width: 9, height: 9, mines: 10);
      case Difficulty.intermediate:
        return Minefield(seed: seed, width: 16, height: 16, mines: 40);
      case Difficulty.expert:
        return Minefield(seed: seed, width: 24, height: 24, mines: 99);
      case Difficulty.master:
        return Minefield(seed: seed, width: 50, height: 50, mines: 450);
      case Difficulty.legend:
        return Minefield(seed: seed, width: 100, height: 100, mines: 2000);
      case Difficulty.custom:
        return Minefield(
          seed: seed,
          width: settingsManager.cache.customWidth,
          height: settingsManager.cache.customHeight,
          mines: settingsManager.cache.customMines,
        );
    }
  }

  String formatToString(Difficulty difficulty) {
    final minefield = createMinefieldByDifficulty(
      difficulty: difficulty,
      seed: 0,
    );

    final width = minefield.width;
    final height = minefield.height;
    final mines = minefield.mines;
    return "$width × $height - $mines";
  }

  static const _initMineRatio = 0.15;
  static const _maxMineRatio = 0.75;
  static const _maxProgressiveRatio = 0.19;
  static const _incrementStep = 2;
}
