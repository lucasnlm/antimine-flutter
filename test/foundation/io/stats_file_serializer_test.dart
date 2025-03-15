import 'package:antimine/foundation/io/stats_file_serializer.dart';
import 'package:antimine/common/models/difficulty.dart';
import 'package:antimine/common/models/stats.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const stats = Stats(
    duration: 12345678,
    mines: 30,
    victory: 1,
    width: 9,
    height: 9,
    openArea: 200,
    difficulty: Difficulty.legend,
  );

  test('write stats', () {
    final result = StatsFileSerializer.toUint8List([stats, stats]).join();
    expect(
      result,
      '''000001889778000300001000900090002000006000001889778000300001000900090002000006''',
    );
  });

  test('read stats', () {
    // Given
    final uint8List = StatsFileSerializer.toUint8List([stats, stats]);

    // When
    final result = StatsFileSerializer.fromUint8List(uint8List);

    // Then
    expect(result, [stats, stats]);
  });
}
