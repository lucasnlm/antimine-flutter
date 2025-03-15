import 'package:flutter/foundation.dart';

class GameConstants {
  GameConstants._();

  static const useNativeCreator = true;
  static const minSafeArea = 9;
  static const maxMinefieldWidth = 100;
  static const maxMinefieldHeight = 100;
  static const tickDuration = Duration(milliseconds: 200);
  static const hintCooldown =
      kDebugMode
          ? Duration(seconds: 0, milliseconds: 500)
          : Duration(seconds: 2, milliseconds: 500);
  static const throwConfettiMin = Duration(seconds: 3);
  static const confettiDuration = Duration(seconds: 3);
  static const hintReward = 5;
  static const initialHintCount = 5;
  static final revealedOpacity = (0.6 * 255.0) as int;
  static const dimOpacity = 127;

  static const safeAreaEnabled = true;
  static const lockSmallGamesOnScreen = false;
}
