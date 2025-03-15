import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame_bloc/flame_bloc.dart';

import '../../../../common/models/minefield.dart';
import '../../bloc/game_bloc.dart';
import '../../bloc/game_state.dart';
import '../../flame/game_renderer.dart';
import '../../logic/game_constants.dart';

class CameraCenterComponent extends Component
    with HasGameRef<GameRenderer>, FlameBlocListenable<GameBloc, GameState>
    implements ReadOnlyPositionProvider {
  final double appBarHeight;
  final bool isPortrait;
  final double areaSize;

  Vector2 _position = Vector2.zero();
  Vector2? _screenSize;
  String? _lastId;

  CameraCenterComponent({
    required this.appBarHeight,
    required this.isPortrait,
    required this.areaSize,
  });

  /// The size of the screen.
  Vector2 get screenSize => gameRef.camera.viewport.size;

  @override
  void onNewState(GameState state) {
    if (state.turn == 0 ||
        _screenSize != state.screenSize ||
        state.id != _lastId) {
      position = state.cameraPosition ?? Vector2.zero();
      _screenSize = state.screenSize;
      _lastId = state.id;
      _setupCamera();
    }
  }

  void _setupCamera() {
    gameRef.camera.follow(this, snap: true);
    gameRef.camera.viewfinder.zoom = 1.0;
    bloc.changeCameraPosition(position);
  }

  void changeCameraPosition(Minefield minefield, double newX, double newY) {
    final controlSwitcherPadding = Vector2(0.0, appBarHeight * 2);
    final minefieldSize = _minefieldSizeOf(minefield) + controlSwitcherPadding;
    final initialCameraPos = position;
    final currentZoom = gameRef.camera.viewfinder.zoom;

    final screenSize = this.screenSize;
    final minefieldWidth = minefieldSize.x / currentZoom;
    final minefieldHeight = minefieldSize.y / currentZoom;

    final centerPosition = Vector2.zero();

    double horizontalBound = minefieldWidth * currentZoom * 0.5;
    double verticalBound = minefieldHeight * currentZoom * 0.5;

    newX = initialCameraPos.x - newX / currentZoom;
    if ((centerPosition.x - newX).abs() > horizontalBound) {
      newX = initialCameraPos.x;
    }

    newY = initialCameraPos.y - newY / currentZoom;
    if ((centerPosition.y - newY).abs() > verticalBound) {
      newY = initialCameraPos.y;
    }

    if (GameConstants.lockSmallGamesOnScreen) {
      if (screenSize.x > (minefieldSize.x * currentZoom)) {
        newX = centerPosition.x;
      }

      if (screenSize.y > (minefieldSize.y * currentZoom)) {
        newY = centerPosition.y;
      }
    }

    position = Vector2(newX, newY);

    bloc.changeCameraPosition(position);
  }

  Vector2 _minefieldSizeOf(Minefield minefield) {
    return Vector2(minefield.width * areaSize, minefield.height * areaSize);
  }

  @override
  Vector2 get position => _position;

  set position(Vector2 value) {
    _position = value;
  }
}
