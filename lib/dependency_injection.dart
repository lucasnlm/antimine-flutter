import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'common/audio/game_audio_manager.dart';
import 'common/global/global_settings_bloc.dart';
import 'common/hash/hash_manager.dart';
import 'common/hints/hint_manager.dart';
import 'common/minefield/minefield_manager.dart';
import 'common/models/themes/game_theme_manager.dart';
import 'common/review/in_app_review_manager.dart';
import 'common/settings/settings_manager.dart';
import 'common/settings/settings_repository.dart';
import 'common/update/in_app_update_manager.dart';
import 'common/vibration/vibrator_manager.dart';
import 'features/custom/bloc/custom_bloc.dart';
import 'features/game/logic/date_time_provider.dart';
import 'features/game/logic/dimension_manager.dart';
import 'features/game/logic/minefield_handler.dart';
import 'features/game/logic/minefield_solver.dart';
import 'features/game/logic/native_minefield_creator.dart';
import 'features/game/logic/random_minefield_creator.dart';
import 'features/game/logic/randomness_manager.dart';
import 'foundation/io/save_file_manager.dart';
import 'foundation/io/share_image_manager.dart';
import 'foundation/io/stats_file_manager.dart';
import 'foundation/side_effect/side_effect_bloc.dart';
import 'foundation/uuid/uuid_generator.dart';

class DependencyInjection extends StatelessWidget {
  const DependencyInjection({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<SettingsRepository>(
          create: (_) => SettingsRepository(),
        ),
        Provider<InAppUpdateManager>(
          create: (_) => InAppUpdateManager(),
        ),
        Provider<InAppReviewManager>(
          create: (_) => InAppReviewManager(),
        ),
        Provider<SettingsManager>(
          create: (context) => SettingsManager(
            repository: context.read<SettingsRepository>(),
          ),
        ),
        Provider<GameThemeManager>(
          create: (context) => GameThemeManager(
            settingsManager: context.read<SettingsManager>(),
          ),
        ),
        BlocProvider<GlobalSettingsBloc>(
          create: (context) => GlobalSettingsBloc(
            gameThemeManager: context.read<GameThemeManager>(),
            settingsManager: context.read<SettingsManager>(),
          ),
        ),
        Provider<VibratorManager>(
          create: (context) {
            return VibratorManager(
              settingsManager: context.read<SettingsManager>(),
            );
          },
        ),
        Provider<GameAudioManager>(
          create: (context) => GameAudioManager(
            settingsManager: context.read<SettingsManager>(),
          ),
        ),
        Provider<HintManager>(
          create: (context) => HintManager(
            repository: context.read<SettingsRepository>(),
          ),
        ),
        Provider<RandomnessManager>(
          create: (_) => RandomnessManager(
            originalSeed: DateTime.now().millisecondsSinceEpoch,
          ),
        ),
        Provider<HashManager>(
          create: (context) => HashManager(
            randomnessManager: context.read<RandomnessManager>(),
          ),
        ),
        Provider<UuidGenerator>(
          create: (_) => UuidGenerator(),
        ),
        Provider<StatsFileManager>(
          create: (_) => StatsFileManager(),
        ),
        Provider<SaveFileManager>(
          create: (context) => SaveFileManager(
            uuidGenerator: context.read<UuidGenerator>(),
          ),
        ),
        Provider<ShareImageManager>(
          create: (context) => ShareImageManager(),
        ),
        Provider<DimensionManager>(
          create: (context) => DimensionManager(),
        ),
        Provider<MinefieldManager>(
          create: (context) => MinefieldManager(
            dimensionManager: context.read<DimensionManager>(),
            settingsManager: context.read<SettingsManager>(),
          ),
        ),
        Provider<MinefieldSolver>(
          create: (_) => MinefieldSolver(),
        ),
        Provider<RandomMinefieldCreator>(
          create: (context) => RandomMinefieldCreator(
            randomnessManager: context.read<RandomnessManager>(),
          ),
        ),
        Provider<NativeMinefieldCreator>(
          create: (context) => NativeMinefieldCreator(
            randomMinefieldCreator: context.read<RandomMinefieldCreator>(),
          ),
        ),
        Provider<MinefieldHandler>(
          create: (context) => MinefieldHandler(
            minefieldCreator: context.read<NativeMinefieldCreator>(),
            randomMinefieldCreator: context.read<RandomMinefieldCreator>(),
            randomnessManager: context.read<RandomnessManager>(),
          ),
        ),
        Provider<DateTimeProvider>(
          create: (_) => DateTimeProvider(),
        ),
        BlocProvider<SideEffectBloc>(
          create: (_) => SideEffectBloc(),
        ),
        BlocProvider<CustomBloc>(
          create: (context) => CustomBloc(
            hashManager: context.read<HashManager>(),
            settingsManager: context.read<SettingsManager>(),
          ),
        ),
      ],
      child: child,
    );
  }
}
