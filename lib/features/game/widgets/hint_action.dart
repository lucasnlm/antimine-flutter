import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../foundation/ui/spacing.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../bloc/game_bloc.dart';
import 'hint_counter_icon.dart';

class HintAction extends StatefulWidget {
  const HintAction({
    super.key,
    required this.hintCount,
    required this.rewardValue,
    required this.lastHintUsed,
    required this.cooldown,
  });

  final int hintCount;
  final int rewardValue;
  final int lastHintUsed;
  final Duration cooldown;

  @override
  State<StatefulWidget> createState() {
    return _HintActionState();
  }
}

class _HintActionState extends State<HintAction> with TickerProviderStateMixin {
  bool _enableHint = true;
  int _hintCount = 0;

  @override
  void initState() {
    super.initState();
    _hintCount = widget.hintCount;
  }

  @override
  Widget build(BuildContext context) {
    if (_enableHint) {
      return Stack(
        children: [
          IconButton(
            tooltip: t.help,
            icon: const HintCounterIcon(),
            onPressed: () {
              setState(() {
                _hintCount = max(0, _hintCount - 1);
                _enableHint = false;
              });
              context.read<GameBloc>().revealMine();
            },
          ),
        ],
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(Spacing.x8),
        child: SizedBox(
          width: Spacing.x24,
          height: Spacing.x24,
          child: TweenAnimationBuilder<double>(
            duration: widget.cooldown,
            tween: Tween(begin: 0, end: 1),
            onEnd: () {
              setState(() {
                _enableHint = true;
              });
            },
            builder: (context, value, _) {
              return CircularProgressIndicator(value: value);
            },
          ),
        ),
      );
    }
  }
}
