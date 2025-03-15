import 'package:equatable/equatable.dart';

import '../../../common/models/difficulty.dart';

class StatsBoard extends Equatable {
  const StatsBoard({
    required this.difficulty,
    required this.hasGamesPlayed,
    required this.gamesPlayed,
    required this.totalMines,
    required this.totalTime,
    required this.averageTime,
    required this.bestTime,
    required this.openedCells,
    required this.winPercentage,
    required this.victories,
    required this.defeats,
  });

  final Difficulty? difficulty;
  final bool hasGamesPlayed;
  final String gamesPlayed;
  final String totalMines;
  final String totalTime;
  final String averageTime;
  final String bestTime;
  final String openedCells;
  final String winPercentage;
  final String victories;
  final String defeats;

  @override
  List<Object?> get props => [
        difficulty,
        hasGamesPlayed,
        gamesPlayed,
        totalMines,
        totalTime,
        averageTime,
        bestTime,
        openedCells,
        winPercentage,
        victories,
        defeats,
      ];
}
