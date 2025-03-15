import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';

import '../../settings/settings_manager.dart';
import '../icon_behavior.dart';
import '../skins/skin.dart';
import '../skins/skins.dart';
import 'game_background_color.dart';
import 'game_primary_color.dart';
import 'game_themes.dart';
import 'game_theme.dart';
import 'theme_color_type.dart';

class GameThemeManager {
  GameThemeManager({required this.settingsManager});

  final SettingsManager settingsManager;

  ColorScheme _colorScheme = const ColorScheme.dark();

  ColorScheme get colorScheme => _colorScheme;

  int get primaryColorId => settingsManager.cache.themeMainColor;

  int get backgroundId => settingsManager.cache.themeBackground;

  int get skinId => settingsManager.cache.themeSkin;

  Skin get skin =>
      Skins.all.where((e) => e.id == skinId).firstOrNull ?? Skins.standard;

  void init() {
    final primaryColor = GameThemes.primaryOfId(primaryColorId);
    final background = GameThemes.backgroundOfId(backgroundId);
    setNewTheme(
      background: background,
      primaryColor: primaryColor,
      saveState: false,
    );
  }

  GameTheme gameTheme() {
    final skin = this.skin;
    final isDark = _colorScheme.brightness == Brightness.dark;
    final primaryConflict = _colorScheme.primary == _colorScheme.surface;
    final primary =
        primaryConflict ? _colorScheme.onPrimary : _colorScheme.primary;
    final onPrimary =
        primaryConflict ? _colorScheme.primary : _colorScheme.onPrimary;
    final uncovered =
        isDark
            ? primary.brighten(0.1).withAlpha(14)
            : primary.darken(0.1).withAlpha(14);
    return GameTheme(
      background: _colorScheme.surface,
      cover: primary,
      around:
          isDark && skin.canTint ? _darkBgNumberPalette : _lightBgNumberPalette,
      uncovered: uncovered,
      explodedMineBackground: _colorScheme.error,
      neutralMineBackground: _colorScheme.onSurface.withAlpha(127),
      ignoredMineBackground: const Color(0xFF7CB342),
      mineColor: onPrimary,
      iconColor: isDark ? _colorScheme.surface : onPrimary,
      iconBehavior: IconBehavior.darkBackground,
      connectAreas: skin.connectAreas,
      canTint: skin.canTint,
    );
  }

  List<GamePrimaryColor> getMainColors() {
    return GameThemes.primaryColors;
  }

  List<GameBackgroundColor> gameBackgroundColors() {
    return GameThemes.backgrounds;
  }

  void setSkin(int skinId) {
    settingsManager.setThemeSkin(skinId);
  }

  void setNewTheme({
    required GameBackgroundColor background,
    required GamePrimaryColor primaryColor,
    bool saveState = true,
  }) {
    var invertPrimary = false;

    if (primaryColor.conflictBg) {
      invertPrimary =
          (background.isDark && primaryColor.isDark) ||
          (!background.isDark && !primaryColor.isDark);
    }

    switch (background.themeColorType) {
      case ThemeColorType.dark:
        _colorScheme = _darkColorScheme(primaryColor, invertPrimary);
        break;
      case ThemeColorType.amoled:
        _colorScheme = _amoledColorScheme(primaryColor, invertPrimary);
        break;
      default:
        _colorScheme = _lightColorScheme(primaryColor, invertPrimary);
        break;
    }

    if (saveState) {
      settingsManager
        ..setThemeBackground(background.id)
        ..setThemeMainColor(primaryColor.id);
    }
  }

  ColorScheme _darkColorScheme(GamePrimaryColor primary, bool invertPrimary) {
    final primaryValue =
        invertPrimary ? primary.onPrimary.darken(0.5) : primary.primary;
    final onPrimaryValue = invertPrimary ? primary.primary : primary.onPrimary;
    return ColorScheme.dark(
      primary: primaryValue,
      onPrimary: onPrimaryValue,
      primaryContainer: onPrimaryValue.darken(0.25),
      onPrimaryContainer: primaryValue.darken(0.25),
      error: const Color(0xFFFF5252),
      surface: const Color(0xFF313131),
      onSurface: Colors.white,
    );
  }

  ColorScheme _lightColorScheme(GamePrimaryColor primary, bool invertPrimary) {
    final primaryValue = invertPrimary ? primary.onPrimary : primary.primary;
    final onPrimaryValue = invertPrimary ? primary.primary : primary.onPrimary;
    return ColorScheme.light(
      primary: primaryValue,
      onPrimary: onPrimaryValue,
      primaryContainer: onPrimaryValue.darken(0.25),
      onPrimaryContainer: primaryValue.darken(0.25),
      error: const Color(0xFFC62828),
      surface: Colors.white,
      onSurface: const Color(0xFF212121),
    );
  }

  ColorScheme _amoledColorScheme(GamePrimaryColor primary, bool invertPrimary) {
    final primaryValue = invertPrimary ? primary.onPrimary : primary.primary;
    final onPrimaryValue = invertPrimary ? primary.primary : primary.onPrimary;
    return ColorScheme.highContrastDark(
      primary: primaryValue,
      onPrimary: onPrimaryValue,
      primaryContainer: onPrimaryValue.darken(0.25),
      onPrimaryContainer: primaryValue.darken(0.25),
      error: const Color(0xFFFF5252),
      surface: const Color(0xFF222222),
      onSurface: Colors.white,
    );
  }

  static const _lightBgNumberPalette = [
    Color(0xFF1565C0),
    Color(0xFF388E3C),
    Color(0xFFE65100),
    Color(0xFF512DA8),
    Color(0xFFD32F2F),
    Color(0xFFFFC107),
    Color(0xFFE91E63),
    Color(0xFF000000),
  ];

  static const _darkBgNumberPalette = [
    Color(0xFF4FC3F7),
    Color(0xFF9CCC65),
    Color(0xFFE65100),
    Color(0xFF9575CD),
    Color(0xFF9575CD),
    Color(0xFFFFC107),
    Color(0xFFE91E63),
    Color(0xFFFFFFFF),
  ];
}
