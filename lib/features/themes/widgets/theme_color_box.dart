import 'package:flutter/material.dart';

import '../../../foundation/ui/spacing.dart';

class ThemeColorBox extends StatelessWidget {
  const ThemeColorBox({
    super.key,
    required this.onTap,
    required this.color,
    required this.onColor,
    required this.forbiddenColor,
    this.isSelected = false,
    this.isNone = false,
  });

  final VoidCallback onTap;
  final Color? color;
  final Color? onColor;
  final bool isSelected;
  final bool isNone;
  final Color forbiddenColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.x4,
        ),
        child: FilledButton(
          onPressed: onTap,
          style: FilledButton.styleFrom(
            padding: EdgeInsets.zero,
            elevation: 0.0,
            side: BorderSide(
              color: isSelected
                  ? theme.colorScheme.primary
                  : theme.colorScheme.primary.withAlpha(0),
              width: Spacing.x4,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Spacing.x8),
            ),
            backgroundColor: color ?? Colors.white,
          ),
          child: SizedBox(
            height: Spacing.x48,
            child: isSelected
                ? Center(
                    child: Icon(
                      Icons.check,
                      color: onColor,
                    ),
                  )
                : Container(),
          ),
        ),
      ),
    );
  }
}
