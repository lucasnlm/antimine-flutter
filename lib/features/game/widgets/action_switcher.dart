import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/models/game_status.dart';
import '../../../../common/models/input/action.dart' as game;
import '../../../common/models/input/game_input.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../bloc/game_bloc.dart';
import '../bloc/game_state.dart';
import 'action_button.dart';
import 'action_card.dart';

class ActionSwitcher extends StatelessWidget {
  const ActionSwitcher({
    super.key,
    required this.isPortrait,
    required this.controlTypeId,
  });

  final bool isPortrait;
  final int controlTypeId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (previous, current) {
        return previous.status != current.status ||
            previous.selectedAction != current.selectedAction;
      },
      builder: (context, state) {
        final bloc = context.read<GameBloc>();
        final isControlSwitcher = controlTypeId == GameInput.type5.id;

        if (state.status == GameStatus.notStarted) {
          return Container();
        } else if (!state.params.isPreview &&
            state.status == GameStatus.inProgress &&
            isControlSwitcher) {
          return SafeArea(
            child: Align(
              alignment:
                  isPortrait ? Alignment.bottomCenter : Alignment.centerRight,
              child: ActionCard(
                isPortrait: isPortrait,
                children: [
                  if (state.settings.useQuestionMark)
                    ActionButton(
                      isPrimary: game.Action.question == state.selectedAction,
                      icon: Icons.question_mark_rounded,
                      tooltip: t.use_question_mark,
                      action: game.Action.question,
                    ),
                  ActionButton(
                    isPrimary: game.Action.flag == state.selectedAction,
                    icon: Icons.flag,
                    tooltip: t.flag_tile,
                    action: game.Action.flag,
                  ),
                  ActionButton(
                    isPrimary: game.Action.open == state.selectedAction,
                    icon: Icons.touch_app_rounded,
                    tooltip: t.open_tile,
                    action: game.Action.open,
                  ),
                  // if (kDebugMode)
                  //   ActionButton(
                  //     isPrimary: false,
                  //     icon: Icons.navigate_next,
                  //     tooltip: "Next",
                  //     onPressed: () {
                  //       bloc.simulateNext();
                  //     },
                  //   ),
                ],
              ),
            ),
          );
        } else if (isControlSwitcher || state.status != GameStatus.inProgress) {
          return SafeArea(
            child: Align(
              alignment:
                  isPortrait ? Alignment.bottomCenter : Alignment.centerRight,
              child: ActionCard(
                isPortrait: isPortrait,
                children: [
                  ActionButton(
                    isPrimary: false,
                    icon: Icons.share,
                    tooltip: t.share,
                    onPressed: () {
                      bloc.shareRequest();
                    },
                  ),
                  ActionButton(
                    isPrimary: true,
                    icon: Icons.refresh,
                    tooltip: t.new_game,
                    onPressed: () {
                      final previewSaveId = state.params.saveId;
                      if (previewSaveId != null) {
                        bloc.restartSaveGame(previewSaveId);
                      } else {
                        bloc.newGame();
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
