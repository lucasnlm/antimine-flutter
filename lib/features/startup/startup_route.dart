import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/startup_bloc.dart';
import 'screen/startup_screen.dart';

class StartupRoute extends StatelessWidget {
  const StartupRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StartUpBloc>(
      create: (_) => StartUpBloc(
        gameAudioManager: context.read(),
        dimensionManager: context.read(),
        settingsManager: context.read(),
        gameThemeManager: context.read(),
        globalSettingsBloc: context.read(),
        inAppUpdateManager: context.read(),
        saveFileManager: context.read(),
      ),
      child: const StartUpScreen(),
    );
  }
}
