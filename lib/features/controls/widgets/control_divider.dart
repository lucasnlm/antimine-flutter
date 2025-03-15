import 'package:flutter/material.dart';

import '../../../foundation/ui/spacing.dart';

class ControlDivider extends StatelessWidget {
  const ControlDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.x16),
      child: Container(
        height: Spacing.x2,
        color: colorScheme.onSurface.withAlpha(_controlDividerAlpha),
      ),
    );
  }

  static final _controlDividerAlpha = (255.0 * 0.25) as int;
}
