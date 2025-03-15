import 'package:equatable/equatable.dart';

import '../../../common/models/game_settings.dart';

class SettingsState extends Equatable {
  const SettingsState({
    this.settings,
  });

  final GameSettings? settings;

  bool get hasChanged => [
        settings?.vibration != GameSettings.initial.vibration,
        settings?.soundEffects != GameSettings.initial.soundEffects,
        settings?.music != GameSettings.initial.music,
        settings?.openOnGame != GameSettings.initial.openOnGame,
        settings?.showWindows != GameSettings.initial.showWindows,
        settings?.immersiveMode != GameSettings.initial.immersiveMode,
        settings?.useQuestionMark != GameSettings.initial.useQuestionMark,
        settings?.useAutoFlagging != GameSettings.initial.useAutoFlagging,
        settings?.tapOnNumbers != GameSettings.initial.tapOnNumbers,
        settings?.tapToFlagNeighbours !=
            GameSettings.initial.tapToFlagNeighbours,
        settings?.hints != GameSettings.initial.hints,
        settings?.darkenNumbers != GameSettings.initial.darkenNumbers,
        settings?.showClock != GameSettings.initial.showClock,
        settings?.noGuessingMode != GameSettings.initial.noGuessingMode,
      ].any((e) => e == true);

  SettingsState copyWith({
    GameSettings? settings,
  }) {
    return SettingsState(
      settings: settings ?? this.settings,
    );
  }

  @override
  List<Object?> get props => [
        settings,
        hasChanged,
      ];
}
