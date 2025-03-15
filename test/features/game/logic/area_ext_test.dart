import 'package:antimine/features/game/logic/area_ext.dart';
import 'package:antimine/common/models/area.dart';
import 'package:antimine/common/models/minefield.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const minefield = Minefield(width: 10, height: 10, mines: 10, seed: 10);

  final areaList = List.generate(
    minefield.size,
    (index) => Area(
      id: index,
      x: index % minefield.width,
      y: index ~/ minefield.width,
    ),
  );

  test('test indexFor', () {
    final index = areaList.indexFor(minefield, 3, 3);
    expect(index, 33);
  });

  test('test areaFor', () {
    final area = areaList.areaFor(minefield, 3, 3);
    expect(area.id, 33);
    expect(area.x, 3);
    expect(area.y, 3);
  });
}
