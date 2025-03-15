import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/models/game_settings.dart';
import '../../../common/utils/build_context_ext.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/spacing.dart';
import '../bloc/settings_bloc.dart';
import '../models/settings_item.dart';
import 'settings_panel.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({super.key, required this.settings});

  final GameSettings settings;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SettingsBloc>();
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isTablet ? Spacing.x128 : 0.0,
            vertical: Spacing.x16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SettingsPanel(
                title: t.general,
                children: [
                  SettingsItem(
                    title: t.vibration,
                    value: settings.vibration,
                    onChanged: bloc.setVibration,
                  ),
                  SettingsItem(
                    title: t.sound_effects,
                    value: settings.soundEffects,
                    onChanged: bloc.setSoundEffects,
                  ),
                  SettingsItem(
                    title: t.music,
                    value: settings.music,
                    onChanged: bloc.setMusic,
                  ),
                  SettingsItem(
                    title: t.open_on_game,
                    value: settings.openOnGame,
                    onChanged: bloc.setOpenOnGame,
                  ),
                  SettingsItem(
                    title: t.show_windows,
                    value: settings.showWindows,
                    onChanged: bloc.setShowWindows,
                  ),
                  SettingsItem(
                    title: t.immersive_mode,
                    value: settings.immersiveMode,
                    onChanged: (value) {
                      _refreshImmersiveMode(value);
                      bloc.setImmersiveMode(value);
                    },
                  ),
                ],
              ),
              const SizedBox(height: Spacing.x16),
              SettingsPanel(
                title: t.settings_gameplay,
                children: [
                  SettingsItem(
                    title: t.use_question_mark,
                    value: settings.useQuestionMark,
                    onChanged: bloc.setUseQuestionMark,
                  ),
                  SettingsItem(
                    title: t.enable_automatic_flags,
                    value: settings.useAutoFlagging,
                    onChanged: bloc.setUseAutoFlagging,
                  ),
                  SettingsItem(
                    title: t.click_numbers,
                    value: settings.tapOnNumbers,
                    onChanged: bloc.setTapOnNumbers,
                  ),
                  SettingsItem(
                    title: t.flag_when_tap_numbers,
                    value: settings.tapToFlagNeighbours,
                    onChanged: bloc.setTapToFlagNeighbours,
                  ),
                  SettingsItem(
                    title: t.help,
                    value: settings.hints,
                    onChanged: bloc.setHints,
                  ),
                  SettingsItem(
                    title: t.highlight_unsolved_numbers,
                    value: settings.darkenNumbers,
                    onChanged: bloc.setDarkenNumbers,
                  ),
                  SettingsItem(
                    title: t.show_clock,
                    value: settings.showClock,
                    onChanged: bloc.setShowClock,
                  ),
                  SettingsItem(
                    title: t.no_guessing_mode,
                    value: settings.noGuessingMode,
                    onChanged: bloc.setNoGuessingMode,
                  ),
                ],
              ),
              const SizedBox(height: Spacing.x24),
            ],
          ),
        ),
      ),
    );
  }

  void _refreshImmersiveMode(bool enabled) {
    if (enabled) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }
  }
}
