import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame_bloc/flame_bloc.dart';

import '../../../../common/models/area.dart';
import '../../../../common/models/minefield.dart';
import '../../../../common/models/skins/skin.dart';
import '../../../../common/models/themes/game_theme.dart';
import '../../bloc/game_bloc.dart';
import '../../bloc/game_state.dart';
import '../../logic/batch_list.dart';
import '../../flame/game_renderer.dart';
import 'component_constants.dart';

class CommonLayerComponent extends ShapeComponent
    with HasGameRef<GameRenderer>, FlameBlocListenable<GameBloc, GameState> {
  Minefield? minefield;
  Iterable<Area>? areas;

  final double areaSize;
  final Skin skin;
  final GameTheme theme;

  late Sprite sprite;
  late Image atlas;

  BatchList? batchList;
  bool visible = true;

  CommonLayerComponent({
    required this.areaSize,
    required this.skin,
    required this.theme,
  }) {
    paint
      ..isAntiAlias = false
      ..strokeWidth = 0.0
      ..filterQuality = FilterQuality.none;
  }

  @override
  Future<void> onLoad() async {
    atlas = await gameRef.images.load(skin.skin);
    sprite = Sprite(
      atlas,
      srcPosition: Vector2.zero(),
      srcSize: ComponentConstants.srcSize,
    );
  }

  @override
  void update(double dt) {
    _refreshFilterQuality();
  }

  @override
  void render(Canvas canvas) {
    if (!visible) {
      return;
    }

    super.render(canvas);
    final batchList = this.batchList;

    if (batchList != null) {
      canvas.drawAtlas(
        atlas,
        batchList.transforms,
        batchList.rects,
        batchList.colors,
        BlendMode.modulate,
        gameRef.camera.visibleWorldRect,
        paint,
      );
    }
  }

  Rect rectOf(int x, int y) {
    return Rect.fromLTWH(
      x * ComponentConstants.spriteSize,
      y * ComponentConstants.spriteSize,
      ComponentConstants.spriteSize,
      ComponentConstants.spriteSize,
    );
  }

  Rect subRectOf(int x, int y, int subX, int subY) {
    const subSize = ComponentConstants.spriteSize * 0.5;
    return Rect.fromLTWH(
      x * ComponentConstants.spriteSize + subX * subSize,
      y * ComponentConstants.spriteSize + subY * subSize,
      subSize,
      subSize,
    );
  }

  Rect verticalHalfRectOf(int x, int y) {
    const size = ComponentConstants.spriteSize;
    const subSize = size * 0.5;
    return Rect.fromLTWH(x * size, y * size + 0.25 * size, size, subSize);
  }

  Rect horizontalHalfRectOf(int x, int y) {
    const size = ComponentConstants.spriteSize;
    const subSize = size * 0.5;
    return Rect.fromLTWH(x * size + 0.25 * size, y * size, subSize, size);
  }

  void _refreshFilterQuality() {
    final zoom = gameRef.camera.viewfinder.zoom;
    if (zoom >= 2.0) {
      paint.filterQuality = FilterQuality.high;
    } else if (zoom >= 1.0) {
      paint.filterQuality = FilterQuality.medium;
    } else if (zoom <= 0.2) {
      paint.filterQuality = FilterQuality.none;
    } else {
      paint.filterQuality = FilterQuality.low;
    }
  }
}
