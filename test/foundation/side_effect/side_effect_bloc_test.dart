import 'package:antimine/foundation/side_effect/side_effect_bloc.dart';
import 'package:antimine/foundation/side_effect/side_effect_event.dart';

import '../../helpers/bloc/bloc_tester.dart';

class _SideEffectA extends SideEffectEvent {}

class _SideEffectB extends SideEffectEvent {}

void main() {
  blocTest(
    'sideEffect is initially null',
    build: () => SideEffectBloc(),
    act: (bloc) {},
    skip: 0,
    validation: (emittedStates) => [emittedStates[0] == null],
  );

  blocTest(
    'sideEffect emission',
    build: () => SideEffectBloc(),
    act: (bloc) {
      bloc.emit(_SideEffectA());
      bloc.emit(_SideEffectB());
    },
    validation: (emittedStates) => [
      emittedStates[0] is _SideEffectA,
      emittedStates[1] is _SideEffectB,
    ],
  );

  blocTest(
    'sideEffect emission with repeated events',
    build: () => SideEffectBloc(),
    act: (bloc) {
      bloc.emit(_SideEffectA());
      bloc.emit(_SideEffectA());
    },
    validation: (emittedStates) => [
      emittedStates[0] is _SideEffectA,
      emittedStates[1] is _SideEffectA,
    ],
  );
}
