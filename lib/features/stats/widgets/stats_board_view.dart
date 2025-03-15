import 'package:flutter/material.dart';

import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/themes_panel.dart';
import '../models/stats_board.dart';
import 'stats_divider.dart';
import 'stats_item.dart';

class StatsBoardView extends StatelessWidget {
  const StatsBoardView({super.key, required this.title, required this.board});

  final String title;
  final StatsBoard board;

  @override
  Widget build(BuildContext context) {
    return TitledPanel(
      title: title,
      children: [
        StatsItem(name: t.games, value: board.gamesPlayed.toString()),
        const StatsDivider(),
        StatsItem(name: t.mines, value: board.totalMines.toString()),
        const StatsDivider(),
        StatsItem(name: t.total_time, value: board.totalTime.toString()),
        const StatsDivider(),
        StatsItem(name: t.average_time, value: board.averageTime.toString()),
        const StatsDivider(),
        StatsItem(name: t.shortest_time, value: board.bestTime.toString()),
        const StatsDivider(),
        StatsItem(name: t.open_areas, value: board.openedCells.toString()),
        const StatsDivider(),
        StatsItem(name: t.performance, value: board.winPercentage.toString()),
        const StatsDivider(),
        StatsItem(name: t.victories, value: board.victories.toString()),
        const StatsDivider(),
        StatsItem(name: t.defeats, value: board.defeats.toString()),
      ],
    );
  }
}
