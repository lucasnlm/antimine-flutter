import 'package:equatable/equatable.dart';

import '../../../common/models/input/action.dart';

class ControlsState extends Equatable {
  const ControlsState({
    this.selectedId = -1,
    this.defaultAction = Action.open,
    this.touchSensibility = 200,
  });

  final int selectedId;
  final int touchSensibility;
  final Action defaultAction;

  @override
  List<Object?> get props => [
        selectedId,
        defaultAction,
        touchSensibility,
      ];

  ControlsState copyWith({
    int? selectedId,
    Action? defaultAction,
    int? touchSensibility,
  }) {
    return ControlsState(
      selectedId: selectedId ?? this.selectedId,
      defaultAction: defaultAction ?? this.defaultAction,
      touchSensibility: touchSensibility ?? this.touchSensibility,
    );
  }
}
