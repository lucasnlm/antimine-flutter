import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../common/global/global_settings_bloc.dart';
import '../../common/settings/settings_manager.dart';
import '../../game_routing.dart';
import 'bloc/language_bloc.dart';
import 'screen/language_screen.dart';

class LanguageRoute extends StatelessWidget {
  const LanguageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LanguageBloc>(
      create: (context) => LanguageBloc(
        settingsManager: context.read<SettingsManager>(),
        globalBloc: context.read<GlobalSettingsBloc>(),
      )..load(),
      child: const LanguageScreen(),
    );
  }

  static void open(
    BuildContext context,
  ) async {
    await context.push(
      GameRoutes.languages,
    );
  }
}
