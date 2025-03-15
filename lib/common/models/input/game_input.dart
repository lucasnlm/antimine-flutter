import 'action.dart';
import 'input_map.dart';
import 'input_type.dart';

class GameInput {
  GameInput._();

  static const List<InputMap> inputMaps = [
    type1,
    type2,
    type3,
    type4,
    type5,
  ];

  static get defaultInputMap => type5;

  static InputMap fromId(int id) {
    return inputMaps.firstWhere(
      (element) => element.id == id,
      orElse: () => GameInput.defaultInputMap,
    );
  }

  static const InputMap type1 = InputMap(
    id: 1,
    inputMap: {
      InputType.singleTap: Action.open,
      InputType.longTap: Action.switchMark,
      InputType.doubleTap: Action.open,
    },
  );

  static const InputMap type2 = InputMap(
    id: 2,
    inputMap: {
      InputType.singleTap: Action.switchMark,
      InputType.longTap: Action.open,
      InputType.doubleTap: Action.switchMark,
    },
  );

  static const InputMap type3 = InputMap(
    id: 3,
    inputMap: {
      InputType.singleTap: Action.switchMark,
      InputType.doubleTap: Action.open,
    },
  );

  static const InputMap type4 = InputMap(
    id: 4,
    inputMap: {
      InputType.singleTap: Action.open,
      InputType.doubleTap: Action.switchMark,
    },
  );

  static const InputMap type5 = InputMap(
    id: 5,
    inputMap: {},
    showInputSelector: true,
  );
}
