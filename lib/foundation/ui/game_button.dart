import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'game_button_align.dart';
import 'game_button_suffix.dart';
import 'game_filled_button.dart';
import 'game_outlined_button.dart';

class GameButton extends StatelessWidget {
  const GameButton({
    super.key,
    required this.label,
    this.trailingText,
    this.isPrimary = false,
    this.icon,
    this.onPressed,
    this.isDense = false,
    this.align = GameButtonAlign.start,
    this.trailing,
  });

  final String label;
  final String? trailingText;
  final Widget? trailing;
  final VoidCallback? onPressed;
  final bool isPrimary;
  final bool isDense;
  final IconData? icon;
  final GameButtonAlign align;

  @override
  Widget build(BuildContext context) {
    late Widget child;
    final trailingText = this.trailingText;
    final trailing = this.trailing;

    if (isPrimary) {
      child = GameFilledButton(
        label: label,
        align: align,
        onPressed: onPressed,
        icon: icon,
        isDense: isDense,
      );
    } else {
      child = GameOutlinedButton(
        label: label,
        align: align,
        onPressed: onPressed,
        icon: icon,
        isDense: isDense,
      );
    }

    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Row(children: [Expanded(child: child)]),
        if (trailing != null) trailing,
        if (trailingText != null)
          GameButtonSuffix(trailingText: trailingText, isPrimary: isPrimary),
      ],
    );
  }
}
