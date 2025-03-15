import 'package:flame/input.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/audio/game_audio_manager.dart';
import '../../../common/global/global_settings_bloc.dart';
import '../../../common/models/themes/game_theme_manager.dart';
import '../../../common/settings/settings_manager.dart';
import '../../../common/update/in_app_update_manager.dart';
import '../../../foundation/io/save_file_manager.dart';
import '../../game/logic/dimension_manager.dart';
import 'startup_state.dart';

class StartUpBloc extends Cubit<StartupState> {
  StartUpBloc({
    required this.gameAudioManager,
    required this.dimensionManager,
    required this.settingsManager,
    required this.globalSettingsBloc,
    required this.gameThemeManager,
    required this.inAppUpdateManager,
    required this.saveFileManager,
  }) : super(
          const StartupState(
            initialized: false,
            openGameDirectly: false,
          ),
        );

  final GameAudioManager gameAudioManager;
  final DimensionManager dimensionManager;
  final SettingsManager settingsManager;
  final GlobalSettingsBloc globalSettingsBloc;
  final GameThemeManager gameThemeManager;
  final InAppUpdateManager inAppUpdateManager;
  final SaveFileManager saveFileManager;

  void initializeGame({
    required Size screenSize,
  }) async {
    await settingsManager.init();
    await settingsManager.reload();

    gameThemeManager.init();
    globalSettingsBloc.change(
      colorScheme: gameThemeManager.colorScheme,
      locale: settingsManager.cache.locale,
    );

    await gameAudioManager.preLoad();

    await saveFileManager.syncSaves();

    dimensionManager.init(screenSize: screenSize);
    debugPrint('>> Game initialized');
    emit(
      state.copyWith(
        initialized: true,
        openGameDirectly: settingsManager.cache.openOnGame,
      ),
    );

    TapConfig.longTapDelay =
        settingsManager.cache.touchSensibility.toDouble() / 1000.0;
    debugPrint('> longTapDelay initial = ${TapConfig.longTapDelay}');

    inAppUpdateManager.init();
  }

  void _safePluginCall(Function() call) {
    try {
      call();
    } catch (e) {
      debugPrint('>> Error calling plugin: $e');
    }
  }
}
