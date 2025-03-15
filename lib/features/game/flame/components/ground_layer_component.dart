import 'package:flutter/material.dart';

import '../../bloc/game_state.dart';
import '../../logic/batch_list.dart';
import '../../logic/game_constants.dart';
import 'common_layer_component.dart';
import 'component_constants.dart';

class GroundLayerComponent extends CommonLayerComponent {
  GroundLayerComponent({
    required super.areaSize,
    required super.skin,
    required super.theme,
  });

  @override
  bool listenWhen(GameState previousState, GameState newState) {
    return newState.areas != previousState.areas || batchList == null;
  }

  @override
  void onNewState(GameState state) {
    final minefield = state.minefield;
    final areas = state.areas;

    this.minefield = minefield;
    this.areas = areas;

    final minesAround = [
      mineAround1,
      mineAround2,
      mineAround3,
      mineAround4,
      mineAround5,
      mineAround6,
      mineAround7,
      mineAround8,
    ];

    final batchList = BatchList(minefield: minefield, areaSize: areaSize);

    for (final area in areas) {
      final x = area.x;
      final y = area.y;
      final isOdd = (x + y) % 2 == 1;

      batchList
        ..x = x.toDouble()
        ..y = y.toDouble();

      if (skin.fillBackground) {
        batchList.color = skin.canTint ? theme.background : Colors.white;
        batchList.add(fillBackgroundSprite);
      } else if (isOdd && !area.covered) {
        batchList.color = theme.uncovered;
        batchList.add(backgroundSprite);
      }

      if (area.minesAround > 0 && area.minesAround <= 8) {
        final color = theme.around[area.minesAround - 1];
        if (area.dimNumber) {
          batchList.color = color.withOpacity(GameConstants.dimOpacity);
        } else {
          batchList.color = color;
        }
        batchList.add(minesAround[area.minesAround - 1]);
      }

      if (area.hasMine) {
        if (area.ignoreError) {
          batchList.color = theme.ignoredMineBackground;
        } else if (area.revealed) {
          batchList.color = theme.neutralMineBackground;
        } else {
          batchList.color = theme.explodedMineBackground;
        }

        batchList.add(mineBackground, ComponentConstants.mineBackgroundPadding);
        batchList.color = theme.mineColor;
        batchList.add(mineIcon, ComponentConstants.iconPadding);
      }
    }

    this.batchList = batchList;
  }

  late final mineAround1 = rectOf(5, 0);
  late final mineAround2 = rectOf(6, 0);
  late final mineAround3 = rectOf(7, 0);
  late final mineAround4 = rectOf(5, 1);
  late final mineAround5 = rectOf(6, 1);
  late final mineAround6 = rectOf(7, 1);
  late final mineAround7 = rectOf(5, 2);
  late final mineAround8 = rectOf(6, 2);
  late final mineIcon = rectOf(6, 3);
  late final mineBackground = rectOf(0, 2);
  late final backgroundSprite = rectOf(0, 2);
  late final fillBackgroundSprite = rectOf(5, 5);
}
