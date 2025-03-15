import 'package:flutter/material.dart';

import '../../../common/utils/build_context_ext.dart';
import '../../../foundation/ui/spacing.dart';

class GameDialog extends StatelessWidget {
  const GameDialog({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final dialogTheme = DialogTheme.of(context);
    final theme = Theme.of(context);

    final size = MediaQuery.of(context).size;
    final side = size.shortestSide;
    final widthConstraint = isTablet ? 0.5 : 0.8;
    final double maxWidth = side * widthConstraint;

    return Align(
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Material(
          color:
              dialogTheme.backgroundColor ?? theme.dialogTheme.backgroundColor,
          elevation: 0.0,
          shadowColor: dialogTheme.shadowColor,
          surfaceTintColor: dialogTheme.surfaceTintColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(Spacing.x8)),
          ),
          type: MaterialType.card,
          clipBehavior: Clip.none,
          child: Padding(
            padding: const EdgeInsets.all(Spacing.x16),
            child: child,
          ),
        ),
      ),
    );
  }
}
