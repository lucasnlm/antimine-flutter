import 'package:flame/components.dart';
import 'package:flame_bloc/flame_bloc.dart';

import '../../../../foundation/side_effect/side_effect_bloc.dart';
import '../../../../foundation/side_effect/side_effect_event.dart';
import '../../bloc/game_side_effect.dart';
import '../../flame/game_renderer.dart';

class ShareComponent extends Component
    with
        HasGameRef<GameRenderer>,
        FlameBlocListenable<SideEffectBloc, SideEffectEvent?> {
  @override
  bool listenWhen(SideEffectEvent? previousState, SideEffectEvent? newState) {
    return newState is ShareGameImageEffect;
  }

  @override
  void onNewState(SideEffectEvent? state) {
    if (state is ShareGameImageEffect) {
      gameRef.shareGame(
        hash: state.hash,
        minefieldSize: state.minefieldSize,
      );
    }
  }
}
