class HashBuilder {
  HashBuilder({int value = 0, int bitsWritten = 0})
    : _value = value,
      _bitsWritten = bitsWritten;

  int _value;
  int _bitsWritten;

  int get value => _value;

  void writeByte(int value) {
    int maskedValue = value & 0xFF;
    _value |= maskedValue << _bitsWritten;
    _bitsWritten += 8;
  }

  void writeShort(int value) {
    int maskedValue = value & 0xFFFF;
    _value |= maskedValue << _bitsWritten;
    _bitsWritten += 16;
  }

  int readByteAt(int position) {
    return (_value >> position * 8) & 0xFF;
  }

  int readShortAt(int position) {
    return (_value >> position * 8) & 0xFFFF;
  }
}
