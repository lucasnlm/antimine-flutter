import 'package:flutter/material.dart';

import 'spacing.dart';

class GameContainer extends StatelessWidget {
  const GameContainer({
    super.key,
    required this.child,
    this.padding,
  });

  final EdgeInsetsGeometry? padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Container(
      padding: padding ?? const EdgeInsets.all(Spacing.x8),
      decoration: BoxDecoration(
        color: colorScheme.onSurface.withOpacity(0.1),
        borderRadius: BorderRadius.circular(Spacing.x16),
      ),
      child: child,
    );
  }
}
