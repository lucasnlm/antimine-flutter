import 'package:flutter/material.dart';

import '../../../foundation/ui/spacing.dart';

class SettingsSwitchItem extends StatefulWidget {
  const SettingsSwitchItem({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  State<StatefulWidget> createState() {
    return _SettingsSwitchItemState();
  }
}

class _SettingsSwitchItemState extends State<SettingsSwitchItem> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  void didUpdateWidget(SettingsSwitchItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      _value = widget.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(widget.title),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(Spacing.x8),
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: Spacing.x16,
      ),
      dense: true,
      enableFeedback: false,
      value: _value,
      onChanged: (value) {
        setState(() {
          _value = value;
        });
        widget.onChanged(value);
      },
    );
  }
}
