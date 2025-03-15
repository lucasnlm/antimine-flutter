import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/global/global_settings_bloc.dart';
import '../../../common/models/themes/game_background_color.dart';
import '../../../common/models/themes/game_primary_color.dart';
import '../../../common/models/themes/game_theme_manager.dart';
import '../../../common/models/themes/game_themes.dart';
import '../../../common/settings/settings_manager.dart';
import 'themes_state.dart';

class ThemesBloc extends Cubit<ThemesState> {
  ThemesBloc({
    required this.gameThemeManager,
    required this.platformBrightness,
    required this.globalSettingsBloc,
    required SettingsManager settingsManager,
  }) : super(
          ThemesState(
            backgroundIndex: gameThemeManager.backgroundId,
            initialBackgroundIndex: gameThemeManager.backgroundId,
            primaryColorIndex: gameThemeManager.primaryColorId,
            initialPrimaryColorIndex: gameThemeManager.primaryColorId,
            skinIndex: gameThemeManager.skinId,
            initialSkinIndex: gameThemeManager.skinId,
            colorScheme: gameThemeManager.colorScheme,
          ),
        );

  final GameThemeManager gameThemeManager;
  final Brightness platformBrightness;
  final GlobalSettingsBloc globalSettingsBloc;

  void changeSkin(int skinId) {
    gameThemeManager.setSkin(skinId);
    emit(
      state.copyWith(
        skinIndex: skinId,
      ),
    );
  }

  void undoChanges() {
    change(
      primary: GameThemes.primaryOfId(state.initialPrimaryColorIndex),
      background: GameThemes.backgroundOfId(state.initialBackgroundIndex),
    );
  }

  void change({
    GamePrimaryColor? primary,
    GameBackgroundColor? background,
  }) {
    final selectedPrimary =
        primary ?? GameThemes.primaryOfId(state.primaryColorIndex);
    final selectedBackground =
        background ?? GameThemes.backgroundOfId(state.backgroundIndex);

    gameThemeManager.setNewTheme(
      background: selectedBackground,
      primaryColor: selectedPrimary,
    );

    globalSettingsBloc.changeTheme(
      gameThemeManager.colorScheme,
    );

    emit(
      state.copyWith(
        colorScheme: gameThemeManager.colorScheme,
        primaryIndex: selectedPrimary.id,
        backgroundIndex: selectedBackground.id,
      ),
    );
  }
}
