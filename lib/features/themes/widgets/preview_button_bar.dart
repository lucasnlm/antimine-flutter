import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/utils/build_context_ext.dart';
import '../../../foundation/ui/game_button.dart';
import '../../../foundation/ui/spacing.dart';
import '../../game/game_route.dart';
import '../bloc/themes_bloc.dart';
import '../bloc/themes_state.dart';

class PreviewBottomBar extends StatelessWidget {
  const PreviewBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemesBloc, ThemesState>(
      buildWhen:
          (previous, current) => previous.hasChanges != current.hasChanges,
      builder: (context, state) {
        if (state.hasChanges) {
          return BottomAppBar(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: Spacing.x4,
                horizontal: isTablet ? Spacing.x128 : Spacing.x8,
              ),
              child: GameButton(
                isPrimary: true,
                icon: Icons.search,
                label: "Preview",
                onPressed: () async {
                  GameRoute.openAsPreview(context);
                },
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
