import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'theme_color_type.dart';

class GameBackgroundColor extends Equatable {
  const GameBackgroundColor({
    required this.id,
    required this.themeColorType,
    required this.background,
    required this.onBackground,
    this.isPremium = false,
    this.isDark = false,
  });

  final int id;
  final ThemeColorType themeColorType;
  final Color? background;
  final Color? onBackground;
  final bool isDark;
  final bool isPremium;

  @override
  List<Object?> get props => [
        id,
        themeColorType,
        background,
        onBackground,
        isPremium,
        isDark,
      ];
}
