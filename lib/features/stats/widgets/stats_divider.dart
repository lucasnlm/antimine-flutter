import 'package:flutter/material.dart';

import '../../../foundation/ui/spacing.dart';

class StatsDivider extends StatelessWidget {
  const StatsDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Divider(
      height: Spacing.x8,
      endIndent: Spacing.x8,
      indent: Spacing.x8,
      color: colorScheme.onSurface.withAlpha(_surfaceAlphaColor),
    );
  }

  static final _surfaceAlphaColor = (255.0 * 0.1) as int;
}
