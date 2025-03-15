import 'package:antimine/common/hash/hash_manager.dart';
import 'package:antimine/common/models/minefield.dart';
import 'package:antimine/features/game/logic/randomness_manager.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final randomnessManager = RandomnessManager(originalSeed: 0);
  final hashManager = HashManager(
    randomnessManager: randomnessManager,
  );

  test('hashManager create valid hashes', () {
    // Given
    const minefield = Minefield(
      width: 100,
      height: 100,
      mines: 200,
      seed: 20345,
    );
    const initialX = 50;
    const initialY = 75;

    // When
    final hash = hashManager.createHash(
      minefield: minefield,
      initialX: initialX,
      initialY: initialY,
    );

    // Then
    expect(hash, 'TB1T61Q3O:FP5');
  });

  test('hashManager create max hash', () {
    // Given
    const minefield = Minefield(
      width: 255,
      height: 255,
      mines: 65535,
      seed: 65535,
    );

    const initialX = 254;
    const initialY = 254;

    // When
    final hash = hashManager.createHash(
      minefield: minefield,
      initialX: initialX,
      initialY: initialY,
    );

    // Then
    expect(hash, '2RDSQJPU67:1EKF');
  });

  test('hashManager reads a Minefield from a hash', () {
    // Given
    const hash = 'TB1T61Q3O:FP5';

    // When
    final gameHash = hashManager.parseHash(hash);

    // Then
    expect(gameHash, isNotNull);
    expect(gameHash?.minefield.width, 100);
    expect(gameHash?.minefield.height, 100);
    expect(gameHash?.minefield.mines, 200);
    expect(gameHash?.minefield.seed, 20345);
    expect(gameHash?.initX, 50);
    expect(gameHash?.initY, 75);
  });

  test('hashBase and hashSeed', () {
    // Given
    const hash = 'TB1T61Q3O:FP5';

    // When
    final gameHash = hashManager.parseHash(hash);

    // Then
    expect(gameHash?.hashBase, 'TB1T61Q3O');
    expect(gameHash?.hashSeed, 'FP5');
  });
}
