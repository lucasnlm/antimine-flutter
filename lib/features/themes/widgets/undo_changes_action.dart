import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/themes_bloc.dart';
import '../bloc/themes_state.dart';

class UndoChangesAction extends StatelessWidget {
  const UndoChangesAction({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemesBloc, ThemesState>(
      buildWhen:
          (previous, current) =>
              previous.hasColorChanges != current.hasColorChanges,
      builder: (context, state) {
        if (state.hasColorChanges) {
          return IconButton(
            icon: const Icon(Icons.undo),
            onPressed: () {
              context.read<ThemesBloc>().undoChanges();
            },
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
