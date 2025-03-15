import 'dart:async';
import 'dart:ui';

import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/widgets.dart';

import '../../../common/models/game_settings.dart';
import '../../../common/models/input/game_input.dart';
import '../../../common/models/skins/skin.dart';
import '../../../common/models/themes/game_theme.dart';
import '../../../foundation/side_effect/side_effect_bloc.dart';
import '../../../foundation/side_effect/side_effect_event.dart';
import '../bloc/game_bloc.dart';
import '../bloc/game_state.dart';

import '../screen/game_params.dart';
import 'components/camera_center_component.dart';
import 'components/cover_layer_component.dart';
import 'components/ground_layer_component.dart';
import 'components/hover_component.dart';
import 'components/icons_layer_component.dart';
import 'components/share_component.dart';

class GameRenderer extends FlameGame
    with ScaleDetector, ScrollDetector, TapCallbacks, DoubleTapDetector {
  GameRenderer({
    required this.gameBloc,
    required this.sideEffectBloc,
    required this.skin,
    required this.theme,
    required this.areaSize,
    required this.settings,
  });

  final GameBloc gameBloc;
  final SideEffectBloc sideEffectBloc;
  final Skin skin;
  final GameTheme theme;
  final double areaSize;
  final GameSettings settings;

  late CameraCenterComponent cameraCenter;
  late HoverComponent hoverComponent;
  late CoverLayerComponent coverComponent;
  late GroundLayerComponent groundComponent;
  late IconsLayerComponent iconsComponent;
  late ShareComponent shareComponent;
  late FlameMultiBlocProvider blocComponent;

  late bool isPortrait;
  late GameParams params;
  late double appBarHeight;

  double _startZoom = 1.0;
  bool _engineReady = false;
  bool _consumeInput = false;
  Vector2? _lastInputPosition;
  double? _lastInteractionTime;

  /// The size of the screen.
  Vector2 get screenSize => camera.viewport.size;

  @override
  Color backgroundColor() {
    return theme.background;
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    gameBloc.onScreenResize(size);
  }

  @override
  void update(double dt) {
    super.update(dt);

    final lastInteractionTime = _lastInteractionTime;
    if (lastInteractionTime != null) {
      final diff = currentTime() - lastInteractionTime;
      if (diff > _idleThreshold) {
        _lastInteractionTime = null;
        pauseEngine();
        debugPrint('> Idle for $diff seconds, pausing engine');
      }
    } else if (paused) {
      resumeEngine();
      debugPrint('> Resuming engine');
    }
  }

  void pauseEngineWhenIdle() {
    resumeEngine();
    _lastInteractionTime = currentTime();
  }

  void updateGame(
    GameParams params,
    bool isPortrait,
    double appBarHeight,
  ) {
    this.isPortrait = isPortrait;
    this.params = params;
    this.appBarHeight = appBarHeight;
  }

  @override
  void onDetach() {
    super.onDetach();
    for (final child in children) {
      child.removeFromParent();
    }

    world.removeAll(world.children);
    world.removeFromParent();

    groundComponent.removeFromParent();
    groundComponent.onRemove();
    coverComponent.removeFromParent();
    coverComponent.onRemove();
    iconsComponent.removeFromParent();
    iconsComponent.onRemove();
    hoverComponent.removeFromParent();
    hoverComponent.onRemove();
    cameraCenter.removeFromParent();
    cameraCenter.onRemove();
    shareComponent.removeFromParent();
    shareComponent.onRemove();
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();

    world.add(
      FlameMultiBlocProvider(
        providers: [
          FlameBlocProvider<GameBloc, GameState>.value(
            value: gameBloc,
          ),
          FlameBlocProvider<SideEffectBloc, SideEffectEvent?>.value(
            value: sideEffectBloc,
          ),
        ],
        children: [
          groundComponent = GroundLayerComponent(
            areaSize: areaSize,
            skin: skin,
            theme: theme,
          ),
          coverComponent = CoverLayerComponent(
            areaSize: areaSize,
            skin: skin,
            theme: theme,
          ),
          iconsComponent = IconsLayerComponent(
            areaSize: areaSize,
            skin: skin,
            theme: theme,
          ),
          hoverComponent = HoverComponent(
            areaSize: areaSize,
            skin: skin,
            theme: theme,
          ),
          cameraCenter = CameraCenterComponent(
            isPortrait: isPortrait,
            appBarHeight: appBarHeight,
            areaSize: areaSize,
          ),
          shareComponent = ShareComponent(),
        ],
      ),
    );

    coverComponent.visible = false;
    groundComponent.visible = false;
    iconsComponent.visible = false;

    coverComponent.onNewState(gameBloc.state);
    groundComponent.onNewState(gameBloc.state);
    iconsComponent.onNewState(gameBloc.state);

    Future.wait([
      groundComponent.mounted,
      coverComponent.mounted,
      hoverComponent.mounted,
      iconsComponent.mounted,
      cameraCenter.mounted,
      shareComponent.mounted,
    ]).then((_) => engineReady());
  }

  void engineReady() {
    cameraCenter.onNewState(gameBloc.state);
    _engineReady = true;
    _startGame();
  }

  void _startGame() {
    final cameraPosition = settings.cameraPosition;
    if (cameraPosition != null && !params.isPreview) {
      cameraCenter.position = cameraPosition;
    } else {
      cameraCenter.position = Vector2.zero();
    }

    if (params.isPreview) {
      gameBloc.loadPreviewGame(params.saveId);
    } else if (params.saveId != null || gameBloc.state.id != null) {
      final id = params.saveId ?? gameBloc.state.id;
      if (params.restart) {
        gameBloc.restartSaveGame(id);
      } else {
        gameBloc.continueSaveGame(id);
      }
    } else if (params.isContinue) {
      gameBloc.continueSaveGame();
    } else {
      gameBloc.newGame(
        difficulty: params.difficulty,
        seed: params.seed,
        initialPosition: params.initialPosition,
      );
    }

    final cameraZoom = settings.cameraZoom;
    if (cameraZoom != null && !params.isPreview) {
      camera.viewfinder.zoom = cameraZoom;
    }

    coverComponent.visible = true;
    groundComponent.visible = true;
    iconsComponent.visible = true;
  }

  void _changeCameraZoom(double zoom) {
    if (zoom > _maxZoom) {
      zoom = _maxZoom;
    } else if (zoom < _minZoom) {
      zoom = _minZoom;
    }
    camera.viewfinder.zoom = zoom;
  }

  Vector2 _getGlobalPosition(Vector2 localPosition) {
    final zoom = camera.viewfinder.zoom;
    final adjustedScreenSize = screenSize * 0.5 / zoom;
    final adjustedLocalPosition = localPosition / zoom;
    return cameraCenter.position + adjustedLocalPosition - adjustedScreenSize;
  }

  Vector2 _getAreaCoordinates(Vector2 localPosition) {
    final minefield = gameBloc.state.minefield.vecSize;
    final cameraFix = minefield * areaSize * 0.5;
    final globalPosition = _getGlobalPosition(localPosition) + cameraFix;
    return Vector2(
      (globalPosition.x ~/ areaSize).toDouble(),
      (globalPosition.y ~/ areaSize).toDouble(),
    );
  }

  @override
  void onScaleStart(info) {
    pauseEngineWhenIdle();
    _startZoom = camera.viewfinder.zoom;
  }

  @override
  void onScaleUpdate(ScaleUpdateInfo info) {
    pauseEngineWhenIdle();

    // Consume any event if the camera is moving.
    _consumeInput = true;

    // ScaleDetector handles both scale and pan gestures.
    final minefield = gameBloc.state.minefield;
    final currentScale = info.scale.global;
    if (!currentScale.isIdentity()) {
      // Scale gesture
      _changeCameraZoom(_startZoom * currentScale.y);
    } else {
      // Pan gesture
      cameraCenter.changeCameraPosition(
        minefield,
        info.delta.global.x,
        info.delta.global.y,
      );
    }
  }

  @override
  void onScaleEnd(ScaleEndInfo info) {
    gameBloc.saveCameraState(
      position: cameraCenter.position,
      zoom: _startZoom,
    );
  }

  @override
  void onScroll(PointerScrollInfo info) {
    pauseEngineWhenIdle();
    bool isZoomIn = info.scrollDelta.global.y.isNegative;
    if (isZoomIn) {
      _changeCameraZoom(camera.viewfinder.zoom * _zoomThresholdOnScroll);
    } else {
      _changeCameraZoom(camera.viewfinder.zoom / _zoomThresholdOnScroll);
    }
  }

  @override
  void onTapDown(TapDownEvent event) async {
    resumeEngine();
    final target = _getAreaCoordinates(event.localPosition);

    final minefield = gameBloc.state.minefield;
    if (minefield.contains(target.x, target.y)) {
      _consumeInput = false;
      _lastInputPosition = event.localPosition;

      hoverComponent
        ..enabled = _engineReady
        ..position = target * areaSize;
    } else {
      hoverComponent.enabled = false;
    }

    /// When using control switcher, we can trigger the action on tap down.
    /// But, we need to wait a little bit to see if the user is moving the
    /// camera or not.
    final controlType = settings.controlType;
    if (controlType == GameInput.type5.id) {
      final lastInputPosition = _lastInputPosition;
      await Future.delayed(
        const Duration(
          milliseconds: _tapMinDurationMs,
        ),
      );
      if (!_consumeInput && _lastInputPosition == lastInputPosition) {
        _consumeTapUp(event.localPosition);
        _consumeInput = true;
      }
    }
  }

  @override
  void onTapUp(TapUpEvent event) {
    _consumeTapUp(event.localPosition);
  }

  void _consumeTapUp(Vector2 localPosition) {
    pauseEngineWhenIdle();
    hoverComponent.enabled = false;
    final lastInputPosition = _lastInputPosition;
    if (lastInputPosition != null && !_consumeInput) {
      _consumeInput = true;
      final target = _getAreaCoordinates(localPosition);
      gameBloc.tapArea(target, theme.connectAreas);
      _lastInputPosition = null;
    }
  }

  @override
  void onTapCancel(TapCancelEvent event) {
    hoverComponent.enabled = false;
    _consumeInput = true;
  }

  @override
  void onLongTapDown(TapDownEvent event) {
    pauseEngineWhenIdle();
    final target = _getAreaCoordinates(event.localPosition);
    _consumeInput = true;
    gameBloc.longTapArea(target);
    hoverComponent.enabled = false;
  }

  @override
  void onDoubleTapDown(TapDownInfo info) {
    pauseEngineWhenIdle();
    hoverComponent.enabled = _engineReady;
    _lastInputPosition = info.eventPosition.global;
  }

  @override
  void onDoubleTap() {
    pauseEngineWhenIdle();
    final lastInputPosition = _lastInputPosition;
    if (lastInputPosition != null) {
      _consumeInput = true;
      hoverComponent.enabled = false;
      final target = _getAreaCoordinates(lastInputPosition);
      gameBloc.doubleTapArea(target);
      _lastInputPosition = null;
    }
  }

  @override
  void lifecycleStateChange(AppLifecycleState state) {
    super.lifecycleStateChange(state);

    switch (state) {
      case AppLifecycleState.resumed:
      case AppLifecycleState.inactive:
        gameBloc.onResumeEngine();
        break;
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        gameBloc.onPauseEngine();
        break;
    }
  }

  void shareGame({
    required String hash,
    required String minefieldSize,
  }) async {
    resumeEngine();

    final minefield = gameBloc.state.minefield;
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder);
    final paint = Paint()..color = theme.background;
    final padding = areaSize;

    String title;
    if (minefield.width >= 20) {
      title = 'Antimine Minesweeper - $minefieldSize\n$hash';
    } else {
      title = 'Antimine - $minefieldSize\n$hash';
    }

    final width = (areaSize * minefield.width + padding * 2).toInt();
    final height = (areaSize * minefield.height + padding * 3.5).toInt();

    canvas.drawRect(
      Rect.fromLTWH(0, 0, width.toDouble(), height.toDouble()),
      paint,
    );
    canvas.translate(width * 0.5, height * 0.5 + padding * 0.5);

    groundComponent.render(canvas);
    coverComponent.render(canvas);
    iconsComponent.render(canvas);

    TextSpan span = TextSpan(
      style: TextStyle(
        color: theme.cover,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      text: title,
    );
    TextPainter textPainter = TextPainter(
      text: span,
      textAlign: TextAlign.start,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(
        -width * 0.5 + padding,
        -height * 0.5 + padding * 0.33,
      ),
    );

    debugPrint('> Generating share picture to $hash...');

    final picture = recorder.endRecording();
    final image = await picture.toImage(width, height);
    final pngByteData = await image.toByteData(format: ImageByteFormat.png);
    if (pngByteData != null) {
      await gameBloc.sharePicture(pngByteData);
    }
  }

  /// The zoom factor to apply when scrolling.
  static const double _zoomThresholdOnScroll = 1.1;
  static const double _maxZoom = 5.0;
  static const double _minZoom = 0.3;
  static const double _idleThreshold = 2.0;
  static const int _tapMinDurationMs = 200;
}
