import 'package:flutter/material.dart';

import '../../../foundation/ui/spacing.dart';
import 'control_type_selector.dart';

class ControlTypeSelectorOne extends StatelessWidget {
  const ControlTypeSelectorOne({
    super.key,
    required this.selected,
    required this.title,
    required this.description,
    required this.onTap,
  });

  final bool selected;
  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return ControlTypeSelector(
      selected: selected,
      onTap: onTap,
      child: Center(
        child: Column(
          children: [
            Text(
              title,
              style: textTheme.titleSmall?.copyWith(
                color: selected
                    ? theme.colorScheme.onPrimary
                    : theme.colorScheme.onSurface,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.x16,
              ),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: textTheme.bodySmall?.copyWith(
                  color: selected
                      ? theme.colorScheme.onPrimary
                      : theme.colorScheme.onSurface,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
