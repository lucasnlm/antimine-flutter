import 'dart:math';

import 'package:flame/game.dart';

import '../models/game_settings.dart';
import '../models/input/action.dart';
import 'settings_keys.dart';
import 'settings_repository.dart';

class SettingsManager {
  SettingsManager({
    required this.repository,
  });

  final SettingsRepository repository;

  GameSettings? _cache;

  GameSettings get cache => _cache ?? GameSettings.initial;

  /// Initializes the manager.
  Future<void> init() {
    return repository.init();
  }

  void setVibration(bool value) async {
    _cache = _cache?.copyWith(vibration: value);
    await repository.setBool(SettingsKeys.vibration, value);
  }

  void setSoundEffects(bool value) async {
    _cache = _cache?.copyWith(soundEffects: value);
    await repository.setBool(SettingsKeys.soundEffects, value);
  }

  void setMusic(bool value) async {
    _cache = _cache?.copyWith(music: value);
    await repository.setBool(SettingsKeys.music, value);
  }

  void setOpenOnGame(bool value) async {
    _cache = _cache?.copyWith(openOnGame: value);
    await repository.setBool(SettingsKeys.openDirectly, value);
  }

  void setShowWindows(bool value) async {
    _cache = _cache?.copyWith(showWindows: value);
    await repository.setBool(SettingsKeys.showWindows, value);
  }

  void setImmersiveMode(bool value) async {
    _cache = _cache?.copyWith(immersiveMode: value);
    await repository.setBool(SettingsKeys.useImmersiveMode, value);
  }

  void setQuestionMark(bool value) async {
    _cache = _cache?.copyWith(useQuestionMark: value);
    await repository.setBool(SettingsKeys.questionMark, value);
  }

  void setAutoFlagging(bool value) async {
    _cache = _cache?.copyWith(useAutoFlagging: value);
    await repository.setBool(SettingsKeys.assistant, value);
  }

  void setTapOnNumbers(bool value) async {
    _cache = _cache?.copyWith(tapOnNumbers: value);
    await repository.setBool(SettingsKeys.allowTapNumber, value);
  }

  void setTapToFlagNeighbours(bool value) async {
    _cache = _cache?.copyWith(tapToFlagNeighbours: value);
    await repository.setBool(SettingsKeys.allowTapToFlagNeighbours, value);
  }

  void setHintsEnabled(bool value) async {
    _cache = _cache?.copyWith(hints: value);
    await repository.setBool(SettingsKeys.useHint, value);
  }

  void setDarkenNumbers(bool value) async {
    _cache = _cache?.copyWith(darkenNumbers: value);
    await repository.setBool(SettingsKeys.darkenNumbers, value);
  }

  void setShowClock(bool value) async {
    _cache = _cache?.copyWith(showClock: value);
    await repository.setBool(SettingsKeys.showClock, value);
  }

  void setShowContinueGame(bool value) async {
    _cache = _cache?.copyWith(showContinueGame: value);
    await repository.setBool(SettingsKeys.showContinueGame, value);
  }

  void setThemeBackground(int value) async {
    _cache = _cache?.copyWith(themeBackground: value);
    await repository.setInt(SettingsKeys.themeBackground, value);
  }

  void setThemeMainColor(int value) async {
    _cache = _cache?.copyWith(themeMainColor: value);
    await repository.setInt(SettingsKeys.themeMainColor, value);
  }

  void setThemeSkin(int value) async {
    _cache = _cache?.copyWith(themeSkin: value);
    await repository.setInt(SettingsKeys.themeSkin, value);
  }

  void setNoGuessingMode(bool value) async {
    _cache = _cache?.copyWith(noGuessingMode: value);
    await repository.setBool(SettingsKeys.noGuessingMode, value);
  }

  void setControlType(int value) async {
    _cache = _cache?.copyWith(controlType: value);
    await repository.setInt(SettingsKeys.controlStyle, value);
  }

  void setDefaultAction(Action value) async {
    _cache = _cache?.copyWith(defaultAction: value);
    await repository.setInt(SettingsKeys.defaultAction, value.index);
  }

  void setCustomWidth(int value) async {
    _cache = _cache?.copyWith(customWidth: value);
    await repository.setInt(SettingsKeys.customWidth, value);
  }

  void setCustomHeight(int value) async {
    _cache = _cache?.copyWith(customHeight: value);
    await repository.setInt(SettingsKeys.customHeight, value);
  }

  void setCustomMines(int value) async {
    _cache = _cache?.copyWith(customMines: value);
    await repository.setInt(SettingsKeys.customMines, value);
  }

  void setHashBase(String base) async {
    _cache = _cache?.copyWith(hashBase: base);
    await repository.setString(SettingsKeys.hashBase, base);
  }

  void setHashSeed(String seed) async {
    _cache = _cache?.copyWith(hashSeed: seed);
    await repository.setString(SettingsKeys.hashSeed, seed);
  }

  void setLocale(String value) async {
    _cache = _cache?.copyWith(locale: value);
    await repository.setString(SettingsKeys.locale, value);
  }

  void incrementProgress() async {
    final current = await repository.getInt(SettingsKeys.progressiveValue, 0);
    final newValue = current + 1;
    _cache = _cache?.copyWith(progressiveValue: newValue);
    await repository.setInt(SettingsKeys.progressiveValue, newValue);
  }

  void decrementProgress() async {
    final current = await repository.getInt(SettingsKeys.progressiveValue, 0);
    final newValue = max(0, current - 1);
    _cache = _cache?.copyWith(progressiveValue: newValue);
    await repository.setInt(SettingsKeys.progressiveValue, newValue);
  }

  void setWinsCount(int value) async {
    _cache = _cache?.copyWith(winsCount: value);
    await repository.setInt(SettingsKeys.winsCount, value);
  }

  void setTutorialButton(bool value) async {
    _cache = _cache?.copyWith(showTutorialButton: value);
    await repository.setBool(SettingsKeys.tutorialButton, value);
  }

  void setTouchSensibility(int value) async {
    _cache = _cache?.copyWith(touchSensibility: value);
    await repository.setInt(SettingsKeys.touchSensibility, value);
  }

  void saveCameraState(Vector2 position, double zoom) async {
    _cache = _cache?.copyWith(
      cameraPosition: position,
      cameraZoom: zoom,
    );

    if (_cache?.cameraPosition != position) {
      await repository.setDouble(SettingsKeys.cameraX, position.x);
      await repository.setDouble(SettingsKeys.cameraY, position.y);
    }
    if (_cache?.cameraZoom != zoom) {
      await repository.setDouble(SettingsKeys.cameraZoom, zoom);
    }
  }

  void turnOffHintAd() {
    _cache = _cache?.copyWith(firstTimeHintsAd: false);
    repository.setBool(SettingsKeys.firstTimeHintsAd, false);
  }

  /// Gets the current settings.
  Future<void> reload() async {
    final initial = GameSettings.initial;

    final defaultActionId = await repository.getInt(
      SettingsKeys.defaultAction,
      initial.defaultAction.index,
    );

    _cache = GameSettings(
      controlType: await repository.getInt(
        SettingsKeys.controlStyle,
        initial.controlType,
      ),
      useQuestionMark: await repository.getBool(
        SettingsKeys.questionMark,
        initial.useQuestionMark,
      ),
      useAutoFlagging: await repository.getBool(
        SettingsKeys.assistant,
        initial.useAutoFlagging,
      ),
      tapOnNumbers: await repository.getBool(
        SettingsKeys.allowTapNumber,
        initial.tapOnNumbers,
      ),
      darkenNumbers: await repository.getBool(
        SettingsKeys.darkenNumbers,
        initial.darkenNumbers,
      ),
      music: await repository.getBool(
        SettingsKeys.music,
        initial.music,
      ),
      soundEffects: await repository.getBool(
        SettingsKeys.soundEffects,
        initial.soundEffects,
      ),
      vibration: await repository.getBool(
        SettingsKeys.vibration,
        initial.vibration,
      ),
      openOnGame: await repository.getBool(
        SettingsKeys.openDirectly,
        initial.openOnGame,
      ),
      immersiveMode: await repository.getBool(
        SettingsKeys.useImmersiveMode,
        initial.immersiveMode,
      ),
      showWindows: await repository.getBool(
        SettingsKeys.showWindows,
        initial.showWindows,
      ),
      tapToFlagNeighbours: await repository.getBool(
        SettingsKeys.allowTapToFlagNeighbours,
        initial.tapToFlagNeighbours,
      ),
      hints: await repository.getBool(
        SettingsKeys.useHint,
        initial.hints,
      ),
      showClock: await repository.getBool(
        SettingsKeys.showClock,
        initial.showClock,
      ),
      showContinueGame: await repository.getBool(
        SettingsKeys.showContinueGame,
        initial.showContinueGame,
      ),
      themeBackground: await repository.getInt(
        SettingsKeys.themeBackground,
        initial.themeBackground,
      ),
      themeMainColor: await repository.getInt(
        SettingsKeys.themeMainColor,
        initial.themeMainColor,
      ),
      themeSkin: await repository.getInt(
        SettingsKeys.themeSkin,
        initial.themeSkin,
      ),
      noGuessingMode: await repository.getBool(
        SettingsKeys.noGuessingMode,
        initial.noGuessingMode,
      ),
      defaultAction: Action.values[defaultActionId],
      customWidth: await repository.getInt(
        SettingsKeys.customWidth,
        initial.customWidth,
      ),
      customHeight: await repository.getInt(
        SettingsKeys.customHeight,
        initial.customHeight,
      ),
      customMines: await repository.getInt(
        SettingsKeys.customMines,
        initial.customMines,
      ),
      locale: await repository.optString(
        SettingsKeys.locale,
      ),
      hashBase: await repository.optString(
        SettingsKeys.hashBase,
      ),
      hashSeed: await repository.optString(
        SettingsKeys.hashSeed,
      ),
      progressiveValue: await repository.getInt(
        SettingsKeys.progressiveValue,
        initial.progressiveValue,
      ),
      winsCount: await repository.getInt(
        SettingsKeys.winsCount,
        initial.winsCount,
      ),
      cameraPosition: _vector2Of(
        await repository.optDouble(
          SettingsKeys.cameraX,
        ),
        await repository.optDouble(
          SettingsKeys.cameraY,
        ),
      ),
      cameraZoom: await repository.optDouble(
        SettingsKeys.cameraZoom,
      ),
      showTutorialButton: await repository.getBool(
        SettingsKeys.tutorialButton,
        initial.showTutorialButton,
      ),
      firstTimeHintsAd: await repository.getBool(
        SettingsKeys.firstTimeHintsAd,
        initial.firstTimeHintsAd,
      ),
      touchSensibility: await repository.getInt(
        SettingsKeys.touchSensibility,
        initial.touchSensibility,
      ),
    );
  }

  static Vector2? _vector2Of(double? x, double? y) {
    if (x == null || y == null) {
      return null;
    }
    return Vector2(x, y);
  }
}
