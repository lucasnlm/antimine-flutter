import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/utils/duration_ext.dart';
import '../../../common/models/difficulty.dart';
import '../../../common/models/stats.dart';
import '../../../foundation/io/stats_file_manager.dart';
import '../logic/difficulty_logic.dart';
import '../logic/stats_logic.dart';
import '../models/stats_board.dart';
import 'stats_state.dart';

class StatsBloc extends Cubit<StatsState> {
  StatsBloc({
    required this.staticsFileManager,
  }) : super(const StatsState(loading: true, boards: []));

  final StatsFileManager staticsFileManager;

  void deleteStats() async {
    await staticsFileManager.deleteStats();
    emit(
      state.copyWith(
        loading: false,
        boards: [],
      ),
    );
  }

  void loadStats() async {
    final stats = await staticsFileManager.loadStats();

    final boards = <StatsBoard>[
      // All
      _buildBoard(
        difficulty: null,
        stats: stats,
      ),

      // Standard
      _buildBoard(
        difficulty: Difficulty.standard,
        stats: stats.where(isStandard),
      ),

      // Fixed size
      _buildBoard(
        difficulty: Difficulty.fixedSize,
        stats: stats.where(isFixedSize),
      ),

      // Legend
      _buildBoard(
        difficulty: Difficulty.legend,
        stats: stats.where(isLegend),
      ),

      // Master
      _buildBoard(
        difficulty: Difficulty.master,
        stats: stats.where(isMaster),
      ),

      // Expert
      _buildBoard(
        difficulty: Difficulty.expert,
        stats: stats.where(isExpert),
      ),

      // Intermediate
      _buildBoard(
        difficulty: Difficulty.intermediate,
        stats: stats.where(isIntermediate),
      ),

      // Beginner
      _buildBoard(
        difficulty: Difficulty.beginner,
        stats: stats.where(isBeginner),
      ),

      // Custom
      _buildBoard(
        difficulty: Difficulty.custom,
        stats: stats.where(isCustom),
      ),
    ];

    var filteredBoards = boards.where((e) => e.hasGamesPlayed);

    if (filteredBoards.length == 2) {
      // If there's only one difficulty with games played,
      // then we remove the "General" board.
      filteredBoards = filteredBoards.where((e) => e.difficulty != null);
    }

    emit(
      state.copyWith(
        loading: false,
        boards: filteredBoards.toList(),
      ),
    );
  }

  String _formattedDuration(int? duration) {
    if (duration == 0 || duration == null) {
      return notApplicable;
    } else {
      final result = Duration(milliseconds: duration).toFormattedString();
      if (result == "00:00" || result == "0:00") {
        return notApplicable;
      } else {
        return result;
      }
    }
  }

  String _toPercentage(double value) {
    final formatted = value.toStringAsFixed(2).replaceAll('.00', '');
    return "$formatted %";
  }

  StatsBoard _buildBoard({
    required Iterable<Stats> stats,
    required Difficulty? difficulty,
  }) {
    final victories = stats.victories();
    final totalMines = victories.sumMines();
    final totalTimeVictories = victories.sumDuration();
    final totalTime = stats.sumDuration();
    final bestTime = victories.minDuration();
    final openedCells = stats.sumOpenArea();
    final averageTime = totalTimeVictories ~/ max(1, victories.length);
    final winPercentage = ((victories.length / max(1, stats.length)) * 100);

    return StatsBoard(
      difficulty: difficulty,
      hasGamesPlayed: stats.isNotEmpty,
      gamesPlayed: stats.length.toString(),
      totalMines: totalMines.toString(),
      totalTime: _formattedDuration(totalTime),
      averageTime: _formattedDuration(averageTime),
      bestTime: _formattedDuration(bestTime),
      openedCells: openedCells.toString(),
      winPercentage:
          victories.isNotEmpty ? _toPercentage(winPercentage) : notApplicable,
      victories: victories.length.toString(),
      defeats: (stats.length - victories.length).toString(),
    );
  }

  static const String notApplicable = "—";
}
