import 'dart:typed_data';

import '../../common/models/difficulty.dart';
import '../../common/models/stats.dart';
import 'file_byte_reader.dart';
import 'file_byte_writer.dart';

class StatsFileSerializer {
  static List<Stats> fromUint8List(Uint8List bytes) {
    List<Stats> result = [];

    try {
      FileByteReader reader = FileByteReader(bytes);
      while (!reader.eof()) {
        final stats = Stats(
          duration: reader.readLong(),
          mines: reader.readInt(),
          victory: reader.readInt(),
          width: reader.readInt(),
          height: reader.readInt(),
          openArea: reader.readInt(),
          difficulty: Difficulty.values.elementAt(reader.readInt()),
        );
        result.add(stats);
      }
    } catch (e) {
      // No op
    }
    return result;
  }

  static Uint8List toUint8List(List<Stats> stats) {
    final writer = FileByteWriter();
    for (var current in stats) {
      writer
        ..writeLong(current.duration)
        ..writeInt(current.mines)
        ..writeInt(current.victory)
        ..writeInt(current.width)
        ..writeInt(current.height)
        ..writeInt(current.openArea)
        ..writeInt(current.difficulty.index);
    }
    return writer.bytes;
  }
}
