import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../icon_behavior.dart';

class GameTheme extends Equatable {
  const GameTheme({
    required this.background,
    required this.cover,
    required this.around,
    required this.uncovered,
    required this.explodedMineBackground,
    required this.neutralMineBackground,
    required this.ignoredMineBackground,
    required this.mineColor,
    required this.iconColor,
    required this.iconBehavior,
    required this.connectAreas,
    required this.canTint,
  });

  final Color background;
  final Color cover;
  final Color uncovered;
  final Color explodedMineBackground;
  final Color neutralMineBackground;
  final Color ignoredMineBackground;
  final Color mineColor;
  final Color iconColor;
  final IconBehavior iconBehavior;
  final bool connectAreas;
  final bool canTint;
  final List<Color> around;

  @override
  List<Object?> get props => [
        background,
        cover,
        uncovered,
        explodedMineBackground,
        neutralMineBackground,
        ignoredMineBackground,
        mineColor,
        iconColor,
        iconBehavior,
        connectAreas,
        canTint,
        around,
      ];
}
