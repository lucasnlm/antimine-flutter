import 'package:flutter/material.dart';

import '../../../../foundation/ui/spacing.dart';
import 'action_list.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({
    super.key,
    required this.isPortrait,
    required this.children,
  });

  final bool isPortrait;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Container(
      padding: const EdgeInsets.all(Spacing.x4),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Card(
        margin: isPortrait
            ? const EdgeInsets.only(bottom: Spacing.x8)
            : const EdgeInsets.only(right: Spacing.x8),
        color: colorScheme.surface.withOpacity(0.5),
        elevation: 0.0,
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: colorScheme.onSurface.withOpacity(0.1),
            borderRadius: BorderRadius.circular(Spacing.x8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Spacing.x8),
            child: ActionList(
              isPortrait: isPortrait,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
