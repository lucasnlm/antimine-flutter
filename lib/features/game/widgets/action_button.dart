import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/models/input/action.dart' as game;
import '../../../../foundation/ui/spacing.dart';
import '../bloc/game_bloc.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.icon,
    required this.isPrimary,
    required this.tooltip,
    this.action,
    this.onPressed,
  });

  final IconData icon;
  final String tooltip;
  final bool isPrimary;
  final game.Action? action;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return SizedBox(
      width: Spacing.x48,
      height: Spacing.x48,
      child: IconButton(
        tooltip: tooltip,
        enableFeedback: true,
        style: ButtonStyle(
          padding: WidgetStateProperty.all(EdgeInsets.zero),
          backgroundColor: WidgetStateProperty.all(
            isPrimary ? colorScheme.primary : Colors.transparent,
          ),
          shape: WidgetStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(Spacing.x8)),
            ),
          ),
        ),
        padding: const EdgeInsets.all(0.0),
        onPressed:
            onPressed ??
            () {
              final action = this.action;
              if (action != null) {
                context.read<GameBloc>().selectAction(action);
              }
            },
        icon: Icon(
          icon,
          color:
              isPrimary
                  ? colorScheme.onPrimary
                  : colorScheme.onSurface.withAlpha(_buttonAlphaSurface),
        ),
      ),
    );
  }

  static final _buttonAlphaSurface = (0.7 * 255.0) as int;
}
