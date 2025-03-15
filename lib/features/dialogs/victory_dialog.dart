import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

import '../../common/models/game_settings.dart';
import '../../foundation/i18n/translations.g.dart';
import '../../foundation/ui/game_button.dart';
import '../../foundation/ui/game_button_align.dart';
import '../../foundation/ui/game_container.dart';
import '../../foundation/ui/spacing.dart';
import '../game/bloc/game_bloc.dart';
import '../game/logic/game_constants.dart';
import '../settings/settings_route.dart';
import 'view/game_dialog.dart';
import 'view/game_dialog_bar.dart';
import 'view/game_emojis.dart';

class VictoryDialog extends StatefulWidget {
  const VictoryDialog({
    super.key,
    required this.outContext,
    required this.bloc,
    required this.settings,
  });

  final BuildContext outContext;
  final GameBloc bloc;
  final GameSettings settings;

  @override
  State<StatefulWidget> createState() {
    return _VictoryDialogState();
  }
}

class _VictoryDialogState extends State<VictoryDialog> {
  late ConfettiController _controllerCenter;

  @override
  void initState() {
    super.initState();
    _controllerCenter = ConfettiController(
      duration: GameConstants.confettiDuration,
    );
    _controllerCenter.play();
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = widget.bloc.state;
    final perfectWin =
        state.areas.where((area) => area.hasMine).every((area) => area.covered);

    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: ConfettiWidget(
            confettiController: _controllerCenter,
            blastDirection: _degToRad(45),
            particleDrag: _particleDrag,
            emissionFrequency: _emissionFrequency,
            numberOfParticles: _numberOfParticles,
            gravity: _gravity,
            shouldLoop: false,
            colors: _confettiColors,
            // manually specify the colors to be used
            strokeWidth: 0,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: ConfettiWidget(
            confettiController: _controllerCenter,
            blastDirection: _degToRad(-225),
            particleDrag: _particleDrag,
            emissionFrequency: _emissionFrequency,
            numberOfParticles: _numberOfParticles,
            gravity: _gravity,
            shouldLoop: false,
            colors: _confettiColors,
            strokeWidth: 0,
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GameDialog(
                child: Column(
                  children: [
                    GameDialogHeader(
                      emojis: GameEmojis.goodEmojis,
                      onClose: () {
                        Navigator.of(context).pop();
                      },
                      onSettings: () async {
                        SettingsRoute.open(
                          widget.outContext,
                          backToGame: true,
                        );
                        Navigator.of(context).pop();
                      },
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Spacing.x8,
                        ),
                        child: Column(
                          children: [
                            Text(
                              perfectWin
                                  ? t.you_won.toUpperCase()
                                  : t.you_finished.toUpperCase(),
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
                                  t.generic_win
                                      .replaceAll(
                                        "%1\$d",
                                        state.minefield.mines.toString(),
                                      )
                                      .replaceAll(
                                        "%2\$d",
                                        (state.duration ~/ 1000).toString(),
                                      ),
                                  style: theme.textTheme.labelMedium?.copyWith(
                                    color: theme.colorScheme.onSurface
                                        .withOpacity(0.7),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: Spacing.x16),
                          ],
                        )),
                    GameButton(
                      isPrimary: true,
                      label: t.new_game,
                      align: GameButtonAlign.center,
                      onPressed: () {
                        widget.bloc.newGame();
                        Navigator.of(context).pop();
                      },
                    ),
                    const SizedBox(height: Spacing.x4),
                    GameButton(
                      isPrimary: false,
                      label: t.share_menu,
                      align: GameButtonAlign.center,
                      onPressed: () async {
                        widget.bloc.shareGameImage();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  double _degToRad(double deg) => deg * (pi / 180.0);

  static const _numberOfParticles = 5;
  static const _gravity = 0.1;
  static const _emissionFrequency = 0.05;
  static const _particleDrag = 0.05;
  static const _confettiColors = [
    Color(0xFF7CB342),
    Color(0xFF1E88E5),
    Color(0xFFD81B60),
  ];
}
