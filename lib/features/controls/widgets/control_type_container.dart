import 'package:flutter/material.dart';

import '../../../foundation/ui/spacing.dart';

class ControlTypeContainer extends StatelessWidget {
  const ControlTypeContainer({
    super.key,
    required this.selected,
    required this.child,
    required this.onTap,
  });

  final bool selected;
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(Spacing.x8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.x8,
          vertical: Spacing.x12,
        ),
        decoration: BoxDecoration(
          color: selected ? colorScheme.primary.withOpacity(0.8) : null,
          borderRadius: BorderRadius.circular(Spacing.x8),
        ),
        child: child,
      ),
    );
  }
}
