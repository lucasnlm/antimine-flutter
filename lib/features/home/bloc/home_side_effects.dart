import '../../../common/models/difficulty.dart';
import '../../../foundation/side_effect/side_effect_event.dart';

class StartNewGameSideEffect extends SideEffectEvent {
  StartNewGameSideEffect({
    this.difficulty,
  });

  final Difficulty? difficulty;
}
