import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../game_routing.dart';
import 'bloc/stats_bloc.dart';
import 'screen/stats_screen.dart';

class StatsRoute extends StatelessWidget {
  const StatsRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StatsBloc>(
      create: (context) {
        return StatsBloc(staticsFileManager: context.read());
      },
      child: const StatsScreen(),
    );
  }

  static Future<T?> open<T extends Object?>(BuildContext context) {
    return context.push(GameRoutes.stats);
  }
}
