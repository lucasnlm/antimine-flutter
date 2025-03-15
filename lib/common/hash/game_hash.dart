import 'package:equatable/equatable.dart';

import '../models/minefield.dart';

class GameHash extends Equatable {
  const GameHash({
    required this.hash,
    required this.minefield,
    required this.initX,
    required this.initY,
  });

  final String hash;
  final Minefield minefield;
  final int initX;
  final int initY;

  String get hashBase => hash.split(':')[0];
  String get hashSeed => hash.split(':')[1];

  @override
  List<Object?> get props => [minefield, initX, initY];
}
