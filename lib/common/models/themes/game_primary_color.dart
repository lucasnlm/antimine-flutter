import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class GamePrimaryColor extends Equatable {
  const GamePrimaryColor({
    required this.id,
    required this.primary,
    required this.onPrimary,
    required this.isDark,
    this.isPremium = true,
    this.conflictBg = false,
  });

  final int id;
  final Color primary;
  final Color onPrimary;
  final bool isDark;
  final bool isPremium;
  final bool conflictBg;

  @override
  List<Object?> get props => [
        id,
        primary,
        onPrimary,
        isDark,
        isPremium,
        conflictBg,
      ];
}
