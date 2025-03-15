import 'package:equatable/equatable.dart';
import 'package:flame/game.dart';

import '../../../common/models/difficulty.dart';

class GameParams extends Equatable {
  const GameParams({
    this.difficulty,
    this.seed,
    this.isPreview = false,
    this.initialPosition,
    this.saveId,
    this.restart = false,
  });

  final bool isPreview;
  final Difficulty? difficulty;
  final Vector2? initialPosition;
  final int? seed;
  final String? saveId;
  final bool restart;

  /// Returns true when the game is resumed.
  /// If user tap on New Game it will have a defined difficulty.
  bool get isContinue => difficulty == null;

  @override
  List<Object?> get props => [
    isPreview,
    difficulty,
    initialPosition,
    seed,
    saveId,
    restart,
  ];

  GameParams copyWith({
    bool? isPreview,
    Difficulty? difficulty,
    Vector2? initialPosition,
    int? seed,
    String? saveId,
    bool? restart,
  }) {
    return GameParams(
      isPreview: isPreview ?? this.isPreview,
      difficulty: difficulty ?? this.difficulty,
      initialPosition: initialPosition ?? this.initialPosition,
      seed: seed ?? this.seed,
      saveId: saveId ?? this.saveId,
      restart: restart ?? this.restart,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _isPreviewKey: isPreview,
      _difficultyKey: difficulty?.index,
      _initXKey: initialPosition?.x,
      _initYKey: initialPosition?.y,
      _seedKey: seed,
      _saveIdKey: saveId,
      _restartKey: restart,
    };
  }

  static GameParams fromMap(Object? object) {
    if (object is GameParams) {
      return object;
    } else if (object is Map<String, dynamic>) {
      return GameParams(
        isPreview: object[_isPreviewKey] ?? false,
        restart: object[_restartKey] ?? false,
        difficulty:
            object[_difficultyKey] != null
                ? Difficulty.values[object[_difficultyKey].toInt()]
                : null,
        seed: object[_seedKey],
        saveId: object[_saveIdKey],
        initialPosition:
            object[_initXKey] != null && object[_initYKey] != null
                ? Vector2(
                  object[_initXKey] as double,
                  object[_initYKey] as double,
                )
                : null,
      );
    } else {
      return const GameParams();
    }
  }

  static const _difficultyKey = 'difficulty';
  static const _seedKey = 'seed';
  static const _isPreviewKey = 'isPreview';
  static const _initXKey = 'initX';
  static const _initYKey = 'initY';
  static const _saveIdKey = 'saveId';
  static const _restartKey = 'restart';
}
