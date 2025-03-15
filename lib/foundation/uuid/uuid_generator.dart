import 'package:uuid/uuid.dart';

class UuidGenerator {
  /// Generates a new UUID.
  String generate() {
    return const Uuid().v1();
  }
}
