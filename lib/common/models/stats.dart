import 'package:equatable/equatable.dart';

import 'difficulty.dart';

class Stats extends Equatable {
  const Stats({
    required this.duration,
    required this.mines,
    required this.victory,
    required this.width,
    required this.height,
    required this.openArea,
    required this.difficulty,
  });

  final int duration;
  final int mines;
  final int victory;
  final int width;
  final int height;
  final int openArea;
  final Difficulty difficulty;

  @override
  List<Object?> get props => [
        duration,
        mines,
        victory,
        width,
        height,
        openArea,
        difficulty,
      ];
}
