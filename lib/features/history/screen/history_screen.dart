import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/models/difficulty.dart';
import '../../../common/models/game_status.dart';
import '../../../common/utils/build_context_ext.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/side_effect/side_effect_bloc.dart';
import '../../../foundation/side_effect/side_effect_event.dart';
import '../../../foundation/ui/spacing.dart';
import '../../game/bloc/game_side_effect.dart';
import '../../game/game_route.dart';
import '../bloc/history_bloc.dart';
import '../bloc/history_state.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HistoryScreenState();
  }
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(
      builder: (context, state) {
        final theme = Theme.of(context);
        final colorScheme = theme.colorScheme;
        return BlocListener<SideEffectBloc, SideEffectEvent?>(
          listener: (context, event) {
            if (event is VictoryEffect || event is GameOverEffect) {
              context.read<HistoryBloc>().load();
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text(t.previous_games),
              actions: [
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    context.read<HistoryBloc>().load();
                  },
                ),
              ],
            ),
            body: [
              if (state.isLoading)
                const Center(
                  child: CircularProgressIndicator(),
                ),
              if (state.historyItems.isNotEmpty)
                SafeArea(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      vertical: Spacing.x8,
                    ),
                    itemCount: state.historyItems.length,
                    itemBuilder: (context, index) {
                      final item = state.historyItems[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: isTablet ? Spacing.x128 : Spacing.x16,
                          vertical: Spacing.x4,
                        ),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Spacing.x8),
                          ),
                          tileColor: colorScheme.onSurface.withOpacity(0.1),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: Spacing.x16,
                            vertical: Spacing.x8,
                          ),
                          leading: Icon(
                            item.save.status == GameStatus.success
                                ? Icons.star
                                : Icons.star_border,
                            color: theme.colorScheme.primary,
                          ),
                          onTap: () {
                            GameRoute.openAsPreview(
                              context,
                              item.save.id,
                            );
                          },
                          title: Text(
                            difficultyToString(item.save.difficulty),
                            style: theme.textTheme.titleMedium,
                          ),
                          subtitle: Text(
                            item.hash.hash,
                            style: theme.textTheme.titleSmall?.copyWith(
                              color: theme.colorScheme.primary.withOpacity(0.5),
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.search),
                                tooltip: t.open,
                                onPressed: () {
                                  GameRoute.openAsPreview(
                                    context,
                                    item.save.id,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              if (state.historyItems.isEmpty)
                Center(
                  child: Text(t.empty),
                ),
            ].first,
          ),
        );
      },
    );
  }

  String difficultyToString(Difficulty difficulty) {
    switch (difficulty) {
      case Difficulty.standard:
        return t.progressive;
      case Difficulty.fixedSize:
        return t.fixed_size;
      case Difficulty.custom:
        return t.custom;
      case Difficulty.beginner:
        return t.beginner;
      case Difficulty.intermediate:
        return t.intermediate;
      case Difficulty.expert:
        return t.expert;
      case Difficulty.master:
        return t.master;
      case Difficulty.legend:
        return t.legend;
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<HistoryBloc>().load();
  }
}
