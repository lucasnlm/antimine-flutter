import 'dart:math';

import 'package:equatable/equatable.dart';

import '../../../common/hash/game_hash.dart';

class CustomState extends Equatable {
  const CustomState({
    required this.width,
    required this.height,
    required this.mines,
    required this.minDimension,
    required this.maxDimension,
    required this.minMines,
    required this.maxMinesProportion,
    this.hashBase = "",
    this.hashSeed = "",
    this.seed,
    this.gameHash,
    this.validHash = false,
    this.fromClipboard = false,
  });

  final int width;
  final int height;
  final int mines;
  final int? seed;

  final int minDimension;
  final int maxDimension;
  final int minMines;
  final double maxMinesProportion;

  final String hashBase;
  final String hashSeed;
  final GameHash? gameHash;
  final bool validHash;
  final bool fromClipboard;

  String get hash => "$hashBase:$hashSeed";

  int get maxMines => max(5, (width * height * maxMinesProportion).floor());

  double currentMinesProportion() {
    return mines / (width * height);
  }

  bool get isValid {
    return width >= minDimension &&
        width <= maxDimension &&
        height >= minDimension &&
        height <= maxDimension &&
        mines >= minMines &&
        mines <= maxMines;
  }

  @override
  List<Object?> get props => [
        width,
        height,
        mines,
        seed,
        minDimension,
        maxDimension,
        minMines,
        maxMinesProportion,
        hashBase,
        hashSeed,
        gameHash,
        validHash,
        fromClipboard,
      ];

  CustomState copyWith({
    int? width,
    int? height,
    int? mines,
    int? seed,
    int? minDimension,
    int? maxDimension,
    int? minMines,
    double? maxMinesProportion,
    String? hashBase,
    String? hashSeed,
    GameHash? gameHash,
    bool? validHash,
    bool? fromClipboard,
  }) {
    return CustomState(
      width: width ?? this.width,
      height: height ?? this.height,
      mines: mines ?? this.mines,
      seed: seed ?? this.seed,
      minDimension: minDimension ?? this.minDimension,
      maxDimension: maxDimension ?? this.maxDimension,
      minMines: minMines ?? this.minMines,
      maxMinesProportion: maxMinesProportion ?? this.maxMinesProportion,
      hashBase: hashBase ?? this.hashBase,
      hashSeed: hashSeed ?? this.hashSeed,
      gameHash: gameHash ?? this.gameHash,
      validHash: validHash ?? this.validHash,
      fromClipboard: fromClipboard ?? this.fromClipboard,
    );
  }
}
