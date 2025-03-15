import 'package:flutter/material.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/spacing.dart';
import 'game_emoji.dart';

class GameDialogHeader extends StatelessWidget {
  const GameDialogHeader({
    super.key,
    required this.emojis,
    this.onClose,
    this.onSettings,
  });

  final VoidCallback? onClose;
  final VoidCallback? onSettings;
  final List<String> emojis;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              iconSize: Spacing.x20,
              tooltip: t.settings,
              icon: const Icon(Icons.settings),
              onPressed: onSettings,
            ),
            IconButton(
              iconSize: Spacing.x20,
              tooltip: t.close,
              icon: const Icon(Icons.close),
              onPressed: onClose,
            )
          ],
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(
              top: Spacing.x24,
            ),
            child: GameEmoji(
              emojis: emojis,
            ),
          ),
        )
      ],
    );
  }
}
