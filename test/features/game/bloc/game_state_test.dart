import 'package:antimine/common/models/game_settings.dart';
import 'package:antimine/features/game/bloc/game_state.dart';
import 'package:antimine/common/models/area.dart';
import 'package:antimine/common/models/mark.dart';
import 'package:antimine/common/models/minefield.dart';
import 'package:antimine/features/game/screen/game_params.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const area1 = Area(
    id: 1,
    x: 2,
    y: 3,
  );
  const minefield = Minefield(
    width: 10,
    height: 10,
    mines: 10,
    seed: 100,
  );
  final gameState = GameState(
    turn: 0,
    minefield: minefield,
    areas: const <Area>[area1, area1, area1],
    settings: GameSettings.initial,
    params: const GameParams(),
  );

  test('compare area test equal', () {
    expect(gameState == gameState, isTrue);
  });

  test('compare area test different by turn', () {
    final different = gameState.copyWith(
      turn: 1,
    );
    expect(gameState == different, isFalse);
  });

  test('compare area test different by area change', () {
    final different = gameState.copyWith(
      areas: gameState.areas
          .map(
            (e) => e.copyWith(mark: Mark.flag),
          )
          .toList(),
    );
    expect(gameState == different, isFalse);
  });
}
