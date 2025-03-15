import 'package:equatable/equatable.dart';
import 'package:flame/game.dart';

class Minefield extends Equatable {
  final int seed;
  final int width;
  final int height;
  final int mines;

  const Minefield({
    required this.seed,
    required this.width,
    required this.height,
    required this.mines,
  });

  int get size => width * height;

  int get emptyAreas => size - mines;

  bool get isEmpty => size == 0;

  Vector2 get vecSize => Vector2(width.toDouble(), height.toDouble());

  String get beutifyString {
    return '$width × $height - $mines mines';
  }

  bool contains(double x, double y) {
    return x >= 0 && x < width && y >= 0 && y < height;
  }

  Minefield copyWith({int? seed, int? width, int? height, int? mines}) {
    return Minefield(
      seed: seed ?? this.seed,
      width: width ?? this.width,
      height: height ?? this.height,
      mines: mines ?? this.mines,
    );
  }

  @override
  List<Object?> get props => [seed, width, height, mines];

  @override
  bool get stringify => true;

  static const empty = Minefield(seed: 0, width: 0, height: 0, mines: 0);
}
