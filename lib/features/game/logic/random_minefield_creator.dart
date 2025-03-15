import 'package:antimine/features/game/logic/area_ext.dart';

import '../../../common/models/area.dart';
import '../../../common/models/minefield.dart';
import 'game_constants.dart';
import 'minefield_creator.dart';
import 'randomness_manager.dart';

class RandomMinefieldCreator extends MinefieldCreator {
  RandomMinefieldCreator({
    required this.randomnessManager,
  });

  final RandomnessManager randomnessManager;

  @override
  Future<List<Area>> create(
    Minefield minefield,
    int x,
    int y,
    bool useForms,
  ) async {
    const safeAreaSize =
        GameConstants.safeAreaEnabled ? GameConstants.minSafeArea : 0;

    if (minefield.size <= safeAreaSize) {
      throw Exception('Minefield is too small');
    }
    if (minefield.mines == 0) {
      throw Exception('Minefield has no mines');
    }
    if (minefield.width > GameConstants.maxMinefieldWidth ||
        minefield.height > GameConstants.maxMinefieldHeight) {
      throw Exception('Minefield is too wide');
    }
    if (x < 0 || x >= minefield.width || y < 0 || y >= minefield.height) {
      throw Exception('Invalid starting point');
    }

    List<Area> map = await createEmpty(minefield, useForms);

    // Plat mines
    _plantMines(map, minefield, x, y);

    // Count mines around
    countMinesAround(map, minefield);

    return map;
  }

  /// Plant mines in the minefield.
  void _plantMines(
    List<Area> map,
    Minefield minefield,
    int x,
    int y,
  ) async {
    const safeAreaSize = GameConstants.minSafeArea;
    var remainingMines = minefield.mines;
    var remainingAreas = minefield.size - safeAreaSize;

    while (remainingMines > 0 && remainingAreas > 0) {
      final randomX = randomnessManager.nextInt(minefield.width);
      final randomY = randomnessManager.nextInt(minefield.height);
      var area = map.areaFor(minefield, randomX, randomY);
      if (!area.hasMine && ((area.x - x).abs() > 1 || (area.y - y).abs() > 1)) {
        map[area.id] = area.copyWith(hasMine: true);
        remainingMines--;
        remainingAreas--;
      }
    }
  }
}
