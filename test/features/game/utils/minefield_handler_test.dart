import 'package:antimine/common/models/game_settings.dart';
import 'package:antimine/features/game/bloc/game_state.dart';
import 'package:antimine/features/game/logic/minefield_creator.dart';
import 'package:antimine/features/game/logic/minefield_handler.dart';
import 'package:antimine/features/game/logic/random_minefield_creator.dart';
import 'package:antimine/common/models/area.dart';
import 'package:antimine/common/models/minefield.dart';
import 'package:antimine/features/game/logic/randomness_manager.dart';
import 'package:antimine/features/game/screen/game_params.dart';
import 'package:flame/components.dart';
import 'package:flutter_test/flutter_test.dart';

import '../common_matchers.dart';

void main() {
  final randomnessManager = RandomnessManager(
    originalSeed: 0,
  );
  final MinefieldCreator creator = RandomMinefieldCreator(
    randomnessManager: randomnessManager,
  );
  final MinefieldHandler handler = MinefieldHandler(
    minefieldCreator: creator,
    randomMinefieldCreator: creator,
    randomnessManager: randomnessManager,
  );

  const minefield = Minefield(
    seed: 100,
    width: 10,
    height: 10,
    mines: 9,
  );

  test('create empty', () async {
    // When
    await handler.createEmpty(minefield, true);

    // Then
    expect(
      handler.result().length,
      equals(100),
    );
    expect(
      handler.result().any((e) => e.hasMine),
      isFalse,
    );
  });

  test('test consume', () {
    // When
    handler.consume(
      GameState(
        areas: List.generate(
          10,
          (index) => Area(id: index, x: 0, y: 0),
        ),
        minefield: minefield,
        settings: GameSettings.initial,
        params: const GameParams(),
      ),
    );

    // Then
    expect(
      handler.result().length,
      equals(10),
    );
  });

  test('test plantMines', () async {
    // Given
    await handler.createEmpty(minefield, true);

    // When
    await handler.plantMinesFor(Vector2(3, 3), true, true);

    // Then
    expect(
      handler.result().length,
      equals(100),
    );
    expect(
      handler.result().where(hasMine).length,
      equals(9),
    );
  });

  test('test hasMines true', () {
    // Given
    handler.consume(
      GameState(
        settings: GameSettings.initial,
        areas: List.generate(
          10,
          (index) => Area(
            id: index,
            x: 0,
            y: 0,
            hasMine: index == 5,
          ),
        ),
        minefield: minefield,
        params: const GameParams(),
      ),
    );

    // When
    final actual = handler.hasMines();

    // Then
    expect(actual, isTrue);
  });

  test('test hasMines false', () {
    // Given
    handler.consume(
      GameState(
        settings: GameSettings.initial,
        areas: List.generate(
          10,
          (index) => Area(
            id: index,
            x: 0,
            y: 0,
          ),
        ),
        minefield: minefield,
        params: const GameParams(),
      ),
    );

    // When
    final actual = handler.hasMines();

    // Then
    expect(actual, isFalse);
  });

  test('test openArea', () async {
    // Given
    await handler.createEmpty(minefield, true);

    // When
    await handler.plantMinesFor(Vector2(3, 3), true, true);
    expect(
      handler.result()[55].covered,
      isTrue,
    );

    handler.openByPosition(
      Vector2(5, 5),
      openNeighbors: false,
    );

    // Then
    expect(
      handler.result()[55].covered,
      isFalse,
    );
  });

  test('test openArea and neighbors', () async {
    // Given
    await handler.createEmpty(minefield, true);

    // When
    await handler.plantMinesFor(Vector2(3, 3), true, true);
    expect(
      handler.result().where(isCovered).length,
      100,
    );

    handler.openByPosition(
      Vector2(3, 3),
    );

    // Then
    expect(
      handler.result().where(isCovered).length,
      31,
    );
  });

  test('openById and neighbors', () async {
    // Given
    await handler.createEmpty(minefield, true);

    // When
    await handler.plantMinesFor(Vector2(3, 3), true, true);
    expect(
      handler.result().where(isCovered).length,
      100,
    );

    handler.openById(
      33,
    );

    // Then
    expect(
      handler.result().where(isCovered).length,
      22,
    );
  });

  test('test forms update', () async {
    // Given
    await handler.createEmpty(minefield, true);
    expect(
      handler.result().where(hasNoForm).length,
      0,
    );

    // When
    await handler.plantMinesFor(Vector2(3, 3), true, true);
    expect(
      handler.result().where(hasForm).length,
      100,
    );

    handler.openByPosition(
      Vector2(3, 3),
    );
    handler.refreshForms();

    // Then
    expect(
      handler.result().where(hasForm).length,
      100,
    );
  });
}
