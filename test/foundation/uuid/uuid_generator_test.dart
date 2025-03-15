import 'package:antimine/foundation/uuid/uuid_generator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

void main() {
  test('uuid generator must generate a valid uuid', () {
    // Given
    final uuidGenerator = UuidGenerator();

    // When
    final uuid = uuidGenerator.generate();

    // Then
    expect(uuid, isNotNull);
    expect(uuid, isNotEmpty);
    expect(uuid.length, 36);
    expect(Uuid.isValidUUID(fromString: uuid), isTrue);
  });

  test('generator must generate different uuids', () {
    // Given
    final uuidGenerator = UuidGenerator();

    // When
    final uuid1 = uuidGenerator.generate();
    final uuid2 = uuidGenerator.generate();

    // Then
    expect(uuid1, isNot(uuid2));
  });
}
