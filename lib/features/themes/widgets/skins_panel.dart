import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/models/skins/skins.dart';
import '../../../common/models/themes/game_theme_manager.dart';
import '../../../common/utils/build_context_ext.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/themes_panel.dart';
import '../bloc/themes_bloc.dart';
import '../bloc/themes_state.dart';
import 'skin_box.dart';

class SkinsPanel extends StatelessWidget {
  const SkinsPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final itemsPerLine = isTablet ? 8 : 4;
    return TitledPanel(
      title: t.shapes,
      children: [
        BlocBuilder<ThemesBloc, ThemesState>(
          builder: (context, state) {
            final gameTheme = context.read<GameThemeManager>().gameTheme();
            return Column(
              children: [
                for (var i = 0; i < Skins.all.length / itemsPerLine; i++)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: Skins.all
                        .map(
                          (e) => SkinBox(
                            skin: e,
                            isPremium: e.isPremium,
                            gameTheme: gameTheme,
                            selected: e.id == state.skinIndex,
                            onColor: gameTheme.iconColor,
                          ),
                        )
                        .skip(i * itemsPerLine)
                        .take(itemsPerLine)
                        .toList(),
                  ),
              ],
            );
          },
        )
      ],
    );
  }
}
