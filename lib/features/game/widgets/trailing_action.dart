import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/models/game_status.dart';
import '../../../common/models/game_settings.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/spacing.dart';
import '../bloc/game_bloc.dart';
import '../bloc/game_state.dart';
import '../logic/game_constants.dart';
import 'hint_action.dart';

class TrailingAction extends StatelessWidget {
  const TrailingAction({super.key, required this.settings});

  final GameSettings settings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: Spacing.x4),
      child: BlocBuilder<GameBloc, GameState>(
        buildWhen: (previous, current) {
          return previous.status != current.status ||
              previous.hintCount != current.hintCount;
        },
        builder: (context, state) {
          if (state.status == GameStatus.notStarted) {
            return Container();
          } else if (state.status == GameStatus.inProgress && settings.hints) {
            return HintAction(
              hintCount: state.hintCount,
              rewardValue: GameConstants.hintReward,
              lastHintUsed: state.lastHintUsed,
              cooldown: GameConstants.hintCooldown,
            );
          } else {
            return IconButton(
              icon: const Icon(Icons.refresh),
              tooltip: t.new_game,
              onPressed: () => context.read<GameBloc>().newGame(),
            );
          }
        },
      ),
    );
  }
}
