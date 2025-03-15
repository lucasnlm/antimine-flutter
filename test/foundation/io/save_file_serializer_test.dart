import 'dart:io';

import 'package:antimine/foundation/io/save_file_serializer.dart';
import 'package:antimine/common/models/area.dart';
import 'package:antimine/common/models/difficulty.dart';
import 'package:antimine/common/models/file/save.dart';
import 'package:antimine/common/models/first_open.dart';
import 'package:antimine/common/models/game_status.dart';
import 'package:antimine/common/models/minefield.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Future<File> save(id) async => File('test/helpers/fixtures/$id.save');

  test('deserialize save completed', () async {
    // Given
    final saveFile = await save('ab7789f0-e396-4227-9a5e-68644f651c6c');
    expect(saveFile, isNotNull);
    final content = saveFile.readAsBytesSync();

    // When
    final result = SaveFileSerializer.fromUint8List(
      'ab7789f0-e396-4227-9a5e-68644f651c6c',
      content,
    );

    // Then
    expect(result, isNotNull);
    expect(result!.id, 'ab7789f0-e396-4227-9a5e-68644f651c6c');
    expect(result.seed, 1703644140162);
    expect(result.startDate, 1703644140162);
    expect(result.duration, 15);
    expect(result.difficulty, Difficulty.beginner);
    expect(result.firstOpen, FirstOpen(initialId: 40));
    expect(result.status, GameStatus.success);
    expect(result.turns, 36);
    expect(result.minefield.width, 9);
    expect(result.minefield.height, 9);
    expect(result.minefield.mines, 10);
    expect(result.minefield.seed, 0);
    expect(result.areas.length, 81);

    expect(
      result.areas.where((e) => e.hasMine && e.mark.isFlag).length,
      10,
    );
    expect(
      result.areas.where((e) => !e.hasMine && !e.covered).length,
      71,
    );
  });

  test('serialize save', () async {
    // Given
    final saveFile = SaveGame(
      id: 'ab7789f0-e396-4227-9a5e-68644f651c6c',
      seed: 1703644140162,
      startDate: 1703644140162,
      duration: 15,
      difficulty: Difficulty.beginner,
      firstOpen: FirstOpen(initialId: 40),
      status: GameStatus.success,
      turns: 36,
      minefield: const Minefield(
        width: 9,
        height: 9,
        mines: 10,
        seed: 0,
      ),
      areas: List.generate(81, (index) {
        return Area(id: index, x: index % 9, y: index ~/ 9);
      }),
    );

    // When
    final result = SaveFileSerializer.toUint8List(saveFile);

    // Then
    expect(result, isNotNull);
    expect(result.length, 3628);
  });

  test('deserialize corrupt save', () async {
    // Given
    final saveFile = await save('corrupt');
    expect(saveFile, isNotNull);
    final content = saveFile.readAsBytesSync();

    // Then
    expect(
      SaveFileSerializer.fromUint8List(
        'corrupt',
        content,
      ),
      isNull,
    );
  });
}
