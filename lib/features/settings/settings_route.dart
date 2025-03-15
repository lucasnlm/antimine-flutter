import 'package:antimine/features/settings/screen/settings_params.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../game_routing.dart';
import 'bloc/settings_bloc.dart';
import 'screen/settings_screen.dart';

class SettingsRoute extends StatelessWidget {
  const SettingsRoute({
    super.key,
    required this.params,
  });

  final SettingsParams params;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsBloc>(
      create: (BuildContext context) {
        return SettingsBloc(
          settingsManager: context.read(),
        )..loadSettings();
      },
      child: SettingsScreen(
        params: params,
      ),
    );
  }

  static void open<T extends Object?>(
    BuildContext context, {
    bool backToGame = false,
  }) async {
    if (backToGame) {
      context.pushReplacement(
        GameRoutes.settings,
        extra: SettingsParams(
          backToGame: backToGame,
        ).toMap(),
      );
    } else {
      await context.push(
        GameRoutes.settings,
        extra: SettingsParams(
          backToGame: backToGame,
        ).toMap(),
      );
    }
  }

  static const backToGameParam = 'backToGame';
}
