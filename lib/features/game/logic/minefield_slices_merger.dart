import '../../../common/models/minefield.dart';

class MinefieldSlicesMerger {
  String merge({
    required String source,
    required Minefield minefield,
    required int sliceWidth,
  }) {
    final slices = source.split(sliceCode);
    final height = minefield.height;
    var line = 0;
    var result = "";
    while (line < height) {
      for (var slice in slices) {
        final start = line * sliceWidth;
        final end = start + sliceWidth;
        result += slice.substring(start, end);
      }
      line++;
    }
    return result;
  }

  static const sliceCode = ',';
}
