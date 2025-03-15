import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../common/models/difficulty.dart';
import '../../common/settings/settings_manager.dart';
import '../../foundation/i18n/translations.g.dart';
import '../../foundation/ui/game_button.dart';
import '../../foundation/ui/game_button_align.dart';
import '../../foundation/ui/spacing.dart';
import '../dialogs/view/game_dialog.dart';
import '../game/game_route.dart';
import 'bloc/custom_bloc.dart';
import 'bloc/custom_state.dart';
import 'widgets/flexible_text_field.dart';

class CustomGameDialog extends StatefulWidget {
  const CustomGameDialog({
    super.key,
    required this.context,
    required this.settingsManager,
  });

  final BuildContext context;
  final SettingsManager settingsManager;

  @override
  State<StatefulWidget> createState() {
    return _CustomGameDialogState();
  }
}

class _CustomGameDialogState extends State<CustomGameDialog> {
  late TextEditingController _widthController;
  late TextEditingController _heightController;
  late TextEditingController _minesController;
  late TextEditingController _seedController;

  @override
  void initState() {
    super.initState();
    _widthController = TextEditingController();
    _heightController = TextEditingController();
    _minesController = TextEditingController();
    _seedController = TextEditingController();

    final bloc = context.read<CustomBloc>();

    _widthController.value = TextEditingValue(
      text: bloc.state.width.toString(),
    );
    _heightController.value = TextEditingValue(
      text: bloc.state.height.toString(),
    );
    _minesController.value = TextEditingValue(
      text: bloc.state.mines.toString(),
    );
  }

  @override
  void dispose() {
    _widthController.dispose();
    _heightController.dispose();
    _minesController.dispose();
    _seedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.read<CustomBloc>();

    return Center(
      child: GameDialog(
        child: BlocBuilder<CustomBloc, CustomState>(
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBar(
                  leading: const SizedBox.shrink(),
                  backgroundColor: Colors.transparent,
                  surfaceTintColor: Colors.transparent,
                  elevation: 0.0,
                  title: Text(t.new_game),
                  actions: const [CloseButton()],
                ),
                const SizedBox(height: Spacing.x16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlexibleTextField(
                      controller: _widthController,
                      label: t.width,
                      errorText: t.error,
                      minValue: state.minDimension,
                      maxValue: state.maxDimension,
                      onChanged: (value) => bloc.setWidth(value),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Spacing.x8,
                      ),
                      child: Text('⨯', style: theme.textTheme.titleLarge),
                    ),
                    FlexibleTextField(
                      controller: _heightController,
                      label: t.height,
                      minValue: state.minDimension,
                      maxValue: state.maxDimension,
                      onChanged: (value) => bloc.setHeight(value),
                    ),
                  ],
                ),
                const SizedBox(height: Spacing.x16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlexibleTextField(
                      controller: _minesController,
                      label: t.mines,
                      minValue: state.minMines,
                      action: TextInputAction.done,
                      onChanged: (value) => bloc.setMines(value),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Spacing.x8,
                      ),
                      child: Text(' ', style: theme.textTheme.titleLarge),
                    ),
                    FlexibleTextField(
                      controller: _seedController,
                      label: t.seed,
                      validate: false,
                      action: TextInputAction.done,
                      onChanged: (value) => bloc.setSeed(value),
                    ),
                  ],
                ),
                const SizedBox(height: Spacing.x24),
                GameButton(
                  isPrimary: true,
                  label: t.start,
                  align: GameButtonAlign.center,
                  onPressed:
                      state.isValid
                          ? () async {
                            bloc.saveCustom();
                            context.pop();

                            GameRoute.open(
                              widget.context,
                              Difficulty.custom,
                              state.seed,
                            );
                          }
                          : null,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
