import 'dart:math';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/image_composition.dart';
import 'package:flame_bloc/flame_bloc.dart';

import '../../../../common/models/game_status.dart';
import '../../../../common/models/skins/skin.dart';
import '../../../../common/models/themes/game_theme.dart';
import '../../bloc/game_bloc.dart';
import '../../bloc/game_state.dart';
import '../../flame/game_renderer.dart';
import 'component_constants.dart';

class HoverComponent extends ShapeComponent
    with HasGameRef<GameRenderer>, FlameBlocListenable<GameBloc, GameState> {
  late Sprite sprite;
  late Image atlas;

  final Skin skin;
  final GameTheme theme;
  final double areaSize;

  bool enabled = false;
  bool visible = true;
  double _opacity = 0.0;
  double _expansion = 0.0;

  HoverComponent({
    required this.skin,
    required this.areaSize,
    required this.theme,
  });

  @override
  void onNewState(GameState state) {
    visible = state.status == GameStatus.notStarted ||
        state.status == GameStatus.inProgress;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    if (!visible) {
      return;
    }

    if (_expansion > 0.0) {
      final fixExpansion = Vector2.all(-_spriteSizeExpanded * 0.5 * _expansion);
      final fixCamera = bloc.state.minefield.vecSize * 0.5 * areaSize;

      sprite.render(
        canvas,
        position: fixExpansion - fixCamera,
        size: Vector2.all(areaSize + _spriteSizeExpanded * _expansion),
        overridePaint: paint,
      );
    }
  }

  @override
  void update(double dt) {
    if (!enabled) {
      _opacity = max(_opacity - _expansionSpeed * dt, 0.0);
      _expansion = max(_expansion - _expansionSpeed * dt, 0.0);
      final color = theme.cover.darken(0.1).withOpacity(_opacity);
      paint.colorFilter = ColorFilter.mode(color, BlendMode.srcIn);
    } else {
      _opacity = min(_opacity + _expansionSpeed * dt, _maxOpacity);
      _expansion = min(_expansion + _expansionSpeed * dt, _maxExpansion);
      final color = theme.cover.darken(0.1).withOpacity(0.5);
      paint.colorFilter = ColorFilter.mode(color, BlendMode.srcIn);
    }
  }

  @override
  Future<void> onLoad() async {
    atlas = await gameRef.images.load(skin.skin);
    sprite = Sprite(
      atlas,
      srcPosition: Vector2(
        0 * ComponentConstants.spriteSize,
        2 * ComponentConstants.spriteSize,
      ),
      srcSize: ComponentConstants.srcSize,
    );
  }

  get hoverForm => rectOf(0, 2);

  Rect rectOf(int x, int y) {
    return Rect.fromLTWH(
      x * ComponentConstants.spriteSize,
      y * ComponentConstants.spriteSize,
      ComponentConstants.spriteSize,
      ComponentConstants.spriteSize,
    );
  }

  static const _spriteSizeExpanded = ComponentConstants.spriteSize * 0.05;
  static const _maxExpansion = 0.5;
  static const _maxOpacity = 0.5;
  static const _expansionSpeed = 4;
}
