import 'package:flutter/material.dart';

import '../../../common/models/difficulty.dart';
import '../../../common/utils/build_context_ext.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/spacing.dart';
import '../models/stats_board.dart';
import 'stats_board_view.dart';

class LoadedStatsList extends StatelessWidget {
  const LoadedStatsList({
    super.key,
    required this.boards,
  });

  final List<StatsBoard> boards;

  String _difficultyTitle(
    BuildContext context,
    Difficulty? difficulty,
  ) {
    switch (difficulty) {
      case Difficulty.standard:
        return t.standard;
      case Difficulty.fixedSize:
        return t.fixed_size;
      case Difficulty.legend:
        return t.legend;
      case Difficulty.master:
        return t.master;
      case Difficulty.expert:
        return t.expert;
      case Difficulty.intermediate:
        return t.intermediate;
      case Difficulty.beginner:
        return t.beginner;
      case Difficulty.custom:
        return t.custom;
      default:
        return t.general;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (boards.isEmpty) {
      return Center(
        child: Text(t.empty),
      );
    } else {
      return ListView.separated(
        padding: EdgeInsets.symmetric(
          vertical: Spacing.x16,
          horizontal: isTablet ? Spacing.x128 : 0.0,
        ),
        itemCount: boards.length,
        itemBuilder: (context, index) {
          final board = boards[index];
          return StatsBoardView(
            title: _difficultyTitle(
              context,
              board.difficulty,
            ),
            board: board,
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: Spacing.x16,
          );
        },
      );
    }
  }
}
