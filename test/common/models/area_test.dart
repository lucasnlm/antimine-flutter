import 'package:antimine/common/models/area.dart';
import 'package:antimine/common/models/form.dart';
import 'package:antimine/common/models/mark.dart';
import 'package:antimine/common/models/neighbours.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const first = Area(
    id: 1,
    x: 2,
    y: 3,
    mark: Mark.flag,
    covered: true,
    hasMine: true,
    ignoreError: true,
    minesAround: 4,
    neighboursList: [7, 8, 9, 10],
    neighbours: Neighbours(
      topId: 7,
      rightId: 8,
      bottomId: 9,
      leftId: 10,
    ),
    form: Form(
      top: true,
      right: true,
      bottom: true,
      left: true,
    ),
  );
  const second = Area(
    id: 1,
    x: 2,
    y: 3,
    mark: Mark.flag,
    covered: true,
    hasMine: true,
    ignoreError: true,
    minesAround: 4,
    neighboursList: [7, 8, 9, 10],
    neighbours: Neighbours(
      topId: 7,
      rightId: 8,
      bottomId: 9,
      leftId: 10,
    ),
    form: Form(
      top: true,
      right: true,
      bottom: true,
      left: true,
    ),
  );

  test('test area equatable', () {
    expect(first == second, isTrue);
  });

  test('test area list equatable', () {
    final firstList = <Area>[first, second];
    final secondList = <Area>[first, second];

    expect(listEquals(firstList, secondList), isTrue);
  });

  test('test equal with copyWith', () {
    final shouldBeEqual = first.copyWith(
      mark: Mark.flag,
    );
    final shouldBeDifferent = first.copyWith(
      mark: Mark.question,
    );
    expect(first == shouldBeEqual, isTrue);
    expect(first == shouldBeDifferent, isFalse);
  });

  test('test equal with copyWith and lists', () {
    final shouldBeEqual = first.copyWith(
      mark: Mark.flag,
    );
    final shouldBeDifferent = first.copyWith(
      mark: Mark.question,
    );

    final firstList = <Area>[first];
    final shouldBeEqualList = <Area>[shouldBeEqual];
    final shouldBeDifferentList = <Area>[shouldBeDifferent];

    expect(listEquals(firstList, shouldBeEqualList), isTrue);
    expect(listEquals(firstList, shouldBeDifferentList), isFalse);
  });
}
