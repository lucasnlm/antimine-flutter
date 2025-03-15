import 'package:flutter/material.dart';

import '../../common/models/game_settings.dart';
import '../../foundation/i18n/translations.g.dart';
import '../../foundation/ui/game_container.dart';
import '../game/bloc/game_bloc.dart';
import '../../foundation/ui/game_button_align.dart';
import '../../foundation/ui/spacing.dart';
import '../../foundation/ui/game_button.dart';
import '../settings/settings_route.dart';
import '../tutorial/tutorial_route.dart';
import 'view/game_dialog.dart';
import 'view/game_dialog_bar.dart';
import 'view/game_emojis.dart';

class GameOverDialog extends StatelessWidget {
  const GameOverDialog({
    super.key,
    required this.outContext,
    required this.bloc,
    required this.settings,
  });

  final BuildContext outContext;
  final GameBloc bloc;
  final GameSettings settings;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = bloc.state;
    final showContinue = state.turn > 2 || !settings.showTutorialButton;

    bloc.stopTutorialButton();

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GameDialog(
          child: Column(
            children: [
              GameDialogHeader(
                emojis: GameEmojis.badEmojis,
                onClose: () {
                  Navigator.of(context).pop();
                  bloc.giveUpGame();
                },
                onSettings: () {
                  SettingsRoute.open(outContext, backToGame: true);
                  Navigator.of(context).pop();
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Spacing.x8),
                child: Column(
                  children: [
                    Text(
                      t.you_lost.toUpperCase(),
                      style: theme.textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: Spacing.x8),
                    GameContainer(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Spacing.x8,
                        ),
                        child: Text(
                          t.generic_game_over,
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.onSurface.withAlpha(
                              _titleAlphaColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: Spacing.x16),
                  ],
                ),
              ),
              if (showContinue)
                GameButton(
                  isPrimary: true,
                  label: t.continue_game,
                  align: GameButtonAlign.center,
                  onPressed: () {
                    bloc.continueFromGameOver();
                    Navigator.of(context).pop();
                  },
                ),
              const SizedBox(height: Spacing.x4),
              GameButton(
                isPrimary: !showContinue,
                label: t.new_game,
                align: GameButtonAlign.center,
                onPressed: () {
                  bloc.newGame();
                  Navigator.of(context).pop();
                },
              ),
              if (!showContinue) const SizedBox(height: Spacing.x4),
              if (!showContinue)
                GameButton(
                  isPrimary: false,
                  label: t.tutorial,
                  align: GameButtonAlign.center,
                  onPressed: () async {
                    Navigator.of(context).pop();
                    await TutorialRoute.open(outContext);
                  },
                ),
            ],
          ),
        ),
      ],
    );
  }

  static final _titleAlphaColor = (255.0 * 0.7).toInt();
}
