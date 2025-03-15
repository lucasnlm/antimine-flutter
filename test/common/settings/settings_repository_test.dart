import 'package:antimine/common/settings/settings_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  final mockPrefs = MockSharedPreferences();
  final testRepository = SettingsRepository(
    prefsBuilder: Future.value(mockPrefs),
  );

  setUp(() => testRepository.init());

  test('setInt', () async {
    // Given
    when(() => mockPrefs.setInt('test', 1)).thenAnswer((_) async => true);

    // When
    await testRepository.setInt('test', 1);
  });

  test('getInt', () async {
    // Given
    when(() => mockPrefs.getInt('test')).thenAnswer((_) => 1);

    // When
    await testRepository.getInt('test', 0);
  });

  test('setBool', () async {
    // Given
    when(() => mockPrefs.setBool('test', true)).thenAnswer((_) async => true);

    // When
    await testRepository.setBool('test', true);
  });

  test('getBool', () async {
    // Given
    when(() => mockPrefs.getBool('test')).thenAnswer((_) => true);

    // When
    await testRepository.getBool('test', false);
  });

  test('setString', () async {
    // Given
    when(
      () => mockPrefs.setString('test', 'test'),
    ).thenAnswer((_) async => true);

    // When
    await testRepository.setString('test', 'test');
  });

  test('getString', () async {
    // Given
    when(() => mockPrefs.getString('test')).thenAnswer((_) => 'test');

    // When
    await testRepository.getString('test', 'test');
  });
}
