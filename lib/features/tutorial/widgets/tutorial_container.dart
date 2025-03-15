import 'package:flutter/material.dart';

import '../../../foundation/ui/game_container.dart';
import '../../../foundation/ui/spacing.dart';

class TutorialContainer extends StatelessWidget {
  const TutorialContainer({
    super.key,
    required this.text,
    this.leftIcon,
  });

  final IconData? leftIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Spacing.x8,
        horizontal: Spacing.x24,
      ),
      child: GameContainer(
        padding: const EdgeInsets.all(Spacing.x16),
        child: Row(
          children: [
            if (leftIcon != null)
              Padding(
                padding: const EdgeInsets.only(right: Spacing.x16),
                child: Icon(
                  leftIcon,
                  color: theme.colorScheme.onSurface,
                ),
              ),
            Expanded(
              child: Text(
                text,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
