import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../common/models/icon_behavior.dart';
import '../../bloc/game_state.dart';
import '../../logic/batch_list.dart';
import 'common_layer_component.dart';

class CoverLayerComponent extends CommonLayerComponent {
  CoverLayerComponent({
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

    final game = findGame();
    if (game != null) {
      game.resumeEngine();
    }

    this.minefield = minefield;
    this.areas = areas;

    final batchList = BatchList(minefield: minefield, areaSize: areaSize);

    for (final area in areas) {
      if (!area.covered) {
        continue;
      }

      final color = theme.canTint ? theme.cover : Colors.white;
      final form = area.form;

      batchList
        ..x = area.x.toDouble()
        ..y = area.y.toDouble();

      if (area.mark.isNone) {
        batchList.color = color;
      } else {
        switch (theme.iconBehavior) {
          case IconBehavior.darkBackground:
            batchList.color = color.darken(0.5);
            break;
          case IconBehavior.lightBackground:
            batchList.color = color.brighten(0.5);
            break;
          case IconBehavior.none:
            batchList.color = color.darken(0.5);
            break;
        }
      }

      if (form != null && theme.connectAreas) {
        if (form.isFull) {
          batchList.add(fullForm);
        } else if (form.isNone) {
          batchList.add(noneForm);
        } else {
          batchList.add(baseForm);

          if (!form.top && !form.left) {
            batchList.add(cornerTopLeftForm, 0, 0.0, 0.0);
          }

          if (!form.top && !form.right) {
            batchList.add(cornerTopRightForm, 0, 0.5, 0.0);
          }

          if (!form.bottom && !form.right) {
            batchList.add(cornerBottomRightForm, 0, 0.5, 0.5);
          }

          if (!form.bottom && !form.left) {
            batchList.add(cornerBottomLeftForm, 0, 0.0, 0.5);
          }

          if (form.top && form.right && !form.topRight) {
            batchList.add(borderCornerTopRightForm, 0, 0.5, 0.0);
          }

          if (form.top && form.left && !form.topLeft) {
            batchList.add(borderCornerTopLeftForm, 0, 0.0, 0.0);
          }

          if (form.bottom && form.right && !form.bottomRight) {
            batchList.add(borderCornerBottomRightForm, 0, 0.5, 0.5);
          }

          if (form.bottom && form.left && !form.bottomLeft) {
            batchList.add(borderCornerBottomLeftForm, 0, 0.0, 0.5);
          }

          if (form.top && form.left && form.topLeft) {
            batchList.add(fillTopLeftForm, 0, 0.0, 0.0);
          }

          if (form.top && form.right && form.topRight) {
            batchList.add(fillTopRightForm, 0, 0.5, 0.0);
          }

          if (form.bottom && form.left && form.bottomLeft) {
            batchList.add(fillBottomLeftForm, 0, 0.0, 0.5);
          }

          if (form.bottom && form.right && form.bottomRight) {
            batchList.add(fillBottomRightForm, 0, 0.5, 0.5);
          }

          if (form.bottom) {
            batchList.add(verticalForm, 0, 0.0, 0.5);
          }

          if (form.top) {
            batchList.add(verticalForm, 0, 0.0, 0.0);
          }

          if (form.left) {
            batchList.add(horizontalForm, 0, 0.0, 0.0);
          }

          if (form.right) {
            batchList.add(horizontalForm, 0, 0.5, 0.0);
          }
        }
      } else {
        batchList.add(baseForm);
      }
    }

    this.batchList = batchList;
  }

  late final baseForm = rectOf(0, 0);
  late final verticalForm = verticalHalfRectOf(2, 2);
  late final horizontalForm = horizontalHalfRectOf(2, 0);
  late final cornerTopLeftForm = subRectOf(0, 2, 0, 0);
  late final cornerTopRightForm = subRectOf(0, 2, 1, 0);
  late final cornerBottomRightForm = subRectOf(0, 2, 1, 1);
  late final cornerBottomLeftForm = subRectOf(0, 2, 0, 1);
  late final borderCornerTopRightForm = subRectOf(0, 4, 1, 0);
  late final borderCornerTopLeftForm = subRectOf(0, 4, 0, 0);
  late final borderCornerBottomRightForm = subRectOf(0, 4, 1, 1);
  late final borderCornerBottomLeftForm = subRectOf(0, 4, 0, 1);
  late final fillTopLeftForm = subRectOf(2, 4, 0, 0);
  late final fillTopRightForm = subRectOf(2, 4, 1, 0);
  late final fillBottomLeftForm = subRectOf(2, 4, 1, 1);
  late final fillBottomRightForm = subRectOf(2, 4, 0, 1);
  late final fullForm = rectOf(2, 4);
  late final noneForm = rectOf(0, 2);
}
