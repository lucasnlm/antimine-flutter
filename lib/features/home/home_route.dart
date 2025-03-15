import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../common/minefield/minefield_manager.dart';
import '../../common/settings/settings_manager.dart';
import '../../common/update/in_app_update_manager.dart';
import '../../foundation/io/save_file_manager.dart';
import '../../foundation/side_effect/side_effect_bloc.dart';
import '../../game_routing.dart';
import 'bloc/home_bloc.dart';
import 'screen/home_screen.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        minefieldManager: context.read<MinefieldManager>(),
        sideEffectBloc: context.read<SideEffectBloc>(),
        saveFileManager: context.read<SaveFileManager>(),
        settingsManager: context.read<SettingsManager>(),
        inAppUpdateManager: context.read<InAppUpdateManager>(),
      )..init(),
      child: const HomeScreen(),
    );
  }

  static void open(
    BuildContext context,
  ) async {
    context.pushReplacement(
      GameRoutes.home,
    );
  }
}
