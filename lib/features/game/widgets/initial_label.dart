import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../foundation/i18n/translations.g.dart';
import '../bloc/game_bloc.dart';
import '../bloc/game_state.dart';
import 'highlight_container.dart';

class InitialLabel extends StatelessWidget {
  const InitialLabel({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (previous, current) {
        return current.turn <= 1 || previous.minefield != current.minefield;
      },
      builder: (context, state) {
        if (state.turn > 0) {
          return const SizedBox();
        } else {
          return IgnorePointer(
            child: Align(
              alignment: Alignment.center,
              child: HighlightContainer(
                children: [
                  Text(
                    state.loading
                        ? t.creating_valid_game.toUpperCase()
                        : t.tap_to_begin.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.surface,
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
