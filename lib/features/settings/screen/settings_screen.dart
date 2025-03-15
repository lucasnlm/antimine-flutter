import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../foundation/i18n/translations.g.dart';
import '../bloc/settings_bloc.dart';
import '../bloc/settings_state.dart';
import '../widgets/settings_list.dart';
import 'settings_params.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key, required this.params});

  final SettingsParams params;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        final settings = state.settings;
        return Scaffold(
          appBar: AppBar(
            title: Text(t.settings),
            leading: BackButton(onPressed: () => context.pop()),
            actions: [
              if (state.hasChanged)
                IconButton(
                  icon: const Icon(Icons.undo),
                  onPressed: () {
                    context.read<SettingsBloc>().reset();
                  },
                ),
            ],
          ),
          body:
              settings == null
                  ? const SizedBox.shrink()
                  : SettingsList(settings: settings),
        );
      },
    );
  }
}
