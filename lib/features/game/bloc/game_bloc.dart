import 'package:antimine/features/game/screen/game_params.dart';
import 'package:flame/components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../common/audio/game_audio_manager.dart';
import '../../../common/hash/hash_manager.dart';
import '../../../common/hints/hint_manager.dart';
import '../../../common/models/stats.dart';
import '../../../common/review/in_app_review_manager.dart';
import '../../../common/settings/settings_manager.dart';
import '../../../common/vibration/vibrator_manager.dart';
import '../../../foundation/io/save_file_manager.dart';
import '../../../foundation/io/share_image_manager.dart';
import '../../../common/models/difficulty.dart';
import '../../../common/models/file/save.dart';
import '../../../common/models/game_settings.dart';
import '../../../common/models/game_status.dart';
import '../../../common/models/input/action.dart';
import '../../../common/models/input/game_input.dart';
import '../../../common/models/input/input_type.dart';
import '../../../common/models/mark.dart';
import '../../../common/models/minefield.dart';
import '../../../common/models/themes/game_theme.dart';
import '../../../foundation/io/stats_file_manager.dart';
import '../../../foundation/side_effect/side_effect_bloc.dart';
import '../logic/date_time_provider.dart';
import '../logic/game_constants.dart';
import '../logic/minefield_handler.dart';
import '../../../common/minefield/minefield_manager.dart';
import '../logic/minefield_solver.dart';
import '../logic/randomness_manager.dart';
import 'game_side_effect.dart';
import 'game_state.dart';

class GameBloc extends Cubit<GameState> {
  GameBloc({
    required this.theme,
    required this.settings,
    required this.minefieldHandler,
    required this.minefieldSolver,
    required this.saveFileManager,
    required this.minefieldManager,
    required this.randomnessManager,
    required this.sideEffectBloc,
    required this.hintManager,
    required this.dateTimeProvider,
    required this.shareImageManager,
    required this.audioManager,
    required this.vibratorManager,
    required this.statsFileManager,
    required this.hashManager,
    required this.settingsManager,
    required this.inAppReviewManager,
    required GameParams params,
  }) : super(GameState(settings: settings, params: params));

  final GameSettings settings;
  final MinefieldHandler minefieldHandler;
  final MinefieldSolver minefieldSolver;
  final SaveFileManager saveFileManager;
  final StatsFileManager statsFileManager;
  final MinefieldManager minefieldManager;
  final RandomnessManager randomnessManager;
  final GameTheme theme;
  final SideEffectBloc sideEffectBloc;
  final HintManager hintManager;
  final DateTimeProvider dateTimeProvider;
  final ShareImageManager shareImageManager;
  final GameAudioManager audioManager;
  final VibratorManager vibratorManager;
  final SettingsManager settingsManager;
  final HashManager hashManager;
  final InAppReviewManager inAppReviewManager;

  void loadPreviewGame(String? saveId) async {
    final save =
        saveId != null
            ? await saveFileManager.loadSave(saveId)
            : await saveFileManager.loadPreviewSave();
    if (save != null) {
      final params = state.params;
      final savedState = await _saveToState(save);
      emit(savedState.copyWith(isPreview: true, params: params));
    }
  }

  void restartSaveGame(String? saveId) async {
    if (saveId == null) {
      continueSaveGame();
    } else {
      final save = await saveFileManager.loadSave(saveId);
      final id = save?.firstOpen.initialId;
      refreshImmersiveMode();

      settingsManager.saveCameraState(Vector2.zero(), 1.0);

      if (save != null && id != null) {
        final area =
            save.areas.where((e) => e.id == id).firstOrNull ?? save.areas[id];

        final initialX = area.x;
        final initialY = area.y;

        newGame(
          difficulty: save.difficulty,
          seed: save.seed,
          initialPosition: Vector2(initialX.toDouble(), initialY.toDouble()),
        );
      } else {
        newGame(difficulty: Difficulty.standard);
      }
    }
  }

  void continueSaveGame([String? targetId]) async {
    String? saveId;

    if (targetId != null) {
      saveId = targetId;
    } else {
      final saveList = await saveFileManager.loadSaveList();
      saveId = saveList.current;
    }

    refreshImmersiveMode();

    if (saveId == null) {
      newGame(difficulty: Difficulty.standard);
    } else {
      final save = await saveFileManager.loadSave(saveId);
      if (save != null) {
        emit(await _saveToState(save));
      } else {
        newGame(difficulty: Difficulty.standard);
      }
    }
  }

  void newGame({
    Difficulty? difficulty,
    int? seed,
    Vector2? initialPosition,
  }) async {
    difficulty = difficulty ?? state.difficulty ?? Difficulty.standard;
    final minefield = minefieldManager.createMinefieldByDifficulty(
      difficulty: difficulty,
      seed: seed ?? randomnessManager.seed(),
    );

    refreshImmersiveMode();

    emit(state.copyWith(loading: true));

    await minefieldHandler.createEmpty(minefield, theme.connectAreas);

    final params = GameParams(
      difficulty: difficulty,
      seed: seed,
      initialPosition: initialPosition,
    );

    emit(
      GameState(
        turn: 0,
        params: params,
        minefield: minefield,
        difficulty: difficulty,
        areas: minefieldHandler.result(),
        screenSize: state.screenSize,
        settings: settings,
        startDate: dateTimeProvider.nowInMilliseconds(),
        loading: false,
        hintCount: await hintManager.getAmount(),
        selectedAction: settings.defaultAction,
      ),
    );

    if (initialPosition != null) {
      _openAt(initialPosition);
    }

    if (settings.winsCount > 10) {
      inAppReviewManager.tryRequestReview();
    }

    settingsManager.saveCameraState(Vector2.zero(), 1.0);
  }

  void refreshImmersiveMode() {
    if (state.settings.immersiveMode) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }
  }

  void onScreenResize(Vector2 size) {
    emit(state.copyWith(screenSize: size));
  }

  void tapArea(Vector2 position, bool useForms) async {
    _handleInput(InputType.singleTap, position);
  }

  void doubleTapArea(Vector2 position) {
    _handleInput(InputType.doubleTap, position);
  }

  void longTapArea(Vector2 position) {
    vibratorManager.longPressVibration();
    _handleInput(InputType.longTap, position);
  }

  void selectAction(Action action) {
    emit(state.copyWith(selectedAction: action));
  }

  void changeCameraPosition(Vector2 position) {
    emit(state.copyWith(cameraPosition: position));
  }

  void clockTick() {
    if (!state.isPreview && state.status == GameStatus.inProgress) {
      var duration = state.duration;
      duration += GameConstants.tickDuration.inMilliseconds;
      emit(state.copyWith(duration: duration));
    }
  }

  void revealMine() async {
    minefieldHandler.consume(state);
    final result = minefieldHandler.revealRandomMine();
    if (result) {
      await hintManager.consumeHint();
      final now = dateTimeProvider.nowInMilliseconds();
      audioManager.playRevealMine();
      _updateState(advanceTurn: true, lastHintUsed: now);
    } else {
      sideEffectBloc.emit(NoMoreHintsEffect());
    }
  }

  void continueFromGameOver() {
    minefieldHandler.consume(state);
    minefieldHandler.ignoreErrors();
    _updateState(advanceTurn: false);
  }

  void stopTutorialButton() {
    settingsManager.setTutorialButton(false);
  }

  void giveUpGame() {
    if (state.status != GameStatus.success) {
      minefieldHandler
        ..consume(state)
        ..revealAllMines()
        ..refreshForms();
      emit(state.copyWith(areas: minefieldHandler.result()));
      _updateState(advanceTurn: false);
    }
  }

  void getMoreHints() async {
    settingsManager.turnOffHintAd();
    await hintManager.addHint(GameConstants.hintReward);
    final newAmount = await hintManager.getAmount();
    emit(state.copyWith(hintCount: newAmount));
  }

  void shareGameImage() {
    sideEffectBloc.emit(
      ShareGameImageEffect(
        hash: _currentGameHash(),
        minefieldSize: state.minefield.beutifyString,
      ),
    );
  }

  void shareRequest() {
    sideEffectBloc.emit(ShareGameRequestEffect());
  }

  String _currentGameHash() {
    final initialId = state.firstOpen?.initialId;
    final initialArea = state.areas.firstWhere(
      (e) => e.id == initialId,
      orElse: () => state.areas.first,
    );
    final initialX = initialArea.x.toInt();
    final initialY = initialArea.y.toInt();

    return hashManager.createHash(
      minefield: state.minefield,
      initialX: initialX,
      initialY: initialY,
    );
  }

  void shareCode() async {
    final hash = _currentGameHash();
    await Share.share(hash);
  }

  Future<void> sharePicture(ByteData byteData) async {
    final now = dateTimeProvider.now();
    bool? shareResult;
    final result = await shareImageManager.saveImage(byteData, now.toString());
    if (result != null) {
      widgets.debugPrint("Image saved at $result");
      try {
        await Share.shareXFiles([
          XFile(
            result.path,
            mimeType: 'image/png',
            name: 'antimine-share-$now.png',
          ),
        ]);
        shareResult = true;
      } catch (e) {
        widgets.debugPrint("> Failed to share image: $e");
        shareResult = null;
      }
    } else {
      widgets.debugPrint("> Failed to save image");
    }

    if (shareResult == false) {
      sideEffectBloc.emit(ShareFailedEffect());
    }
  }

  void simulateNext() async {
    minefieldSolver.consume(state);
    final success = minefieldSolver.runStep();

    if (success) {
      final newState = state.copyWith(areas: minefieldSolver.result());
      minefieldHandler
        ..consume(newState)
        ..refreshForms();
      _updateState(advanceTurn: true);
    }
  }

  void _handleInput(InputType inputType, Vector2 position) {
    if (state.isPreview) {
      return;
    }

    final inputMap = GameInput.fromId(settings.controlType);
    if (inputMap.showInputSelector) {
      Action action = state.selectedAction;
      _handleAction(action, position);
    } else {
      final action = inputMap.inputMap[inputType];
      if (action != null) {
        _handleAction(action, position);
      }
    }
  }

  void _handleAction(Action action, Vector2 position) {
    final status = state.status;

    if (status == GameStatus.notStarted) {
      // The initial action is always open when the game is not started.
      action = Action.open;
    } else if (status == GameStatus.success || status == GameStatus.failure) {
      // The game is over, no more actions are allowed.
      return;
    }

    switch (action) {
      case Action.open:
        _openAt(position);
        break;
      case Action.switchMark:
        _switchMarkAt(position);
        break;
      case Action.flag:
        _switchOrSetMarkAt(position, Mark.flag);
        break;
      case Action.question:
        _switchOrSetMarkAt(position, Mark.question);
        break;
    }
  }

  void _openAt(Vector2 position) async {
    if (position.x < 0 ||
        position.y < 0 ||
        position.x >= state.minefield.width ||
        position.y >= state.minefield.height) {
      // Out of bounds
      return;
    }

    minefieldHandler.consume(state);
    var changed = false;
    var startNow = false;

    if (minefieldHandler.hasMarkAt(position)) {
      changed = minefieldHandler.removeMartAt(position);
    } else if (settings.tapOnNumbers &&
        minefieldHandler.numberAt(position) > 0) {
      changed = minefieldHandler.actionOnNeighbors(
        position,
        settings.tapToFlagNeighbours,
      );
    } else {
      if (!minefieldHandler.hasMines()) {
        emit(state.copyWith(loading: true));
        startNow = true;
        await minefieldHandler.plantMinesFor(
          position,
          theme.connectAreas,
          settings.noGuessingMode,
        );

        if (kDebugMode) {
          final hash = hashManager.createHash(
            minefield: state.minefield,
            initialX: position.x.toInt(),
            initialY: position.y.toInt(),
          );

          debugPrint('> Hash: $hash');
        }
      }
      changed = minefieldHandler.openByPosition(position);
    }

    if (changed) {
      audioManager.playOpenArea();

      if (settings.useAutoFlagging) {
        minefieldHandler.runAutoFlagging();
      }

      if (theme.connectAreas) {
        minefieldHandler.refreshForms();
      }

      _updateState(
        advanceTurn: true,
        position: position,
        startDate: startNow ? dateTimeProvider.nowInMilliseconds() : null,
      );
    }
  }

  void _switchOrSetMarkAt(Vector2 position, Mark mark) {
    if (position.x < 0 ||
        position.y < 0 ||
        position.x >= state.minefield.width ||
        position.y >= state.minefield.height) {
      // Out of bounds
      return;
    }

    minefieldHandler.consume(state);

    if (settings.tapOnNumbers && minefieldHandler.numberAt(position) > 0) {
      minefieldHandler.actionOnNeighbors(
        position,
        settings.tapToFlagNeighbours,
      );
    } else {
      minefieldHandler.switchOrSetMarkByPosition(
        position: position,
        mark: mark,
      );
    }

    if (settings.useAutoFlagging) {
      minefieldHandler.runAutoFlagging();
    }

    if (theme.connectAreas) {
      minefieldHandler.refreshForms();
    }

    audioManager.playOpenArea();

    _updateState(advanceTurn: false, position: position);
  }

  void _switchMarkAt(Vector2 position) {
    if (position.x < 0 ||
        position.y < 0 ||
        position.x >= state.minefield.width ||
        position.y >= state.minefield.height) {
      // Out of bounds
      return;
    }

    minefieldHandler.consume(state);

    var changed = false;

    if (settings.tapOnNumbers && minefieldHandler.numberAt(position) > 0) {
      changed = minefieldHandler.actionOnNeighbors(
        position,
        settings.tapToFlagNeighbours,
      );
    } else {
      changed = minefieldHandler.switchMarkByPosition(
        position: position,
        useQuestionMark: settings.useQuestionMark,
      );
    }

    if (changed) {
      audioManager.playOpenArea();

      if (settings.useAutoFlagging) {
        minefieldHandler.runAutoFlagging();
      }

      if (theme.connectAreas) {
        minefieldHandler.refreshForms();
      }

      _updateState(advanceTurn: false, position: position);
    }
  }

  void _updateState({
    required bool advanceTurn,
    Vector2? position,
    int? lastHintUsed,
    int? startDate,
  }) async {
    if (settings.darkenNumbers) {
      minefieldHandler.darkFlaggedNeighbors();
    } else {
      minefieldHandler.undarkNumbers();
    }

    final newState = state.copyWith(
      id: state.id ?? saveFileManager.generateId(),
      firstOpen: state.firstOpen ?? minefieldHandler.firstOpenFor(position),
      turn: advanceTurn ? state.turn + 1 : state.turn,
      status: minefieldHandler.getGameStatus(),
      areas: minefieldHandler.result(),
      lastHintUsed: lastHintUsed ?? state.lastHintUsed,
      startDate: startDate ?? state.startDate,
      hintCount: await hintManager.getAmount(),
      loading: false,
    );

    if (newState.status != state.status) {
      if (newState.status == GameStatus.success) {
        minefieldHandler
          ..finishGame()
          ..refreshForms();
        audioManager
          ..pauseMusic()
          ..playWin();
        insertStats(true);
        emit(newState);
        saveGame(newState);

        if (state.difficulty == Difficulty.standard ||
            state.difficulty == Difficulty.fixedSize) {
          settingsManager.incrementProgress();
        }

        if (settings.showWindows) {
          sideEffectBloc.emit(VictoryEffect());
        }
      } else if (newState.status == GameStatus.failure) {
        audioManager
          ..pauseMusic()
          ..playBombExplosion();
        vibratorManager.explosionVibration();
        insertStats(false);
        emit(newState);
        saveGame(newState);

        if (state.difficulty == Difficulty.standard ||
            state.difficulty == Difficulty.fixedSize) {
          settingsManager.decrementProgress();
        }

        if (settings.showWindows) {
          await Future.delayed(const Duration(milliseconds: 750));
          sideEffectBloc.emit(GameOverEffect());
        }
      } else {
        audioManager.playMusic(restart: newState.turn < 2);
        emit(newState);
        saveGame(newState);
      }
    } else {
      emit(newState);
    }
  }

  Future<GameState> _saveToState(SaveGame save) async {
    final minefield = Minefield(
      width: save.minefield.width,
      height: save.minefield.height,
      mines: save.minefield.mines,
      seed: save.seed,
    );

    minefieldHandler.loadFromList(minefield, theme.connectAreas, save.areas);

    if (save.status == GameStatus.inProgress) {
      audioManager.playMusic(restart: true);
    }

    final params = GameParams(difficulty: save.difficulty, seed: save.seed);

    if (!settings.showContinueGame) {
      settingsManager.setShowContinueGame(true);
    }

    return GameState(
      id: save.id,
      params: params,
      turn: save.turns,
      status: save.status,
      minefield: minefield,
      areas: minefieldHandler.result(),
      screenSize: state.screenSize,
      settings: settings,
      firstOpen: save.firstOpen,
      difficulty: save.difficulty,
      duration: save.duration,
      startDate: save.startDate,
      hintCount: await hintManager.getAmount(),
      selectedAction: settings.defaultAction,
    );
  }

  void saveGame([GameState? targetState]) async {
    final save = _createSaveGame(targetState);
    if (save != null) {
      widgets.debugPrint('> Saving ${save.id}');
      await saveFileManager.saveSave(save);
    }
  }

  void insertStats(bool victory) async {
    final difficulty = state.difficulty;
    if (difficulty != null) {
      final Stats stats = Stats(
        duration: state.duration,
        mines: state.minefield.mines,
        victory: victory ? 1 : 0,
        width: state.minefield.width,
        height: state.minefield.height,
        difficulty: difficulty,
        openArea: state.areas.where((e) => !e.covered).length,
      );
      await statsFileManager.insertStats(stats);
    }
  }

  void resumeMusic() {
    audioManager.playMusic();
  }

  void onResumeEngine() {
    resumeMusicIfInProgress();
    WakelockPlus.enable();
  }

  void onPauseEngine() {
    stopMusic();
    saveGame();
    WakelockPlus.disable();
  }

  void resumeMusicIfInProgress() {
    if (state.status == GameStatus.inProgress) {
      audioManager.playMusic();
    }
  }

  void saveCameraState({required Vector2 position, required double zoom}) {
    settingsManager.saveCameraState(position, zoom);
  }

  void stopMusic() {
    audioManager.pauseMusic();
  }

  SaveGame? _createSaveGame([GameState? targetState]) {
    final state = targetState ?? this.state;
    if (state.difficulty != null && state.firstOpen?.isNotUnknown == true) {
      return SaveGame(
        id: state.id,
        seed: state.minefield.seed,
        startDate: state.startDate,
        duration: state.duration,
        difficulty: state.difficulty!,
        firstOpen: state.firstOpen!,
        status: state.status,
        turns: state.turn,
        minefield: state.minefield,
        areas: state.areas,
      );
    } else {
      if (state.turn > 0) {
        widgets.debugPrint('> Fail to create save game');
      }
      return null;
    }
  }
}
