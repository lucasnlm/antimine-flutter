import 'package:equatable/equatable.dart';

import '../../../common/models/difficulty.dart';

class HomeState extends Equatable {
  const HomeState({
    this.newGameExpanded = false,
    this.setShowContinueGame = false,
    this.difficulties = const {},
  });

  final bool newGameExpanded;
  final bool setShowContinueGame;
  final Map<Difficulty, String> difficulties;

  String stringDifficulty(Difficulty difficulty) {
    return difficulties[difficulty] ?? '';
  }

  HomeState copyWith({
    bool? newGameExpanded,
    bool? setShowContinueGame,
    Map<Difficulty, String>? difficulties,
  }) {
    return HomeState(
      setShowContinueGame: setShowContinueGame ?? this.setShowContinueGame,
      newGameExpanded: newGameExpanded ?? this.newGameExpanded,
      difficulties: difficulties ?? this.difficulties,
    );
  }

  @override
  List<Object?> get props => [
    newGameExpanded,
    setShowContinueGame,
    difficulties,
  ];
}
