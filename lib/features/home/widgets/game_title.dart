import 'package:flutter/material.dart';

import '../../../common/utils/build_context_ext.dart';
import '../../../foundation/ui/spacing.dart';

class GameTitle extends StatelessWidget {
  const GameTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Spacing.x16,
        horizontal: isTablet ? (Spacing.x128 + Spacing.x24) : Spacing.x24,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: Spacing.x24,
          child: Image.asset(
            './assets/title.png',
            fit: BoxFit.cover,
            color: theme.colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
