import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/models/game_settings.dart';
import '../../../common/settings/settings_manager.dart';
import 'settings_state.dart';

class SettingsBloc extends Cubit<SettingsState> {
  SettingsBloc({required this.settingsManager}) : super(const SettingsState());

  final SettingsManager settingsManager;

  void loadSettings() {
    final settings = settingsManager.cache;
    emit(SettingsState(settings: settings));
  }

  void setVibration(bool value) {
    settingsManager.setVibration(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void setSoundEffects(bool value) {
    settingsManager.setSoundEffects(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void setMusic(bool value) {
    settingsManager.setMusic(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void setOpenOnGame(bool value) {
    settingsManager.setOpenOnGame(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void setShowWindows(bool value) {
    settingsManager.setShowWindows(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void setImmersiveMode(bool value) {
    settingsManager.setImmersiveMode(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void setUseQuestionMark(bool value) {
    settingsManager.setQuestionMark(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void setUseAutoFlagging(bool value) {
    settingsManager.setAutoFlagging(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void setTapOnNumbers(bool value) {
    settingsManager.setTapOnNumbers(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void setTapToFlagNeighbours(bool value) {
    settingsManager.setTapToFlagNeighbours(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void setHints(bool value) {
    settingsManager.setHintsEnabled(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void setDarkenNumbers(bool value) {
    settingsManager.setDarkenNumbers(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void setShowClock(bool value) {
    settingsManager.setShowClock(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void setNoGuessingMode(bool value) {
    settingsManager.setNoGuessingMode(value);
    emit(state.copyWith(settings: settingsManager.cache));
  }

  void reset() async {
    settingsManager
      ..setVibration(GameSettings.initial.vibration)
      ..setSoundEffects(GameSettings.initial.soundEffects)
      ..setMusic(GameSettings.initial.music)
      ..setOpenOnGame(GameSettings.initial.openOnGame)
      ..setShowWindows(GameSettings.initial.showWindows)
      ..setImmersiveMode(GameSettings.initial.immersiveMode)
      ..setQuestionMark(GameSettings.initial.useQuestionMark)
      ..setAutoFlagging(GameSettings.initial.useAutoFlagging)
      ..setTapOnNumbers(GameSettings.initial.tapOnNumbers)
      ..setTapToFlagNeighbours(GameSettings.initial.tapToFlagNeighbours)
      ..setHintsEnabled(GameSettings.initial.hints)
      ..setDarkenNumbers(GameSettings.initial.darkenNumbers)
      ..setShowClock(GameSettings.initial.showClock)
      ..setNoGuessingMode(GameSettings.initial.noGuessingMode);

    emit(state.copyWith(settings: settingsManager.cache));

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }
}
