import 'package:flutter/material.dart';

import '../../../common/utils/build_context_ext.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/spacing.dart';
import '../widgets/background_color_panel.dart';
import '../widgets/main_color_panel.dart';
import '../widgets/preview_button_bar.dart';
import '../widgets/skins_panel.dart';
import '../widgets/undo_changes_action.dart';

class ThemesScreen extends StatelessWidget {
  const ThemesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(t.themes),
        actions: const [
          UndoChangesAction(),
        ],
      ),
      bottomNavigationBar: const PreviewBottomBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: Spacing.x16,
            horizontal: isTablet ? Spacing.x128 : 0.0,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              BackgroundColorPanel(),
              SizedBox(height: Spacing.x16),
              MainColorPanel(),
              SizedBox(height: Spacing.x16),
              SkinsPanel(),
              SizedBox(height: Spacing.x16),
            ],
          ),
        ),
      ),
    );
  }
}
