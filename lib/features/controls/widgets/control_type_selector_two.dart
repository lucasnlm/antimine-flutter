import 'package:flutter/material.dart';

import 'control_type_selector.dart';

class ControlTypeSelectorTwo extends StatelessWidget {
  const ControlTypeSelectorTwo({
    super.key,
    required this.selected,
    required this.firstAction,
    required this.firstReaction,
    required this.secondAction,
    required this.secondReaction,
    required this.onTap,
  });

  final bool selected;
  final String firstAction;
  final String firstReaction;
  final String secondAction;
  final String secondReaction;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return ControlTypeSelector(
      selected: selected,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                firstAction,
                style: textTheme.titleSmall?.copyWith(
                  color: selected
                      ? theme.colorScheme.onPrimary
                      : theme.colorScheme.onSurface,
                ),
              ),
              Text(
                firstReaction,
                style: textTheme.bodySmall?.copyWith(
                  color: selected
                      ? theme.colorScheme.onPrimary
                      : theme.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                secondAction,
                style: textTheme.titleSmall?.copyWith(
                  color: selected
                      ? theme.colorScheme.onPrimary
                      : theme.colorScheme.onSurface,
                ),
              ),
              Text(
                secondReaction,
                style: textTheme.bodySmall?.copyWith(
                  color: selected
                      ? theme.colorScheme.onPrimary
                      : theme.colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
