import 'package:antimine/common/settings/settings_manager.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/mocks/test_settings_repository.dart';

void main() {
  final settingsRepository = TestSettingsRepository();
  final settingsManager = SettingsManager(
    repository: settingsRepository,
  );

  test('init', () async {
    // When
    await settingsManager.init();

    // Then
    expect(settingsRepository.isInitialized, isTrue);
  });
}
