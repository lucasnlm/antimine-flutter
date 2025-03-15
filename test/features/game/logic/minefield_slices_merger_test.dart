import 'package:antimine/common/models/minefield.dart';
import 'package:antimine/features/game/logic/minefield_slices_merger.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const sliceA = '101011110000';
  const sliceB = '111110100011';
  const sliceC = '000011110000';
  const expected = '101011110000111110101111000000110000';

  final input = [sliceA, sliceB, sliceC].join(',');
  const minefield = Minefield(
    width: 4,
    height: 3,
    mines: 5,
    seed: 0,
  );

  test('should combine slices', () {
    final result = MinefieldSlicesMerger().merge(
      source: input,
      minefield: minefield,
      sliceWidth: 4,
    );
    expect(result, expected);
  });
}
