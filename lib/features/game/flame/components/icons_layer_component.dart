import '../../../../common/models/mark.dart';
import '../../bloc/game_state.dart';
import '../../logic/game_constants.dart';
import '../../logic/batch_list.dart';
import 'common_layer_component.dart';
import 'component_constants.dart';

class IconsLayerComponent extends CommonLayerComponent {
  IconsLayerComponent({
    required super.areaSize,
    required super.skin,
    required super.theme,
  });

  @override
  bool listenWhen(GameState previousState, GameState newState) {
    return previousState.areas != newState.areas;
  }

  @override
  void onNewState(GameState state) {
    final minefield = state.minefield;
    final areas = state.areas;

    this.minefield = minefield;

    final batchList = BatchList(minefield: minefield, areaSize: areaSize);

    for (final area in areas) {
      if (!area.covered || (area.mark.isNone && !area.revealed)) {
        continue;
      }

      final color = theme.iconColor;

      batchList
        ..x = area.x.toDouble()
        ..y = area.y.toDouble()
        ..color = color;

      if (area.mark.isNotNone) {
        switch (area.mark) {
          case Mark.flag:
            batchList.add(
              flagIcon,
              ComponentConstants.iconPadding,
            );
            break;
          case Mark.question:
            batchList.add(
              questionIcon,
              ComponentConstants.iconPadding ~/ 2,
            );
            break;
          default:
            break;
        }
      } else if (area.revealed) {
        batchList.color = color.withOpacity(
          GameConstants.revealedOpacity,
        );
        batchList.add(
          mineIcon,
          ComponentConstants.iconPadding ~/ 2,
        );
      }
    }

    this.batchList = batchList;
  }

  late final flagIcon = rectOf(5, 3);
  late final questionIcon = rectOf(7, 2);
  late final mineIcon = rectOf(6, 3);
}
