import 'package:vibration/vibration.dart';

import '../settings/settings_manager.dart';

class VibratorManager {
  VibratorManager({
    required this.settingsManager,
  });

  final SettingsManager settingsManager;

  void longPressVibration() async {
    _vibrate(70, 240);
  }

  void explosionVibration() async {
    _vibrate(400, -1);
  }

  void _vibrate(
    int duration,
    int amplitude,
  ) async {
    if (!settingsManager.cache.vibration) {
      return;
    }

    final hasVibrator = await Vibration.hasVibrator();
    final hasAmplitudeControl = await Vibration.hasAmplitudeControl();

    if (hasVibrator == true) {
      if (hasAmplitudeControl == true) {
        await Vibration.vibrate(
          duration: duration,
          amplitude: amplitude,
        );
      } else {
        await Vibration.vibrate();
      }
    }
  }
}
