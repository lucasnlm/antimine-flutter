import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/alert/game_alert.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../bloc/stats_bloc.dart';
import '../bloc/stats_state.dart';
import '../widgets/loaded_stats_list.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StatsScreenState();
  }
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<StatsBloc>().loadStats();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatsBloc, StatsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(t.events),
            actions: [
              if (!state.loading && state.boards.isNotEmpty)
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    showGameAlert(
                      context: context,
                      barrierDismissible: true,
                      title: t.are_you_sure,
                      content: t.delete_all_message,
                      isDefaultAction: true,
                      isDestructiveAction: true,
                      primaryAction: t.delete_all,
                      onPrimary: (dialogContext) {
                        Navigator.of(dialogContext).pop();
                        context.read<StatsBloc>().deleteStats();
                      },
                    );
                  },
                ),
            ],
          ),
          body: state.loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : LoadedStatsList(boards: state.boards),
        );
      },
    );
  }
}
