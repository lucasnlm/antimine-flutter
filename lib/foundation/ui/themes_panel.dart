import 'package:flutter/material.dart';

import 'game_container.dart';
import 'spacing.dart';

class TitledPanel extends StatelessWidget {
  const TitledPanel({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.x24,
      ),
      child: SizedBox(
        width: double.infinity,
        child: GameContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: Spacing.x8,
                  bottom: Spacing.x8,
                  top: Spacing.x8,
                ),
                child: Text(
                  title.toUpperCase(),
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: Spacing.x4),
              ...children,
              const SizedBox(height: Spacing.x8)
            ],
          ),
        ),
      ),
    );
  }
}
