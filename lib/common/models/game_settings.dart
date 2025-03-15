import 'package:equatable/equatable.dart';
import 'package:flame/game.dart';

import 'input/action.dart';

class GameSettings extends Equatable {
  const GameSettings({
    required this.controlType,
    required this.useQuestionMark,
    required this.useAutoFlagging,
    required this.tapOnNumbers,
    required this.darkenNumbers,
    required this.music,
    required this.soundEffects,
    required this.vibration,
    required this.openOnGame,
    required this.immersiveMode,
    required this.showWindows,
    required this.tapToFlagNeighbours,
    required this.hints,
    required this.showClock,
    required this.showContinueGame,
    required this.themeBackground,
    required this.themeMainColor,
    required this.themeSkin,
    required this.noGuessingMode,
    required this.defaultAction,
    required this.customWidth,
    required this.customHeight,
    required this.customMines,
    required this.locale,
    required this.hashBase,
    required this.hashSeed,
    required this.progressiveValue,
    required this.winsCount,
    required this.cameraPosition,
    required this.cameraZoom,
    required this.showTutorialButton,
    required this.firstTimeHintsAd,
    required this.touchSensibility,
  });

  final int controlType;
  final bool useQuestionMark;
  final bool useAutoFlagging;
  final bool tapOnNumbers;
  final bool tapToFlagNeighbours;
  final bool darkenNumbers;
  final bool music;
  final bool soundEffects;
  final bool vibration;
  final bool openOnGame;
  final bool immersiveMode;
  final bool showWindows;
  final bool showClock;
  final bool noGuessingMode;
  final bool hints;
  final bool showContinueGame;
  final int themeBackground;
  final int themeMainColor;
  final int themeSkin;
  final Action defaultAction;
  final int customWidth;
  final int customHeight;
  final int customMines;
  final String? locale;
  final String? hashBase;
  final String? hashSeed;
  final int progressiveValue;
  final int winsCount;
  final Vector2? cameraPosition;
  final double? cameraZoom;
  final bool showTutorialButton;
  final bool firstTimeHintsAd;
  final int touchSensibility;

  @override
  List<Object?> get props => [
        controlType,
        useQuestionMark,
        useAutoFlagging,
        tapOnNumbers,
        darkenNumbers,
        music,
        soundEffects,
        vibration,
        openOnGame,
        immersiveMode,
        showWindows,
        tapToFlagNeighbours,
        hints,
        showClock,
        noGuessingMode,
        showContinueGame,
        themeBackground,
        themeMainColor,
        themeSkin,
        defaultAction,
        customWidth,
        customHeight,
        customMines,
        progressiveValue,
        winsCount,
        cameraPosition,
        cameraZoom,
        showTutorialButton,
        firstTimeHintsAd,
        touchSensibility,
      ];

  GameSettings copyWith({
    int? controlType,
    bool? useQuestionMark,
    bool? useAutoFlagging,
    bool? tapOnNumbers,
    bool? darkenNumbers,
    bool? music,
    bool? soundEffects,
    bool? vibration,
    bool? openOnGame,
    bool? immersiveMode,
    bool? showWindows,
    bool? noGuessingMode,
    bool? tapToFlagNeighbours,
    bool? hints,
    bool? showClock,
    bool? showContinueGame,
    int? themeBackground,
    int? themeMainColor,
    int? themeSkin,
    Action? defaultAction,
    int? customWidth,
    int? customHeight,
    int? customMines,
    String? locale,
    String? hashBase,
    String? hashSeed,
    int? progressiveValue,
    int? winsCount,
    Vector2? cameraPosition,
    double? cameraZoom,
    bool? showTutorialButton,
    bool? firstTimeHintsAd,
    int? touchSensibility,
  }) {
    return GameSettings(
      controlType: controlType ?? this.controlType,
      useQuestionMark: useQuestionMark ?? this.useQuestionMark,
      useAutoFlagging: useAutoFlagging ?? this.useAutoFlagging,
      tapOnNumbers: tapOnNumbers ?? this.tapOnNumbers,
      darkenNumbers: darkenNumbers ?? this.darkenNumbers,
      music: music ?? this.music,
      soundEffects: soundEffects ?? this.soundEffects,
      vibration: vibration ?? this.vibration,
      openOnGame: openOnGame ?? this.openOnGame,
      immersiveMode: immersiveMode ?? this.immersiveMode,
      showWindows: showWindows ?? this.showWindows,
      tapToFlagNeighbours: tapToFlagNeighbours ?? this.tapToFlagNeighbours,
      hints: hints ?? this.hints,
      showClock: showClock ?? this.showClock,
      showContinueGame: showContinueGame ?? this.showContinueGame,
      themeBackground: themeBackground ?? this.themeBackground,
      themeMainColor: themeMainColor ?? this.themeMainColor,
      themeSkin: themeSkin ?? this.themeSkin,
      noGuessingMode: noGuessingMode ?? this.noGuessingMode,
      defaultAction: defaultAction ?? this.defaultAction,
      customWidth: customWidth ?? this.customWidth,
      customHeight: customHeight ?? this.customHeight,
      customMines: customMines ?? this.customMines,
      locale: locale ?? this.locale,
      hashBase: hashBase ?? this.hashBase,
      hashSeed: hashSeed ?? this.hashSeed,
      progressiveValue: progressiveValue ?? this.progressiveValue,
      winsCount: winsCount ?? this.winsCount,
      cameraPosition: cameraPosition ?? this.cameraPosition,
      cameraZoom: cameraZoom ?? this.cameraZoom,
      showTutorialButton: showTutorialButton ?? this.showTutorialButton,
      firstTimeHintsAd: firstTimeHintsAd ?? this.firstTimeHintsAd,
      touchSensibility: touchSensibility ?? this.touchSensibility,
    );
  }

  static GameSettings get initial => const GameSettings(
        controlType: 5,
        noGuessingMode: true,
        useQuestionMark: false,
        useAutoFlagging: true,
        tapOnNumbers: true,
        darkenNumbers: true,
        music: true,
        soundEffects: true,
        vibration: true,
        openOnGame: false,
        immersiveMode: false,
        showWindows: true,
        tapToFlagNeighbours: true,
        hints: true,
        showClock: true,
        showContinueGame: false,
        themeBackground: 0,
        themeMainColor: 0,
        themeSkin: 0,
        defaultAction: Action.open,
        customWidth: 9,
        customHeight: 9,
        customMines: 10,
        locale: null,
        hashBase: null,
        hashSeed: null,
        progressiveValue: 0,
        winsCount: 0,
        cameraPosition: null,
        cameraZoom: null,
        showTutorialButton: true,
        firstTimeHintsAd: true,
        touchSensibility: 200,
      );
}
