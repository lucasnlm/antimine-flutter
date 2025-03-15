import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../foundation/ui/spacing.dart';
import '../bloc/game_bloc.dart';
import '../bloc/game_state.dart';

class HighlightContainer extends StatelessWidget {
  const HighlightContainer({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (previous, current) {
        return previous.minefield != current.minefield;
      },
      builder: (context, state) {
        if (state.minefield.isEmpty) {
          return const SizedBox();
        } else {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.x16,
              vertical: Spacing.x8,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.onSurface.withAlpha(_actionBorderAlpha),
              borderRadius: BorderRadius.circular(Spacing.x8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: children,
            ),
          );
        }
      },
    );
  }

  static final _actionBorderAlpha = (255.0 * 0.1).toInt();
}
