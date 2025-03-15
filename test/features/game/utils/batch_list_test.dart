import 'package:antimine/common/models/minefield.dart';
import 'package:antimine/features/game/logic/batch_list.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final batchList = BatchList(
    areaSize: 10,
    minefield: const Minefield(width: 10, height: 10, mines: 10, seed: 0),
  );

  test('x and y initial value', () {
    expect(batchList.position, equals(Vector2.zero()));
  });

  test('set x and y', () {
    // When
    batchList
      ..x = 1
      ..y = 2;

    // Then
    expect(batchList.position, equals(Vector2(1, 2)));
  });

  test('initial color is white', () {
    expect(batchList.color, Colors.white);
  });

  test('add items to batch', () {
    // When
    batchList
      ..x = 1
      ..y = 2
      ..color = Colors.red
      ..add(const Rect.fromLTRB(1, 2, 3, 4));

    batchList
      ..x = 5
      ..y = 6
      ..color = Colors.blue
      ..add(const Rect.fromLTRB(6, 5, 2, 6));

    // Then
    expect(batchList.colors, equals([Colors.red, Colors.blue]));

    expect(
      batchList.transforms.map((e) => [e.scos, e.ssin, e.tx, e.ty]),
      equals([
        [0.041015625, 0.0, -40.25, -30.25],
        [0.041015625, 0.0, -0.25, 9.75],
      ]),
    );

    expect(
      batchList.rects,
      equals([
        const Rect.fromLTRB(1, 2, 3, 4),
        const Rect.fromLTRB(6, 5, 2, 6),
      ]),
    );
  });
}
