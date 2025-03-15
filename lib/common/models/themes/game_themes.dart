import 'package:flutter/material.dart';

import 'game_background_color.dart';
import 'game_primary_color.dart';
import 'theme_color_type.dart';

class GameThemes {
  GameThemes._();

  static List<GameBackgroundColor> backgrounds = [
    const GameBackgroundColor(
      id: 0,
      themeColorType: ThemeColorType.light,
      background: Colors.white,
      onBackground: Color(0xFF111111),
      isDark: false,
      isPremium: false,
    ),
    const GameBackgroundColor(
      id: 1,
      themeColorType: ThemeColorType.dark,
      background: Color(0xFF212121),
      onBackground: Colors.white,
      isPremium: false,
      isDark: true,
    ),
    const GameBackgroundColor(
      id: 2,
      themeColorType: ThemeColorType.amoled,
      background: Colors.black,
      onBackground: Colors.white,
      isPremium: false,
      isDark: true,
    ),
  ];

  static const primaryColors = [
    GamePrimaryColor(
      id: 0,
      primary: Color(0xFF424242),
      onPrimary: Color(0xFFEEEEEE),
      isDark: true,
      isPremium: false,
      conflictBg: true,
    ),
    GamePrimaryColor(
      id: 20,
      primary: Color(0xFFFFFFFF),
      onPrimary: Color(0xFF212121),
      isDark: false,
      isPremium: false,
      conflictBg: true,
    ),
    GamePrimaryColor(
      id: 1,
      primary: Color(0xFF000000),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
      conflictBg: true,
    ),
    GamePrimaryColor(
      id: 2,
      primary: Color(0xFFE53935),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 3,
      primary: Color(0xFFF48FB1),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 21,
      primary: Color(0xFFD81B60),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 4,
      primary: Color(0xFF7B1FA2),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 5,
      primary: Color(0xFF5E35B1),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 6,
      primary: Color(0xFF3949AB),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 7,
      primary: Color(0xFF1E88E5),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 8,
      primary: Color(0xFF00ACC1),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 9,
      primary: Color(0xFF00897B),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 10,
      primary: Color(0xFF43A047),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 11,
      primary: Color(0xFF7CB342),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 12,
      primary: Color(0xFFC0CA33),
      onPrimary: Color(0xFF000000),
      isDark: false,
    ),
    GamePrimaryColor(
      id: 13,
      primary: Color(0xFFFFEE58),
      onPrimary: Color(0xFF000000),
      isDark: false,
    ),
    GamePrimaryColor(
      id: 22,
      primary: Color(0xFFFDD835),
      onPrimary: Color(0xFF000000),
      isDark: false,
    ),
    GamePrimaryColor(
      id: 14,
      primary: Color(0xFFFFB300),
      onPrimary: Color(0xFF000000),
      isDark: false,
    ),
    GamePrimaryColor(
      id: 15,
      primary: Color(0xFFFF6F00),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 16,
      primary: Color(0xFFE65100),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 17,
      primary: Color(0xFFBF360C),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 18,
      primary: Color(0xFF3E2723),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
    ),
    GamePrimaryColor(
      id: 19,
      primary: Color(0xFF212121),
      onPrimary: Color(0xFFFFFFFF),
      isDark: true,
      conflictBg: true,
    ),
    GamePrimaryColor(
      id: 23,
      primary: Color(0xFFBDBDBD),
      onPrimary: Color(0xFF212121),
      isDark: false,
      conflictBg: true,
    ),
  ];

  static GameBackgroundColor backgroundOfId(int id) {
    return backgrounds.firstWhere(
      (element) => element.id == id,
      orElse: () => backgrounds.first,
    );
  }

  static GamePrimaryColor primaryOfId(int id) {
    return primaryColors.firstWhere(
      (element) => element.id == id,
      orElse: () => primaryColors.first,
    );
  }
}
