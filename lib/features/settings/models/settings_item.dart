import 'package:flutter/foundation.dart';

class SettingsItem {
  const SettingsItem({
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;
}
