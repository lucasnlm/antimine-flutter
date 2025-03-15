import 'package:equatable/equatable.dart';

import 'action.dart';
import 'input_type.dart';

class InputMap extends Equatable {
  final int id;
  final Map<InputType, Action> inputMap;
  final bool showInputSelector;

  const InputMap({
    required this.id,
    required this.inputMap,
    this.showInputSelector = false,
  });

  @override
  List<Object?> get props => [
        id,
        inputMap,
        showInputSelector,
      ];
}
