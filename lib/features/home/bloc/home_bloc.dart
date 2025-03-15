import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/minefield/minefield_manager.dart';
import '../../../common/models/difficulty.dart';
import '../../../common/settings/settings_manager.dart';
import '../../../common/update/in_app_update_manager.dart';
import '../../../foundation/io/save_file_manager.dart';
import '../../../foundation/side_effect/side_effect_bloc.dart';
import 'home_side_effects.dart';
import 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc({
    required this.minefieldManager,
    required this.sideEffectBloc,
    required this.saveFileManager,
    required this.settingsManager,
    required this.inAppUpdateManager,
  }) : super(
         HomeState(
           setShowContinueGame: settingsManager.cache.showContinueGame,
           difficulties: getDifficulties(minefieldManager),
         ),
       );

  final SideEffectBloc sideEffectBloc;
  final MinefieldManager minefieldManager;
  final SaveFileManager saveFileManager;
  final SettingsManager settingsManager;
  final InAppUpdateManager inAppUpdateManager;

  void init() async {
    inAppUpdateManager.checkForUpdate();

    if (!state.setShowContinueGame) {
      if (!settingsManager.cache.showContinueGame) {
        if (saveFileManager.saveListCache.isNotEmpty) {
          settingsManager.setShowContinueGame(true);
        }
      }
    }
  }

  void expandNewGame() {
    emit(state.copyWith(newGameExpanded: true));
  }

  void newGameStarted() {
    emit(state.copyWith(setShowContinueGame: true));
  }

  void startGame() {
    sideEffectBloc.emit(StartNewGameSideEffect());
  }

  void startNewGame(Difficulty difficulty) {
    sideEffectBloc.emit(StartNewGameSideEffect(difficulty: difficulty));
  }

  static Map<Difficulty, String> getDifficulties(
    MinefieldManager minefieldManager,
  ) {
    final entries = Difficulty.values.map(
      (e) =>
          MapEntry<Difficulty, String>(e, minefieldManager.formatToString(e)),
    );
    return {for (var e in entries) e.key: e.value};
  }
}
