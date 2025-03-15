import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/models/input/action.dart' as ga;
import '../../../common/models/input/game_input.dart';
import '../../../common/utils/build_context_ext.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/spacing.dart';
import '../../../foundation/ui/themes_panel.dart';
import '../../game/widgets/action_button.dart';
import '../bloc/controls_bloc.dart';
import '../bloc/controls_state.dart';
import '../widgets/control_divider.dart';
import '../widgets/control_slider.dart';
import '../widgets/control_type_selector_one.dart';
import '../widgets/control_type_selector_two.dart';

class ControlsScreen extends StatelessWidget {
  const ControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(t.control),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: Spacing.x16,
              horizontal: isTablet ? Spacing.x128 : 0.0,
            ),
            child: BlocBuilder<ControlsBloc, ControlsState>(
              builder: (context, state) {
                final bloc = context.read<ControlsBloc>();
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TitledPanel(
                      title: t.control_types,
                      children: [
                        ControlTypeSelectorTwo(
                          selected: GameInput.type1.id == state.selectedId,
                          firstAction: t.single_click,
                          firstReaction: t.open,
                          secondAction: t.long_press,
                          secondReaction: t.flag_tile,
                          onTap: () {
                            bloc.selectControlType(GameInput.type1.id);
                          },
                        ),
                        const ControlDivider(),
                        ControlTypeSelectorTwo(
                          selected: GameInput.type2.id == state.selectedId,
                          firstAction: t.single_click,
                          firstReaction: t.flag_tile,
                          secondAction: t.long_press,
                          secondReaction: t.open,
                          onTap: () {
                            bloc.selectControlType(GameInput.type2.id);
                          },
                        ),
                        const ControlDivider(),
                        ControlTypeSelectorTwo(
                          selected: GameInput.type3.id == state.selectedId,
                          firstAction: t.single_click,
                          firstReaction: t.flag_tile,
                          secondAction: t.double_click,
                          secondReaction: t.open,
                          onTap: () {
                            bloc.selectControlType(GameInput.type3.id);
                          },
                        ),
                        const ControlDivider(),
                        ControlTypeSelectorTwo(
                          selected: GameInput.type4.id == state.selectedId,
                          firstAction: t.single_click,
                          firstReaction: t.open,
                          secondAction: t.double_click,
                          secondReaction: t.flag_tile,
                          onTap: () {
                            bloc.selectControlType(GameInput.type4.id);
                          },
                        ),
                        const ControlDivider(),
                        ControlTypeSelectorOne(
                          selected: GameInput.type5.id == state.selectedId,
                          title: t.switch_control,
                          description: t.switch_control_desc,
                          onTap: () {
                            bloc.selectControlType(GameInput.type5.id);
                          },
                        ),
                      ],
                    ),
                    if (GameInput.type5.id == state.selectedId)
                      Padding(
                        padding: const EdgeInsets.only(top: Spacing.x16),
                        child: TitledPanel(
                          title: t.default_button,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: Spacing.x8,
                                horizontal: Spacing.x16,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ActionButton(
                                    icon: Icons.flag,
                                    isPrimary:
                                        state.defaultAction == ga.Action.flag,
                                    tooltip: t.flag_tile,
                                    onPressed: () {
                                      bloc.setDefaultAction(
                                        ga.Action.flag,
                                      );
                                    },
                                  ),
                                  const SizedBox(width: Spacing.x8),
                                  ActionButton(
                                    icon: Icons.touch_app_rounded,
                                    isPrimary:
                                        state.defaultAction == ga.Action.open,
                                    tooltip: t.flag_tile,
                                    onPressed: () {
                                      bloc.setDefaultAction(
                                        ga.Action.open,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: Spacing.x16),
                      child: TitledPanel(
                        title: t.touch_sensibility,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: Spacing.x8,
                            ),
                            child: ControlSlider(
                              initialValue: state.touchSensibility,
                              minValue: 150,
                              maxValue: 350,
                              onChanged: (value) {
                                bloc.setTouchSensibility(value);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
