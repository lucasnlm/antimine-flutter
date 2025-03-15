import 'package:flutter/material.dart' as material;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/models/input/action.dart';
import '../../../common/settings/settings_manager.dart';
import 'controls_state.dart';
import 'package:flame/src/events/tap_config.dart' show TapConfig;

class ControlsBloc extends Cubit<ControlsState> {
  ControlsBloc({
    required this.settingsManager,
  }) : super(
          ControlsState(
            selectedId: settingsManager.cache.controlType,
            defaultAction: settingsManager.cache.defaultAction,
            touchSensibility: settingsManager.cache.touchSensibility,
          ),
        );

  final SettingsManager settingsManager;

  void selectControlType(int id) {
    settingsManager.setControlType(id);
    emit(
      state.copyWith(
        selectedId: id,
      ),
    );
  }

  void setDefaultAction(Action action) {
    settingsManager.setDefaultAction(action);
    emit(
      state.copyWith(
        defaultAction: action,
      ),
    );
  }

  void setTouchSensibility(int sensibility) {
    settingsManager.setTouchSensibility(sensibility);
    emit(
      state.copyWith(
        touchSensibility: sensibility,
      ),
    );

    double newValue = sensibility.toDouble() / 1000.0;
    material.debugPrint("> longTapDelay = $newValue");
    TapConfig.longTapDelay = newValue;
  }
}
