import 'package:flutter/material.dart';

import 'game_button_align.dart';
import 'spacing.dart';

class GameFilledButton extends StatelessWidget {
  const GameFilledButton({
    super.key,
    required this.label,
    required this.align,
    this.minimumSize,
    required this.isDense,
    this.onPressed,
    this.icon,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final GameButtonAlign align;
  final Size? minimumSize;
  final bool isDense;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    const padding = Spacing.x8;
    final icon = this.icon;

    const shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(padding)),
    );

    if (icon != null) {
      return FilledButton.icon(
        autofocus: true,
        style: FilledButton.styleFrom(
          shape: shape,
          minimumSize: minimumSize,
          visualDensity:
              isDense ? VisualDensity.compact : VisualDensity.standard,
          alignment:
              align == GameButtonAlign.start
                  ? Alignment.centerLeft
                  : Alignment.center,
        ),
        onPressed: onPressed,
        icon: Icon(icon, color: colorScheme.onPrimary, size: Spacing.x18),
        label: Text(
          label.toUpperCase(),
          style: theme.textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onPrimary,
          ),
        ),
      );
    } else {
      return FilledButton(
        autofocus: true,
        style: FilledButton.styleFrom(
          shape: shape,
          minimumSize: minimumSize,
          visualDensity:
              isDense ? VisualDensity.compact : VisualDensity.standard,
          alignment:
              align == GameButtonAlign.start
                  ? Alignment.centerLeft
                  : Alignment.center,
        ),
        onPressed: onPressed,
        child: Text(
          label.toUpperCase(),
          style: theme.textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onPrimary,
          ),
        ),
      );
    }
  }
}
