import 'dart:typed_data';

class FileByteReader {
  FileByteReader(this.bytes);

  final Uint8List bytes;
  int _index = 0;

  bool eof() {
    return _index >= bytes.length;
  }

  int readInt() {
    final current = _index;
    _index += _intSize;
    return bytes
        .getRange(
          current,
          current + _intSize,
        )
        .fold<int>(0, _foldBytes);
  }

  bool readBool() {
    return readInt() != 0;
  }

  int readLong() {
    final current = _index;
    _index += _longSize;
    return bytes
        .getRange(
          current,
          current + _longSize,
        )
        .fold<int>(0, _foldBytes);
  }

  int _foldBytes(int previousValue, int element) {
    return (previousValue << 8) + element;
  }

  static const _intSize = 4;
  static const _longSize = 8;
}
