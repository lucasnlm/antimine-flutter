import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class GlobalSettingsState extends Equatable {
  const GlobalSettingsState({required this.colorScheme, this.locale});

  final ColorScheme colorScheme;
  final String? locale;

  GlobalSettingsState copyWith({ColorScheme? colorScheme, String? locale}) {
    return GlobalSettingsState(
      colorScheme: colorScheme ?? this.colorScheme,
      locale: locale ?? this.locale,
    );
  }

  @override
  List<Object?> get props => [colorScheme, locale];
}
