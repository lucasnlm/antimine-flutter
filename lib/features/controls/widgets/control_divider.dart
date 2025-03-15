import 'package:flutter/material.dart';

import '../../../foundation/ui/spacing.dart';

class ControlDivider extends StatelessWidget {
  const ControlDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.x16,
      ),
      child: Container(
        height: Spacing.x2,
        color: colorScheme.onSurface.withOpacity(0.1),
      ),
    );
  }
}
