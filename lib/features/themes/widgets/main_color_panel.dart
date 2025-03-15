import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/models/themes/game_themes.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/spacing.dart';
import '../bloc/themes_bloc.dart';
import '../bloc/themes_state.dart';
import 'theme_color_box.dart';
import '../../../foundation/ui/themes_panel.dart';

class MainColorPanel extends StatelessWidget {
  const MainColorPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return TitledPanel(
      title: t.main_color,
      children: [
        BlocBuilder<ThemesBloc, ThemesState>(
          builder: (context, state) {
            final bloc = context.read<ThemesBloc>();
            final colorScheme = state.colorScheme;
            return Column(
              children: [
                for (var i = 0; i < GameThemes.primaryColors.length / 4; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: Spacing.x8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                          GameThemes.primaryColors
                              .map(
                                (e) => ThemeColorBox(
                                  color: e.primary,
                                  onColor: e.onPrimary,
                                  forbiddenColor: colorScheme.surface,
                                  isSelected: state.primaryColorIndex == e.id,
                                  onTap: () => bloc.change(primary: e),
                                ),
                              )
                              .skip(i * 4)
                              .take(4)
                              .toList(),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}
