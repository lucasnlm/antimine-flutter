import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemesState extends Equatable {
  const ThemesState({
    required this.backgroundIndex,
    required this.primaryColorIndex,
    required this.skinIndex,
    required this.colorScheme,
    required this.initialBackgroundIndex,
    required this.initialPrimaryColorIndex,
    required this.initialSkinIndex,
  });

  final int backgroundIndex;
  final int primaryColorIndex;
  final int skinIndex;
  final int initialBackgroundIndex;
  final int initialPrimaryColorIndex;
  final int initialSkinIndex;
  final ColorScheme colorScheme;

  bool get hasColorChanges =>
      initialPrimaryColorIndex != primaryColorIndex ||
      initialBackgroundIndex != backgroundIndex;

  bool get hasChanges => hasColorChanges || initialSkinIndex != skinIndex;

  @override
  List<Object?> get props => [
    backgroundIndex,
    initialBackgroundIndex,
    primaryColorIndex,
    initialPrimaryColorIndex,
    skinIndex,
    initialSkinIndex,
    colorScheme,
  ];

  ThemesState copyWith({
    int? backgroundIndex,
    int? primaryIndex,
    int? skinIndex,
    ColorScheme? colorScheme,
    bool? isPremium,
  }) {
    return ThemesState(
      backgroundIndex: backgroundIndex ?? this.backgroundIndex,
      primaryColorIndex: primaryIndex ?? primaryColorIndex,
      skinIndex: skinIndex ?? this.skinIndex,
      colorScheme: colorScheme ?? this.colorScheme,
      initialBackgroundIndex: initialBackgroundIndex,
      initialPrimaryColorIndex: initialPrimaryColorIndex,
      initialSkinIndex: initialSkinIndex,
    );
  }

  static const ThemesState initial = ThemesState(
    backgroundIndex: 0,
    primaryColorIndex: 0,
    skinIndex: 0,
    initialBackgroundIndex: 0,
    initialPrimaryColorIndex: 0,
    initialSkinIndex: 0,
    colorScheme: ColorScheme.light(),
  );
}
