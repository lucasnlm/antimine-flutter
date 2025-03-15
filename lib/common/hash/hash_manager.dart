import '../../features/game/logic/randomness_manager.dart';
import '../models/minefield.dart';
import 'game_hash.dart';
import 'hash_builder.dart';

/// Creates a hash to a game with the following format:
/// W,H,M,Ix,Iy:S
///
/// Where:
///  - W: Width of the minefield, 8 bits
///  - H: Height of the minefield, 8 bits
///  - M: Number of mines in the minefield, 16 bits
///  - S: Seed of the minefield, 16 bits
///  - Ix: Initial X position of the player, 8 bits
///  - Iy: Initial Y position of the player, 8 bits
class HashManager {
  HashManager({
    required this.randomnessManager,
  });

  final RandomnessManager randomnessManager;

  String createHash({
    required Minefield minefield,
    required int initialX,
    required int initialY,
  }) {
    // W,H,M,Ix,Iy:S
    final hashBuilder = HashBuilder();
    hashBuilder.writeByte(minefield.width);
    hashBuilder.writeByte(minefield.height);
    hashBuilder.writeShort(minefield.mines);
    hashBuilder.writeByte(initialX);
    hashBuilder.writeByte(initialY);

    final hashNumber = hashBuilder.value;
    final left = _valueBase36(hashNumber);
    final right = _valueBase36(minefield.seed);
    return '$left:$right';
  }

  GameHash? parseHash(String hash) {
    // W,H,M,Ix,Iy:S
    final parts = hash.split(':');

    if (parts.length != 2) {
      return null;
    }

    final number = _base36ToValue(parts[0]);
    final seed =
        _base36ToValue(parts[1]) ?? randomnessManager.nextInt(_maxSeed);
    if (number == null) {
      return null;
    }

    final hashBuilder = HashBuilder(value: number);

    final width = hashBuilder.readByteAt(0);
    final height = hashBuilder.readByteAt(1);
    final mines = hashBuilder.readShortAt(2);

    if (width < 5 || width > 100 || height < 5 || height > 100) {
      return null;
    }

    if (mines < 1 || mines > (width * height * 0.9).floor()) {
      return null;
    }

    final minefield = Minefield(
      width: width,
      height: height,
      mines: mines,
      seed: seed,
    );
    final initX = hashBuilder.readByteAt(4);
    final initY = hashBuilder.readByteAt(5);
    return GameHash(
      hash: hash,
      minefield: minefield,
      initX: initX,
      initY: initY,
    );
  }

  String _valueBase36(int value) {
    return value.toRadixString(36).toUpperCase();
  }

  int? _base36ToValue(String hex) {
    return int.tryParse(hex, radix: 36);
  }

  static const _maxSeed = 65535;
}
