import 'package:flutter/material.dart';

import 'control_type_container.dart';

class ControlTypeSelector extends StatelessWidget {
  const ControlTypeSelector({
    super.key,
    required this.selected,
    required this.child,
    required this.onTap,
  });

  final bool selected;
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ControlTypeContainer(selected: selected, onTap: onTap, child: child);
  }
}
