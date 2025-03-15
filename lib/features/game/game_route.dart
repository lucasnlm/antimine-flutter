import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../common/audio/game_audio_manager.dart';
import '../../common/hash/hash_manager.dart';
import '../../common/hints/hint_manager.dart';
import '../../common/models/themes/game_theme_manager.dart';
import '../../common/review/in_app_review_manager.dart';
import '../../common/settings/settings_manager.dart';
import '../../common/vibration/vibrator_manager.dart';
import '../../foundation/io/save_file_manager.dart';
import '../../foundation/io/share_image_manager.dart';
import '../../common/minefield/minefield_manager.dart';
import '../../common/models/difficulty.dart';
import '../../foundation/io/stats_file_manager.dart';
import '../../foundation/side_effect/side_effect_bloc.dart';
import '../../game_routing.dart';
import 'bloc/game_bloc.dart';
import 'logic/date_time_provider.dart';
import 'logic/dimension_manager.dart';
import 'logic/minefield_handler.dart';
import 'logic/minefield_solver.dart';
import 'logic/randomness_manager.dart';
import 'screen/game_params.dart';
import 'screen/game_screen.dart';

class GameRoute extends StatelessWidget {
  const GameRoute({
    super.key,
    required this.params,
  });

  final GameParams params;

  @override
  Widget build(BuildContext context) {
    final settings = context.read<SettingsManager>().cache;
    final gameThemeManager = context.read<GameThemeManager>();
    final gameTheme = gameThemeManager.gameTheme();
    return BlocProvider<GameBloc>(
      create: (context) => GameBloc(
        theme: gameTheme,
        settings: settings,
        minefieldSolver: context.read<MinefieldSolver>(),
        dateTimeProvider: context.read<DateTimeProvider>(),
        minefieldHandler: context.read<MinefieldHandler>(),
        randomnessManager: context.read<RandomnessManager>(),
        saveFileManager: context.read<SaveFileManager>(),
        minefieldManager: context.read<MinefieldManager>(),
        sideEffectBloc: context.read<SideEffectBloc>(),
        hintManager: context.read<HintManager>(),
        shareImageManager: context.read<ShareImageManager>(),
        audioManager: context.read<GameAudioManager>(),
        vibratorManager: context.read<VibratorManager>(),
        statsFileManager: context.read<StatsFileManager>(),
        hashManager: context.read<HashManager>(),
        settingsManager: context.read<SettingsManager>(),
        inAppReviewManager: context.read<InAppReviewManager>(),
        params: params,
      ),
      child: GameScreen(
        dimensionManager: context.read<DimensionManager>(),
        skin: gameThemeManager.skin,
        theme: gameTheme,
        settings: settings,
      ),
    );
  }

  static void open(
    BuildContext context, [
    Difficulty? difficulty,
    int? seed,
    Vector2? initialPosition,
  ]) async {
    await context.push(
      GameRoutes.game,
      extra: GameParams(
        difficulty: difficulty,
        seed: seed,
        initialPosition: initialPosition,
      ).toMap(),
    );
  }

  static void openReplacing(
    BuildContext context, [
    Difficulty? difficulty,
    int? seed,
    Vector2? initialPosition,
  ]) async {
    context.pushReplacement(
      GameRoutes.game,
      extra: GameParams(
        difficulty: difficulty,
        seed: seed,
        initialPosition: initialPosition,
      ).toMap(),
    );
  }

  static void restartSave(
    BuildContext context,
    String saveId,
  ) async {
    await context.push(
      GameRoutes.game,
      extra: GameParams(
        saveId: saveId,
        restart: true,
      ).toMap(),
    );
  }

  static void openSave(
    BuildContext context, [
    String? saveId,
  ]) async {
    if (saveId == null) {
      return open(context);
    } else {
      await context.push(
        GameRoutes.game,
        extra: GameParams(
          saveId: saveId,
        ).toMap(),
      );
    }
  }

  static void openAsPreview(
    BuildContext context, [
    String? saveId,
  ]) async {
    await context.push(
      GameRoutes.game,
      extra: GameParams(
        isPreview: true,
        saveId: saveId,
      ).toMap(),
    );
  }
}
