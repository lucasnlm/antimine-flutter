import 'package:antimine/features/game/logic/random_minefield_creator.dart';
import 'package:antimine/common/models/minefield.dart';
import 'package:antimine/features/game/logic/randomness_manager.dart';
import 'package:flutter_test/flutter_test.dart';

import '../common_matchers.dart';

void main() {
  final creator = RandomMinefieldCreator(
    randomnessManager: RandomnessManager(originalSeed: 0),
  );

  group('random minefield creator', () {
    testWidgets('creates valid map', (tester) async {
      const minefield = Minefield(seed: 100, width: 10, height: 10, mines: 9);

      final actual = await creator.create(minefield, 4, 4, true);

      final mines = actual.map((e) => e.hasMine ? 1 : 0).join('');

      expect(
        mines,
        [
          '0000000000',
          '0000101000',
          '0010000000',
          '0000000000',
          '0100000000',
          '0000000100',
          '0000000000',
          '0000000000',
          '0000000001',
          '0100110000',
        ].join(''),
      );
    });

    testWidgets('counts mines around', (tester) async {
      const minefield = Minefield(seed: 100, width: 10, height: 10, mines: 9);

      final actual = await creator.create(minefield, 4, 4, true);

      final mines = actual.map((e) => e.hasMine ? 'x' : e.minesAround).join('');

      expect(
        mines,
        [
          'x20001x100',
          'x201121100',
          '1101x10111',
          '00011212x1',
          '000001x211',
          '0000012321',
          '0000001xx1',
          '0111001221',
          '01x1000000',
          '0111000000',
        ].join(''),
      );
    });

    testWidgets('create with given mines amount', (tester) async {
      const minefield = Minefield(seed: 100, width: 10, height: 10, mines: 11);

      final actual = await creator.create(minefield, 4, 4, true);

      final mines = actual.where(hasMine);

      expect(mines.length, 11);
    });

    testWidgets('all areas are initially covered', (tester) async {
      const minefield = Minefield(seed: 100, width: 10, height: 10, mines: 11);

      final actual = await creator.create(minefield, 4, 4, true);

      final covered = actual.where(isCovered);

      expect(covered.length, minefield.size);
    });

    testWidgets('all areas have unique ids', (tester) async {
      const minefield = Minefield(seed: 100, width: 10, height: 10, mines: 11);

      final actual = await creator.create(minefield, 4, 4, true);

      final ids = actual.map((e) => e.id).toSet();

      expect(ids.length, minefield.size);
    });

    testWidgets('x and y positions', (tester) async {
      const minefield = Minefield(seed: 100, width: 10, height: 10, mines: 11);

      final actual = await creator.create(minefield, 4, 4, true);
      final areas = actual.toList();
      var index = 0;
      for (var element in areas) {
        final expectedX = index % minefield.width;
        final expectedY = index ~/ minefield.width;

        expect(element.x, expectedX);
        expect(element.y, expectedY);
        index++;
      }
    });

    testWidgets('when more mines then allowed', (tester) async {
      const minefield = Minefield(seed: 100, width: 10, height: 10, mines: 999);

      final actual = await creator.create(minefield, 4, 4, true);

      final mines = actual.map((e) => e.hasMine ? 1 : 0).join('');

      expect(
        mines,
        [
          '1111111111',
          '1111111111',
          '1111111111',
          '1110001111',
          '1110001111',
          '1110001111',
          '1111111111',
          '1111111111',
          '1111111111',
          '1111111111',
        ].join(''),
      );
    });

    testWidgets('invalid size, too small', (tester) async {
      const minefield = Minefield(seed: 100, width: 3, height: 3, mines: 9);

      expect(() async {
        await creator.create(minefield, 4, 4, true);
      }, throwsA(isA<Exception>()));
    });

    testWidgets('invalid size, too wide', (tester) async {
      const minefield = Minefield(seed: 100, width: 300, height: 300, mines: 9);

      expect(() async {
        await creator.create(minefield, 4, 4, true);
      }, throwsA(isA<Exception>()));
    });

    testWidgets('cant create without mines', (tester) async {
      const minefield = Minefield(seed: 100, width: 3, height: 3, mines: 0);

      expect(() async {
        await creator.create(minefield, 4, 4, true);
      }, throwsA(isA<Exception>()));
    });

    testWidgets('cant create with invalid starting point', (tester) async {
      const minefield = Minefield(seed: 100, width: 3, height: 3, mines: 0);

      expect(() async {
        await creator.create(minefield, -4, 400, true);
      }, throwsA(isA<Exception>()));
    });

    testWidgets('different seeds will create different maps', (tester) async {
      const minefieldA = Minefield(seed: 100, width: 10, height: 10, mines: 9);

      const minefieldB = Minefield(seed: 101, width: 10, height: 10, mines: 9);

      final mapA = await creator.create(minefieldA, 4, 4, true);
      final minesA = mapA.map((e) => e.hasMine ? 1 : 0).join();
      final mapB = await creator.create(minefieldB, 4, 4, true);
      final minesB = mapB.map((e) => e.hasMine ? 1 : 0).join();
      expect(minesA != minesB, isTrue);
    });

    testWidgets('same seeds will create same maps', (tester) async {
      const minefieldA = Minefield(seed: 100, width: 10, height: 10, mines: 9);

      const minefieldB = Minefield(seed: 100, width: 10, height: 10, mines: 9);

      final creatorA = RandomMinefieldCreator(
        randomnessManager: RandomnessManager(originalSeed: 0),
      );
      final mapA = await creatorA.create(minefieldA, 4, 4, true);
      final minesA = mapA.map((e) => e.hasMine ? 1 : 0).join();

      final creatorB = RandomMinefieldCreator(
        randomnessManager: RandomnessManager(originalSeed: 0),
      );
      final mapB = await creatorB.create(minefieldB, 4, 4, true);
      final minesB = mapB.toList().map((e) => e.hasMine ? 1 : 0).join();
      expect(minesA == minesB, isTrue);
    });
  });
}
