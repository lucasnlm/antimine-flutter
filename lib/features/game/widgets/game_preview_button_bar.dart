import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../foundation/ui/game_button.dart';
import '../../../../foundation/ui/spacing.dart';
import '../../../foundation/i18n/translations.g.dart';

class GamePreviewBottomBar extends StatelessWidget {
  const GamePreviewBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Spacing.x4,
          horizontal: Spacing.x8,
        ),
        child: GameButton(
          isPrimary: true,
          icon: Icons.check,
          label: t.close,
          onPressed: () => context.pop(),
        ),
      ),
    );
  }
}
