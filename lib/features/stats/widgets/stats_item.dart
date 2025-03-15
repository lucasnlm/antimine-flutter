import 'package:flutter/material.dart';

import '../../../foundation/ui/spacing.dart';

class StatsItem extends StatelessWidget {
  const StatsItem({
    super.key,
    required this.name,
    required this.value,
  });

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.x8,
        vertical: Spacing.x1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          Text(
            value,
            style: TextStyle(
              color: colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
