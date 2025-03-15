import 'dart:typed_data';

class FileByteWriter {
  final List<int> stream = [];

  Uint8List get bytes => Uint8List.fromList(stream);

  void clear() {
    stream.clear();
  }

  void writeByte(int value) {
    stream.add(value);
  }

  void writeShort(int value) {
    stream.addAll(_shortToBytes(value));
  }

  void writeInt(int value) {
    stream.addAll(_intToBytes(value));
  }

  void writeLong(int value) {
    stream.addAll(_longToBytes(value));
  }

  void writeBool(bool value) {
    stream.addAll(_boolToBytes(value));
  }

  Iterable<int> _intToBytes(int value) {
    return <int>[
      (value >> 24) & _fullByte,
      (value >> 16) & _fullByte,
      (value >> 8) & _fullByte,
      (value >> 0) & _fullByte,
    ];
  }

  Iterable<int> _shortToBytes(int value) {
    return <int>[
      (value >> 8) & _fullByte,
      (value >> 0) & _fullByte,
    ];
  }

  Iterable<int> _longToBytes(int value) {
    return <int>[
      (value >> 56) & _fullByte,
      (value >> 48) & _fullByte,
      (value >> 40) & _fullByte,
      (value >> 32) & _fullByte,
      (value >> 24) & _fullByte,
      (value >> 16) & _fullByte,
      (value >> 8) & _fullByte,
      (value >> 0) & _fullByte,
    ];
  }

  Iterable<int> _boolToBytes(bool value) {
    return _intToBytes(value ? 1 : 0);
  }

  static const _fullByte = 0xff;
}
