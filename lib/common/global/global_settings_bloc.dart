import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/themes/game_theme_manager.dart';
import '../settings/settings_manager.dart';
import 'global_settings_state.dart';

class GlobalSettingsBloc extends Cubit<GlobalSettingsState> {
  GlobalSettingsBloc({
    required GameThemeManager gameThemeManager,
    required SettingsManager settingsManager,
  }) : super(
         GlobalSettingsState(
           colorScheme: gameThemeManager.colorScheme,
           locale: settingsManager.cache.locale,
         ),
       );

  void changeTheme(ColorScheme colorScheme) {
    emit(state.copyWith(colorScheme: colorScheme));
  }

  void changeLocale(String locale) {
    emit(state.copyWith(locale: locale));
  }

  void change({required ColorScheme colorScheme, required String? locale}) {
    emit(state.copyWith(colorScheme: colorScheme, locale: locale));
  }
}
