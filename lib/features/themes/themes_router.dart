import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../game_routing.dart';
import 'bloc/themes_bloc.dart';
import 'screen/themes_screen.dart';

class ThemesRoute extends StatelessWidget {
  const ThemesRoute({super.key});

  @override
  Widget build(context) {
    return BlocProvider<ThemesBloc>(
      create:
          (_) => ThemesBloc(
            platformBrightness: PlatformDispatcher.instance.platformBrightness,
            gameThemeManager: context.read(),
            settingsManager: context.read(),
            globalSettingsBloc: context.read(),
          ),
      child: const ThemesScreen(),
    );
  }

  static Future<T?> open<T extends Object?>(BuildContext context) {
    return context.push(GameRoutes.themes);
  }
}
