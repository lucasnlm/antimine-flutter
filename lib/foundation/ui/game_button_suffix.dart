import 'package:flutter/material.dart';

import 'spacing.dart';

class GameButtonSuffix extends StatelessWidget {
  const GameButtonSuffix({
    super.key,
    required this.trailingText,
    required this.isPrimary,
  });

  final String trailingText;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return IgnorePointer(
      child: Padding(
        padding: const EdgeInsets.only(right: Spacing.x16),
        child: Text(
          trailingText,
          style: theme.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: isPrimary ? colorScheme.onPrimary : colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
