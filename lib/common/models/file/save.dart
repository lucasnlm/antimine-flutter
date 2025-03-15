import 'package:equatable/equatable.dart';

import '../area.dart';
import '../difficulty.dart';
import '../first_open.dart';
import '../game_status.dart';
import '../minefield.dart';

class SaveGame extends Equatable {
  const SaveGame({
    this.id,
    required this.seed,
    required this.startDate,
    required this.duration,
    required this.minefield,
    required this.difficulty,
    required this.firstOpen,
    required this.status,
    required this.areas,
    required this.turns,
  });

  final String? id;
  final int seed;
  final int startDate;
  final int duration;
  final Minefield minefield;
  final Difficulty difficulty;
  final FirstOpen firstOpen;
  final GameStatus status;
  final List<Area> areas;
  final int turns;

  SaveGame withId(String? id) {
    return SaveGame(
      id: id,
      seed: seed,
      startDate: startDate,
      duration: duration,
      minefield: minefield,
      difficulty: difficulty,
      firstOpen: firstOpen,
      status: status,
      areas: areas,
      turns: turns,
    );
  }

  SaveGame copyWith({
    String? id,
    int? seed,
    int? startDate,
    int? duration,
    Minefield? minefield,
    Difficulty? difficulty,
    FirstOpen? firstOpen,
    GameStatus? status,
    List<Area>? areas,
    int? turns,
  }) {
    return SaveGame(
      id: id ?? this.id,
      seed: seed ?? this.seed,
      startDate: startDate ?? this.startDate,
      duration: duration ?? this.duration,
      minefield: minefield ?? this.minefield,
      difficulty: difficulty ?? this.difficulty,
      firstOpen: firstOpen ?? this.firstOpen,
      status: status ?? this.status,
      areas: areas ?? this.areas,
      turns: turns ?? this.turns,
    );
  }

  @override
  List<Object?> get props => [
        id,
        seed,
        startDate,
        duration,
        minefield,
        difficulty,
        firstOpen,
        status,
        areas,
        turns,
      ];
}
