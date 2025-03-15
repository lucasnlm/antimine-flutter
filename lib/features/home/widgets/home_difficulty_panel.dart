import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/models/difficulty.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/game_button.dart';
import '../../../foundation/ui/spacing.dart';
import '../../custom/custom_game_dialog.dart';
import '../../custom/shared_game_dialog.dart';
import '../bloc/home_bloc.dart';

class HomeDifficultyPanel extends StatelessWidget {
  const HomeDifficultyPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final bloc = context.read<HomeBloc>();
    final state = bloc.state;
    return Padding(
      padding: const EdgeInsets.only(
        top: Spacing.x8,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: colorScheme.onSurface,
            width: Spacing.x2,
          ),
          borderRadius: BorderRadius.circular(Spacing.x8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.x2,
          ),
          child: Column(
            children: [
              GameButton(
                onPressed: () {
                  bloc.startNewGame(Difficulty.standard);
                },
                trailingText: state.stringDifficulty(Difficulty.standard),
                icon: Icons.signal_cellular_alt,
                label: t.progressive,
              ),
              GameButton(
                onPressed: () {
                  bloc.startNewGame(Difficulty.fixedSize);
                },
                trailingText: state.stringDifficulty(Difficulty.fixedSize),
                icon: Icons.square_foot,
                label: t.fixed_size,
              ),
              Container(
                height: Spacing.x2,
                padding: const EdgeInsets.symmetric(
                  horizontal: Spacing.x24,
                ),
                color: colorScheme.onSurface.withOpacity(0.25),
              ),
              ...{
                MapEntry(t.beginner, Difficulty.beginner),
                MapEntry(t.intermediate, Difficulty.intermediate),
                MapEntry(t.expert, Difficulty.expert),
                MapEntry(t.master, Difficulty.master),
                MapEntry(t.legend, Difficulty.legend),
              }.map((entry) {
                return GameButton(
                  isDense: true,
                  onPressed: () {
                    bloc.startNewGame(entry.value);
                  },
                  trailingText: state.stringDifficulty(entry.value),
                  label: entry.key,
                );
              }),
              Container(
                height: Spacing.x2,
                padding: const EdgeInsets.symmetric(
                  horizontal: Spacing.x24,
                ),
                color: colorScheme.onSurface.withOpacity(0.25),
              ),
              GameButton(
                icon: Icons.construction,
                isDense: true,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => CustomGameDialog(
                      context: context,
                      settingsManager: bloc.settingsManager,
                    ),
                  );
                },
                label: t.custom,
              ),
              GameButton(
                icon: Icons.tag,
                isDense: true,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => SharedGameDialog(
                      context: context,
                      settingsManager: bloc.settingsManager,
                      minefieldManager: bloc.minefieldManager,
                    ),
                  );
                },
                label: t.shared_game,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
