import 'dart:isolate';

import '../../../common/models/area.dart';
import '../../../common/models/minefield.dart';
import 'game_constants.dart';
import 'minefield_creator.dart';

import 'package:creator/creator.dart' as creator;

import 'minefield_slices_merger.dart';
import 'random_minefield_creator.dart';

class NativeMinefieldCreator extends MinefieldCreator {
  NativeMinefieldCreator({required this.randomMinefieldCreator});

  final RandomMinefieldCreator randomMinefieldCreator;

  @override
  Future<List<Area>> create(
    Minefield minefield,
    int x,
    int y,
    bool useForms,
  ) async {
    if (GameConstants.useNativeCreator) {
      try {
        return _nativeCreate(minefield, x, y, useForms);
      } catch (e) {
        return randomMinefieldCreator.create(minefield, x, y, useForms);
      }
    } else {
      return randomMinefieldCreator.create(minefield, x, y, useForms);
    }
  }

  Future<List<Area>> _nativeCreate(
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

    final sliceWidth = _getSliceWidth(minefield.width);
    var result = await Isolate.run(
      () => creator.createMinefield(
        minefield.seed,
        sliceWidth,
        minefield.width,
        minefield.height,
        minefield.mines,
        x,
        y,
      ),
    );

    if (sliceWidth != noSlice) {
      result = MinefieldSlicesMerger().merge(
        source: result,
        minefield: minefield,
        sliceWidth: sliceWidth,
      );
    }

    List<Area> map = await createEmpty(minefield, useForms);

    // Plat mines
    for (var index = 0; index < result.length; index++) {
      final current = result[index];
      if (current != '0') {
        map[index] = map[index].copyWith(hasMine: true);
      }
    }

    // Count mines around
    countMinesAround(map, minefield);

    return map;
  }

  int _getSliceWidth(int width) {
    if (width <= 50) {
      return noSlice;
    } else {
      return <int, int>{
            20: width % 20,
            25: width % 25,
            22: width % 22,
            24: width % 24,
            width ~/ 4: width % 4,
            width ~/ 3: width % 3,
            width ~/ 2: width % 2,
          }.entries.where((e) => e.value == 0).firstOrNull?.key ??
          noSlice;
    }
  }

  static const noSlice = -1;
}
