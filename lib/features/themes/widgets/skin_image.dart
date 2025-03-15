import 'package:flutter/material.dart';

import '../../../common/models/themes/game_theme.dart';
import '../../../foundation/ui/spacing.dart';

class SkinImage extends StatelessWidget {
  const SkinImage({
    super.key,
    required this.asset,
    required this.gameTheme,
    required this.tint,
  });

  final String asset;
  final bool tint;
  final GameTheme gameTheme;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Spacing.x8),
      child: Image.asset(
        'assets/images/$asset',
        fit: BoxFit.cover,
        color: tint ? gameTheme.cover : null,
        colorBlendMode: tint ? BlendMode.modulate : null,
      ),
    );
  }
}
