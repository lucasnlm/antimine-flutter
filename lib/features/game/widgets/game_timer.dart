import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/models/game_status.dart';
import '../../../../common/utils/duration_ext.dart';
import '../../../../foundation/ui/spacing.dart';
import '../bloc/game_bloc.dart';
import '../bloc/game_state.dart';
import '../logic/game_constants.dart';

class GameTimer extends StatefulWidget {
  const GameTimer({super.key});

  @override
  State<StatefulWidget> createState() {
    return _GameTimerState();
  }
}

class _GameTimerState extends State<GameTimer> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      GameConstants.tickDuration,
      (timer) => context.read<GameBloc>().clockTick(),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (previous, current) {
        return previous.status != current.status ||
            previous.duration != current.duration;
      },
      builder: (context, state) {
        if (state.status == GameStatus.inProgress ||
            state.status == GameStatus.success ||
            state.status == GameStatus.failure) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.timer_rounded,
                size: Spacing.x16,
              ),
              const SizedBox(width: Spacing.x4),
              SizedBox(
                width: Spacing.x48,
                child: Text(
                  Duration(
                    milliseconds: state.duration,
                  ).toFormattedString(),
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: Spacing.smallText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: Spacing.x4),
            ],
          );
        } else {
          return Container();
        }
      },
    );
  }
}
