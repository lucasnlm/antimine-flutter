import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../foundation/ui/spacing.dart';
import '../bloc/game_bloc.dart';
import '../bloc/game_state.dart';

class GameLoadingIndicator extends StatelessWidget {
  const GameLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (previous, current) {
        return previous.loading != current.loading;
      },
      builder: (context, state) {
        if (state.loading) {
          return const SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: LinearProgressIndicator(
                minHeight: Spacing.x2,
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
