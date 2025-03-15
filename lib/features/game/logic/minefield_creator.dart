import 'package:flame/components.dart';

import '../../../common/models/area.dart';
import '../../../common/models/form.dart';
import '../../../common/models/minefield.dart';
import '../../../common/models/neighbours.dart';

/// A class that creates a minefield.
abstract class MinefieldCreator {
  /// Creates a minefield.
  Future<List<Area>> create(
    Minefield minefield,
    int x,
    int y,
    bool useForms,
  );

  /// Creates a empty minefield.
  Future<List<Area>> createEmpty(
    Minefield minefield,
    bool useForms,
  ) async {
    return List.generate(
      minefield.height,
      (y) {
        return List.generate(minefield.width, (x) {
          final neighbours = getNeighbours(
            x,
            y,
            minefield.width,
            minefield.height,
          );
          return Area(
            id: (x + y * minefield.width),
            x: x,
            y: y,
            covered: true,
            hasMine: false,
            minesAround: 0,
            neighbours: neighbours,
            neighboursList: neighbours.list,
            form: useForms
                ? Form.getFormByPosition(
                    x,
                    y,
                    minefield.width,
                    minefield.height,
                  )
                : null,
          );
        });
      },
    ).expand((e) => e).toList();
  }

  /// Creates a empty minefield.
  List<Area> fromList(
    Minefield minefield,
    bool useForms,
    List<Area> areas,
  ) {
    for (final area in areas) {
      final neighbours = getNeighbours(
        area.x,
        area.y,
        minefield.width,
        minefield.height,
      );
      areas[area.id] = area.copyWith(
        neighbours: neighbours,
        neighboursList: neighbours.list,
        form: useForms
            ? Form.getFormByPosition(
                area.x,
                area.y,
                minefield.width,
                minefield.height,
              )
            : null,
      );
    }
    return areas;
  }

  /// Fill the mineAround property of each area.
  void countMinesAround(List<Area> map, Minefield minefield) {
    final mines = map.where((e) => e.hasMine);
    for (final mine in mines) {
      for (final neighbour in mine.neighboursList) {
        final area = map[neighbour];
        if (!area.hasMine) {
          map[area.id] = area.copyWith(minesAround: area.minesAround + 1);
        }
      }
    }
  }

  Neighbours getNeighbours(
    int x,
    int y,
    int width,
    int height,
  ) {
    return Neighbours(
      topId: _getNeighbourId(x, y, width, height, 0, -1),
      topLeftId: _getNeighbourId(x, y, width, height, -1, -1),
      topRightId: _getNeighbourId(x, y, width, height, 1, -1),
      bottomId: _getNeighbourId(x, y, width, height, 0, 1),
      bottomLeftId: _getNeighbourId(x, y, width, height, -1, 1),
      bottomRightId: _getNeighbourId(x, y, width, height, 1, 1),
      leftId: _getNeighbourId(x, y, width, height, -1, 0),
      rightId: _getNeighbourId(x, y, width, height, 1, 0),
    );
  }

  int _getNeighbourId(
    int x,
    int y,
    int width,
    int height,
    int offsetX,
    int offsetY,
  ) {
    final neighbourX = x + offsetX;
    final neighbourY = y + offsetY;
    if (neighbourX >= 0 &&
        neighbourX < width &&
        neighbourY >= 0 &&
        neighbourY < height) {
      return neighbourX + neighbourY * width;
    }
    return Neighbours.noLink;
  }

  /// Calculates the neighbours of a given area.
  List<int> calcNeighbours(
    int x,
    int y,
    int width,
    int height,
  ) {
    return <Vector2>[
      Vector2(x - 1, y - 1),
      Vector2(x - 1, y + 0),
      Vector2(x - 1, y + 1),
      Vector2(x + 0, y - 1),
      Vector2(x + 0, y + 1),
      Vector2(x + 1, y - 1),
      Vector2(x + 1, y + 0),
      Vector2(x + 1, y + 1),
    ]
        .where((e) => e.x >= 0 && e.x < width && e.y >= 0 && e.y < height)
        .map((e) => (e.x + e.y * width).toInt())
        .toList();
  }
}
