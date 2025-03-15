import 'dart:typed_data';

import 'package:antimine/foundation/io/file_byte_reader.dart';
import 'package:antimine/foundation/io/file_byte_writer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const testLong = 2147483646;
  const byteLong = [0, 0, 0, 0, 127, 255, 255, 254];

  const testInt = 1055;
  const byteInt = [0, 0, 4, 31];

  const testBool1 = true;
  const byteBool1 = [0, 0, 0, 1];

  const testBool2 = false;
  const byteBool2 = [0, 0, 0, 0];

  test('write long', () {
    // Given
    final fileByteWriter = FileByteWriter();
    fileByteWriter.writeLong(testLong);

    // When
    final input = fileByteWriter.bytes;

    // Then
    expect(input, byteLong);
  });

  test('read long', () {
    // Given
    final fileByteReader = FileByteReader(Uint8List.fromList(byteLong));

    // When
    final result = fileByteReader.readLong();

    // Then
    expect(result, testLong);
  });

  test('write int', () {
    // Given
    final fileByteWriter = FileByteWriter();
    fileByteWriter.writeInt(testInt);

    // When
    final input = fileByteWriter.bytes;

    // Then
    expect(input, byteInt);
  });

  test('read int', () {
    // Given
    final fileByteReader = FileByteReader(Uint8List.fromList(byteInt));

    // When
    final result = fileByteReader.readInt();

    // Then
    expect(result, testInt);
  });

  test('write bool true', () {
    // Given
    final fileByteWriter = FileByteWriter();
    fileByteWriter.writeBool(testBool1);

    // When
    final input = fileByteWriter.bytes;

    // Then
    expect(input, byteBool1);
  });

  test('write bool false', () {
    // Given
    final fileByteWriter = FileByteWriter();
    fileByteWriter.writeBool(testBool2);

    // When
    final input = fileByteWriter.bytes;

    // Then
    expect(input, byteBool2);
  });

  test('read bool true', () {
    // Given
    final fileByteReader = FileByteReader(Uint8List.fromList(byteBool1));

    // When
    final result = fileByteReader.readBool();

    // Then
    expect(result, testBool1);
  });

  test('read bool false', () {
    // Given
    final fileByteReader = FileByteReader(Uint8List.fromList(byteBool2));

    // When
    final result = fileByteReader.readBool();

    // Then
    expect(result, testBool2);
  });
}
