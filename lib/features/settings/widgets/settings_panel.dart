import 'package:flutter/material.dart';

import '../../../foundation/ui/game_container.dart';
import '../../../foundation/ui/spacing.dart';
import '../models/settings_item.dart';
import 'settings_switch_item.dart';

class SettingsPanel extends StatelessWidget {
  const SettingsPanel({super.key, required this.title, required this.children});

  final String title;
  final List<SettingsItem> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.x32),
      child: SizedBox(
        width: double.infinity,
        child: GameContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: Spacing.x16,
                  left: Spacing.x8,
                  bottom: Spacing.x8,
                ),
                child: Text(
                  title.toUpperCase(),
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...children.map(
                (e) => SettingsSwitchItem(
                  title: e.title,
                  value: e.value,
                  onChanged: e.onChanged,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
