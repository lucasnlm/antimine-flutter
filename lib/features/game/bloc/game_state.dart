import 'package:equatable/equatable.dart';
import 'package:flame/components.dart';

import '../../../common/models/area.dart';
import '../../../common/models/difficulty.dart';
import '../../../common/models/first_open.dart';
import '../../../common/models/game_settings.dart';
import '../../../common/models/game_status.dart';
import '../../../common/models/input/action.dart';
import '../../../common/models/minefield.dart';
import '../logic/game_constants.dart';
import '../screen/game_params.dart';

class GameState extends Equatable {
  const GameState({
    required this.settings,
    required this.params,
    this.id,
    this.turn = 0,
    this.status = GameStatus.notStarted,
    this.minefield = Minefield.empty,
    this.areas = const [],
    this.screenSize,
    this.cameraPosition,
    this.selectedAction = Action.flag,
    this.firstOpen,
    this.difficulty,
    this.startDate = 0,
    this.duration = 0,
    this.loading = false,
    this.lastHintUsed = 0,
    this.hintCount = 0,
    this.isPreview = false,
  });

  final String? id;
  final GameStatus status;
  final GameParams params;
  final int turn;
  final Minefield minefield;
  final FirstOpen? firstOpen;
  final Difficulty? difficulty;
  final List<Area> areas;
  final Action selectedAction;
  final GameSettings settings;
  final Vector2? screenSize;
  final Vector2? cameraPosition;
  final int startDate;
  final int duration;
  final bool loading;
  final int lastHintUsed;
  final int hintCount;
  final bool isPreview;

  int get remainingMines {
    return minefield.mines - areas.where((e) => e.mark.isFlag).length;
  }

  bool get canThrowConfetti {
    return status == GameStatus.success &&
        duration > GameConstants.throwConfettiMin.inMilliseconds;
  }

  bool get isGameOver {
    return status == GameStatus.success || status == GameStatus.failure;
  }

  GameState copyWith({
    String? id,
    int? turn,
    GameParams? params,
    GameStatus? status,
    Minefield? minefield,
    List<Area>? areas,
    Vector2? screenSize,
    Vector2? cameraPosition,
    Action? selectedAction,
    GameSettings? settings,
    FirstOpen? firstOpen,
    Difficulty? difficulty,
    int? startDate,
    int? duration,
    bool? loading,
    int? lastHintUsed,
    int? hintCount,
    bool? isPreview,
  }) {
    return GameState(
      id: id ?? this.id,
      turn: turn ?? this.turn,
      status: status ?? this.status,
      params: params ?? this.params,
      minefield: minefield ?? this.minefield,
      areas: areas ?? this.areas,
      screenSize: screenSize ?? this.screenSize,
      cameraPosition: cameraPosition ?? this.cameraPosition,
      selectedAction: selectedAction ?? this.selectedAction,
      settings: settings ?? this.settings,
      firstOpen: firstOpen ?? this.firstOpen,
      difficulty: difficulty ?? this.difficulty,
      startDate: startDate ?? this.startDate,
      duration: duration ?? this.duration,
      loading: loading ?? this.loading,
      lastHintUsed: lastHintUsed ?? this.lastHintUsed,
      hintCount: hintCount ?? this.hintCount,
      isPreview: isPreview ?? this.isPreview,
    );
  }

  @override
  List<Object?> get props => [
        id,
        turn,
        params,
        status,
        minefield,
        startDate,
        duration,
        areas,
        screenSize,
        cameraPosition,
        selectedAction,
        settings,
        firstOpen,
        difficulty,
        loading,
        lastHintUsed,
        hintCount,
        isPreview,
      ];
}
