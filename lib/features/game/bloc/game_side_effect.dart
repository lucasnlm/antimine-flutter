import '../../../foundation/side_effect/side_effect_event.dart';

class NoMoreHintsEffect extends SideEffectEvent {}

class VictoryEffect extends SideEffectEvent {}

class GameOverEffect extends SideEffectEvent {}

class ShareGameRequestEffect extends SideEffectEvent {}

class ShareGameImageEffect extends SideEffectEvent {
  ShareGameImageEffect({required this.hash, required this.minefieldSize});

  final String hash;
  final String minefieldSize;
}

class ShareFailedEffect extends SideEffectEvent {}
