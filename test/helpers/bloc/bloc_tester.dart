import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meta/meta.dart';

/// Custom blocTest to test bloc.
/// I'm not using the bloc_test package because of versioning issues.
@isTest
void blocTest<B extends Cubit<S>, S>(
  String message, {
  required B Function() build,
  required void Function(B bloc) act,
  required List<bool> Function(List<S> bloc) validation,
  int skip = 1,
}) async {
  test(message, () async {
    final bloc = build();
    final emittedStates = <S>[bloc.state];
    bloc.stream.listen(emittedStates.add);
    act(bloc);
    bloc.close();
    await Future.delayed(Duration.zero);
    final emittedToCompare = emittedStates.skip(skip).toList();
    final result = validation(emittedToCompare);
    expect(result.every((e) => e == true), isTrue);
  });
}
