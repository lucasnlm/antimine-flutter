import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../game_routing.dart';
import 'bloc/controls_bloc.dart';
import 'screen/controls_screen.dart';

class ControlsRoute extends StatelessWidget {
  const ControlsRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ControlsBloc>(
      create: (_) => ControlsBloc(settingsManager: context.read()),
      child: const ControlsScreen(),
    );
  }

  static void open(BuildContext context) async {
    await context.push(GameRoutes.controls);
  }
}
