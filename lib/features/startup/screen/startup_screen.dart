import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../foundation/i18n/translations.g.dart';
import '../../game/game_route.dart';
import '../../home/home_route.dart';
import '../bloc/startup_bloc.dart';
import '../bloc/startup_state.dart';

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StartUpScreen();
  }
}

class _StartUpScreen extends State<StartUpScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final screenSize = MediaQuery.of(context).size;
      context.read<StartUpBloc>().initializeGame(
            screenSize: screenSize,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<StartUpBloc, StartupState>(
      listener: (context, state) {
        if (state.initialized) {
          if (state.openGameDirectly) {
            GameRoute.open(context);
          } else {
            HomeRoute.open(context);
          }
        }
      },
      child: Scaffold(
        body: Semantics(
          label: t.loading,
          child: const SizedBox(),
        ),
      ),
    );
  }
}
