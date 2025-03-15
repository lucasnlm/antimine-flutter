import '../../../common/models/area.dart';
import '../../../common/models/minefield.dart';

extension AreaExt on List<Area> {
  /// Get the index of the area at the given coordinates.
  int indexFor(
    Minefield minefield,
    int x,
    int y,
  ) {
    return x + y * minefield.width;
  }

  /// Get the area at the given coordinates.
  Area areaFor(Minefield minefield, int x, int y) {
    return this[indexFor(minefield, x, y)];
  }
}
