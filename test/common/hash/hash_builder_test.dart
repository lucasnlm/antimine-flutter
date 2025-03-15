import 'package:antimine/common/hash/hash_builder.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('hash builder - initial value is zero', () {
    // Given
    final hashBuilder = HashBuilder();

    // When
    final value = hashBuilder.value;

    // Then
    expect(value, 0);
  });

  test('hash builder - push values', () {
    // Given
    final hashBuilder = HashBuilder();

    // When
    hashBuilder.writeByte(0x12);
    hashBuilder.writeShort(0x3456);

    // Then
    expect(hashBuilder.value, 0x345612);
  });

  test('hash builder - passing other initial value', () {
    // Given
    final hashBuilder = HashBuilder(value: 0x123456);

    // When
    final value = hashBuilder.value;

    // Then
    expect(value, 0x123456);
  });

  test('hash builder - reading position by byte', () {
    // Given
    final hashBuilder = HashBuilder(value: 0x123456);

    // When
    final value = hashBuilder.readByteAt(1);

    // Then
    expect(value, 0x34);
  });

  test('hash builder - reading position by short', () {
    // Given
    final hashBuilder = HashBuilder(value: 0x123456);

    // When
    final value = hashBuilder.readShortAt(1);

    // Then
    expect(value, 4660);
  });
}
