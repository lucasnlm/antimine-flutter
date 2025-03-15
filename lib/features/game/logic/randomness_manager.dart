import 'dart:math';

class RandomnessManager {
  RandomnessManager({required this.originalSeed});

  final int originalSeed;
  late final _random = Random(originalSeed);

  /// Return a random seed number to be used in the game.
  int seed() {
    return _random.nextInt(maxInt);
  }

  /// Return a random integer number between 0 and [max].
  int nextInt(int max) {
    return _random.nextInt(max);
  }

  /// Maximum integer value. 16 bits max.
  static const maxInt = 65535;
}
