import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/models/themes/game_theme_manager.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/spacing.dart';
import '../bloc/themes_bloc.dart';
import '../bloc/themes_state.dart';
import 'theme_color_box.dart';
import '../../../foundation/ui/themes_panel.dart';

class BackgroundColorPanel extends StatelessWidget {
  const BackgroundColorPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TitledPanel(
      title: t.background_color,
      children: [
        BlocBuilder<ThemesBloc, ThemesState>(
          builder: (context, state) {
            final backgrounds = context.read<GameThemeManager>();
            final bloc = context.read<ThemesBloc>();
            return Padding(
              padding: const EdgeInsets.only(
                bottom: Spacing.x8,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: backgrounds
                    .gameBackgroundColors()
                    .map(
                      (e) => ThemeColorBox(
                        color: e.background,
                        onColor: e.onBackground,
                        isNone: e.id == 0,
                        forbiddenColor: Colors.transparent,
                        isSelected: state.backgroundIndex == e.id,
                        onTap: () => bloc.change(background: e),
                      ),
                    )
                    .toList(),
              ),
            );
          },
        )
      ],
    );
  }
}
