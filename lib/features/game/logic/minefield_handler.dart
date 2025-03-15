import 'package:antimine/features/game/logic/area_ext.dart';
import 'package:flame/components.dart';

import '../../../common/models/area.dart';
import '../../../common/models/first_open.dart';
import '../../../common/models/form.dart';
import '../../../common/models/game_status.dart';
import '../../../common/models/mark.dart';
import '../../../common/models/minefield.dart';
import '../../../common/models/neighbours.dart';
import '../bloc/game_state.dart';
import 'minefield_creator.dart';
import 'randomness_manager.dart';

class MinefieldHandler {
  final MinefieldCreator minefieldCreator;
  final MinefieldCreator randomMinefieldCreator;
  final RandomnessManager randomnessManager;

  MinefieldHandler({
    required this.randomnessManager,
    required this.minefieldCreator,
    required this.randomMinefieldCreator,
  });

  List<Area> _areas = [];
  Minefield _minefield = Minefield.empty;

  void consume(GameState state) {
    _areas = List.from(state.areas);
    _minefield = state.minefield;
  }

  List<Area> result() {
    return _areas;
  }

  bool hasMines() {
    return _areas.any((area) => area.hasMine);
  }

  Future<void> createEmpty(
    Minefield minefield,
    bool useForms,
  ) async {
    _minefield = minefield;
    _areas = await minefieldCreator.createEmpty(_minefield, useForms);
  }

  void loadFromList(
    Minefield minefield,
    bool useForms,
    List<Area> areas,
  ) {
    _minefield = minefield;
    _areas = minefieldCreator.fromList(_minefield, useForms, areas);
    refreshForms();
  }

  Future<void> plantMinesFor(
    Vector2 initialPosition,
    bool useForms,
    bool noGuessingMode,
  ) async {
    if (!hasMines()) {
      final initX = initialPosition.x.toInt();
      final initY = initialPosition.y.toInt();

      if (noGuessingMode) {
        _areas = await minefieldCreator.create(
          _minefield,
          initX,
          initY,
          useForms,
        );
      } else {
        _areas = await randomMinefieldCreator.create(
          _minefield,
          initX,
          initY,
          useForms,
        );
      }
    }
  }

  int indexOf(
    Vector2 position,
  ) {
    final x = position.x.toInt();
    final y = position.y.toInt();
    return _areas.indexFor(_minefield, x, y);
  }

  FirstOpen firstOpenFor(
    Vector2? position,
  ) {
    if (position != null) {
      final x = position.x.toInt();
      final y = position.y.toInt();
      final id = _areas.indexFor(_minefield, x, y);
      return FirstOpen(initialId: id);
    } else {
      return FirstOpen.unknown;
    }
  }

  bool openByPosition(
    Vector2 position, {
    bool openNeighbors = true,
  }) {
    final x = position.x.toInt();
    final y = position.y.toInt();
    final id = _areas.indexFor(_minefield, x, y);

    return openById(
      id,
      openNeighbors: openNeighbors,
    );
  }

  bool openById(
    int id, {
    bool openNeighbors = true,
  }) {
    final target = _areas[id];
    var result = false;

    if (target.covered) {
      _areas[target.id] = target.copyWith(
        covered: false,
        mark: Mark.none,
        ignoreError: !target.hasMine,
      );

      if (!target.hasMine && target.minesAround == 0 && openNeighbors) {
        for (final neighbour in target.neighboursList) {
          openById(neighbour);
        }
      }

      result = true;
    }

    return result;
  }

  bool switchOrSetMarkByPosition({
    required Vector2 position,
    required Mark mark,
  }) {
    final x = position.x.toInt();
    final y = position.y.toInt();
    final id = _areas.indexFor(_minefield, x, y);
    return switchOrSetMarkById(
      id: id,
      mark: mark,
    );
  }

  bool switchOrSetMarkById({
    required int id,
    required Mark mark,
  }) {
    final target = _areas[id];
    var result = false;

    if (target.covered) {
      if (_areas[id].mark == mark) {
        _areas[target.id] = target.copyWith(
          mark: Mark.forcedNone,
        );
      } else {
        _areas[target.id] = target.copyWith(
          mark: mark,
        );
      }
      result = true;
    }

    return result;
  }

  bool switchMarkByPosition({
    required Vector2 position,
    required bool useQuestionMark,
  }) {
    final x = position.x.toInt();
    final y = position.y.toInt();
    final id = _areas.indexFor(_minefield, x, y);
    return switchMarkById(
      id: id,
      useQuestionMark: useQuestionMark,
    );
  }

  bool switchMarkById({
    required int id,
    required bool useQuestionMark,
  }) {
    final target = _areas[id];
    var result = false;

    if (target.covered) {
      final mark = target.mark;
      final Mark nextMark;

      switch (mark) {
        case Mark.forcedNone:
        case Mark.none:
          nextMark = Mark.flag;
          break;
        case Mark.flag:
          if (useQuestionMark) {
            nextMark = Mark.question;
          } else {
            nextMark = Mark.forcedNone;
          }
          break;
        case Mark.question:
          nextMark = Mark.forcedNone;
          break;
      }

      _areas[target.id] = target.copyWith(
        mark: nextMark,
      );
      result = true;
    }

    return result;
  }

  void undarkNumbers() {
    for (final area in _areas) {
      _areas[area.id] = area.copyWith(
        dimNumber: false,
      );
    }
  }

  void darkFlaggedNeighbors() {
    for (final area in _areas) {
      _areas[area.id] = area.copyWith(
        dimNumber: false,
      );

      if (area.minesAround > 0) {
        final neighboursList = area.neighboursList;
        final neighbours = neighboursList.map((e) => _areas[e]);
        final flaggedAreas = neighbours.where((e) => e.isSolved).length;
        final minesAround = area.minesAround;

        if (flaggedAreas == minesAround) {
          _areas[area.id] = area.copyWith(
            dimNumber: true,
          );
        }
      }
    }
  }

  int numberAt(
    Vector2 position,
  ) {
    final x = position.x.toInt();
    final y = position.y.toInt();
    final id = _areas.indexFor(_minefield, x, y);
    return numberAtById(id);
  }

  int numberAtById(
    int id,
  ) {
    final target = _areas[id];
    return (target.covered || target.hasMine) ? 0 : target.minesAround;
  }

  bool hasMarkAt(
    Vector2 position,
  ) {
    final x = position.x.toInt();
    final y = position.y.toInt();
    final id = _areas.indexFor(_minefield, x, y);
    return hasMarkById(id);
  }

  bool hasMarkById(
    int id,
  ) {
    final target = _areas[id];
    return target.mark.isNotNone;
  }

  bool actionOnNeighbors(
    Vector2 position,
    bool canFlag,
  ) {
    final x = position.x.toInt();
    final y = position.y.toInt();
    final id = _areas.indexFor(_minefield, x, y);
    return actionOnNeighborsById(id, canFlag);
  }

  bool actionOnNeighborsById(
    int id,
    bool canFlag,
  ) {
    final target = _areas[id];
    var result = false;

    if (!target.covered && target.minesAround > 0) {
      final neighboursList = target.neighboursList;
      final neighbours = neighboursList.map((e) => _areas[e]);
      final solvedAreas = neighbours.where((e) => e.isSolved).length;
      final coveredAreas = neighbours
          .where((e) => e.covered || (e.hasMine && !e.covered && e.ignoreError))
          .length;
      final minesAround = target.minesAround;

      if (solvedAreas == minesAround) {
        final areasToOpen = neighbours.where((e) => e.covered && e.mark.isNone);
        for (final area in areasToOpen) {
          final opened = openById(area.id);
          result = result || opened;
        }
      } else if (coveredAreas == minesAround && canFlag) {
        for (final neighbour in neighbours) {
          if (neighbour.covered) {
            _areas[neighbour.id] = neighbour.copyWith(
              mark: Mark.flag,
            );
          }
        }
        result = true;
      }
    }

    return result;
  }

  bool removeMartAt(
    Vector2 position,
  ) {
    final x = position.x.toInt();
    final y = position.y.toInt();
    final id = _areas.indexFor(_minefield, x, y);
    return removeMartById(id);
  }

  bool removeMartById(
    int id,
  ) {
    final target = _areas[id];
    if (_areas[id].mark.isNotNone) {
      _areas[target.id] = target.copyWith(
        mark: Mark.forcedNone,
      );
      return true;
    } else {
      return false;
    }
  }

  void finishGame() {
    for (final area in _areas) {
      if (area.covered) {
        if (area.hasMine) {
          _areas[area.id] = area.copyWith(
            mark: Mark.flag,
          );
        } else {
          _areas[area.id] = area.copyWith(
            covered: false,
            mark: Mark.none,
          );
        }
      }
    }
  }

  GameStatus getGameStatus() {
    if (!hasMines()) {
      return GameStatus.notStarted;
    } else if (checkVictory()) {
      return GameStatus.success;
    } else if (checkDefeat()) {
      return GameStatus.failure;
    } else {
      return GameStatus.inProgress;
    }
  }

  bool checkVictory() {
    final emptyAreas = _minefield.emptyAreas;
    final uncoveredAreas = _areas.where((e) => !e.hasMine && !e.covered).length;
    return emptyAreas == uncoveredAreas;
  }

  bool checkDefeat() {
    return _areas.any((e) => e.hasMine && !e.covered && !e.ignoreError);
  }

  void runAutoFlagging() {
    for (final area in _areas) {
      if (area.hasMine) {
        final isIsland = area.neighboursList
            .map((id) => _areas[id])
            .every((element) => !element.covered);
        if (isIsland) {
          _areas[area.id] = area.copyWith(
            mark: Mark.flag,
          );
        }
      }
    }
  }

  void ignoreErrors() {
    for (final area in _areas) {
      if (area.hasMine && !area.covered) {
        _areas[area.id] = area.copyWith(
          ignoreError: true,
        );
      }
    }
  }

  void revealAllMines() {
    final exploded =
        _areas.where((e) => e.hasMine && !e.ignoreError && !e.covered).first;

    for (final area in _areas) {
      if (area.hasMine && area.covered) {
        _areas[area.id] = area.copyWith(
          covered: false,
          mark: Mark.none,
          revealed: true,
        );
      }
    }

    _areas[exploded.id] = exploded.copyWith(
      ignoreError: false,
    );
  }

  bool revealRandomMine() {
    final mines = _areas.where(
      (e) => e.hasMine && e.covered && e.mark.isNone && !e.revealed,
    );
    final minesAmount = mines.length;

    if (minesAmount == 0) {
      return false;
    }

    final priorityMines = mines.where(
      (e) => e.neighboursList.any(
        (id) => !_areas[id].covered && _areas[id].mark.isNone,
      ),
    );
    final priorityMinesAmount = priorityMines.length;

    late final Area selectedMine;
    if (priorityMinesAmount > 0) {
      selectedMine = priorityMines.elementAt(
        randomnessManager.nextInt(priorityMinesAmount),
      );
    } else {
      selectedMine = mines.elementAt(
        randomnessManager.nextInt(minesAmount),
      );
    }

    _areas[selectedMine.id] = selectedMine.copyWith(
      revealed: true,
    );

    return true;
  }

  void refreshForms() {
    for (final area in _areas) {
      final form = Form(
        top: _checkAreaConnections(
          area,
          _areas,
          area.neighbours.topId,
        ),
        topLeft: _checkAreaConnections(
          area,
          _areas,
          area.neighbours.topLeftId,
        ),
        topRight: _checkAreaConnections(
          area,
          _areas,
          area.neighbours.topRightId,
        ),
        bottom: _checkAreaConnections(
          area,
          _areas,
          area.neighbours.bottomId,
        ),
        bottomLeft: _checkAreaConnections(
          area,
          _areas,
          area.neighbours.bottomLeftId,
        ),
        bottomRight: _checkAreaConnections(
          area,
          _areas,
          area.neighbours.bottomRightId,
        ),
        left: _checkAreaConnections(
          area,
          _areas,
          area.neighbours.leftId,
        ),
        right: _checkAreaConnections(
          area,
          _areas,
          area.neighbours.rightId,
        ),
      );
      _areas[area.id] = area.copyWith(form: form);
    }
  }

  bool _checkAreaConnections(
    Area target,
    List<Area> areas,
    int id,
  ) {
    if (id != Neighbours.noLink) {
      final area = areas[id];
      return target.covered &&
          area.covered &&
          target.mark.mask == area.mark.mask;
    }
    return false;
  }
}
