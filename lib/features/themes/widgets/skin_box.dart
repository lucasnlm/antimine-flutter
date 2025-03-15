import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/models/skins/skin.dart';
import '../../../common/models/themes/game_theme.dart';
import '../../../foundation/ui/spacing.dart';
import '../bloc/themes_bloc.dart';
import 'skin_image.dart';

class SkinBox extends StatelessWidget {
  const SkinBox({
    super.key,
    required this.isPremium,
    required this.skin,
    required this.selected,
    required this.gameTheme,
    required this.onColor,
  });

  final Skin skin;
  final bool isPremium;
  final bool selected;
  final GameTheme gameTheme;
  final Color onColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(Spacing.x8),
        onTap: () {
          context.read<ThemesBloc>().changeSkin(skin.id);
        },
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SkinImage(
              asset: skin.spritePreview,
              gameTheme: gameTheme,
              tint: skin.canTint,
            ),
            if (selected) Icon(Icons.check, color: onColor),
          ],
        ),
      ),
    );
  }
}
