import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../common/hash/hash_manager.dart';
import '../../foundation/io/save_file_manager.dart';
import '../../game_routing.dart';
import 'bloc/history_bloc.dart';
import 'screen/history_screen.dart';

class HistoryRoute extends StatelessWidget {
  const HistoryRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HistoryBloc>(
      create: (context) => HistoryBloc(
        saveFileManager: context.read<SaveFileManager>(),
        hashManager: context.read<HashManager>(),
      ),
      child: const HistoryScreen(),
    );
  }

  static void open(
    BuildContext context,
  ) async {
    await context.push(
      GameRoutes.history,
    );
  }
}
