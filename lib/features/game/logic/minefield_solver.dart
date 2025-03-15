import '../../../common/models/area.dart';
import '../../../common/models/mark.dart';
import '../../../common/models/minefield.dart';
import '../bloc/game_state.dart';

class MinefieldSolver {
  List<Area> _areas = [];
  Minefield _minefield = Minefield.empty;

  void consume(GameState state) {
    _areas = state.areas;
    _minefield = state.minefield;
  }

  bool runStep() {
    var hasChanged = false;

    // Flag Revealed
    for (final area in _areas) {
      if (area.revealed) {
        _areas[area.id] = _areas[area.id].copyWith(
          mark: Mark.flag,
        );
      }
    }

    // Check isolated areas
    for (final area in _areas) {
      if (!area.covered && area.minesAround > 0) {
        final coveredAround = _coveredAround(area);
        if (coveredAround == area.minesAround) {
          _flagAllAround(area);
          hasChanged = true;
        }
      }
    }

    // Open isolated areas
    for (final area in _areas) {
      if (!area.covered && area.minesAround > 0) {
        final flaggedAround = _flaggedAround(area);
        if (flaggedAround == area.minesAround) {
          _openSafeNeighbors(area);
          hasChanged = true;
        }
      }
      if (!area.covered && area.minesAround == 0) {
        _openSafeNeighbors(area);
        hasChanged = true;
      }
    }

    int remainingMines = _minefield.mines - _sumRemainingMines();
    if (remainingMines == 0) {
      _openAllEmptyAreas();
    }

    return hasChanged;
  }

  int _sumRemainingMines() {
    return _areas.where((e) => e.hasMine && e.mark.isFlag).length;
  }

  int _coveredAround(Area area) {
    return area.neighboursList
        .map((e) => _areas[e])
        .where((e) => e.covered)
        .length;
  }

  int _flaggedAround(Area area) {
    return area.neighboursList
        .map((e) => _areas[e])
        .where((e) => e.covered && e.mark.isFlag)
        .length;
  }

  void _openAllEmptyAreas() {
    for (final area in _areas) {
      if (!area.covered && area.minesAround == 0 && !area.hasMine) {
        _openSafeNeighbors(area);
      }
    }
  }

  void _openSafeNeighbors(Area area) {
    for (var e in area.neighboursList) {
      final neighbour = _areas[e];
      if (neighbour.covered && !neighbour.mark.isFlag) {
        _areas[e] = _areas[e].copyWith(
          covered: false,
        );
      }
    }
  }

  void _flagAllAround(Area area) {
    for (var e in area.neighboursList) {
      final neighbour = _areas[e];
      if (neighbour.covered) {
        _areas[e] = _areas[e].copyWith(
          mark: Mark.flag,
        );
      }
    }
  }

  List<Area> result() {
    return _areas;
  }
}
