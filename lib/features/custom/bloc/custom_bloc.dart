import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/hash/game_hash.dart';
import '../../../common/hash/hash_manager.dart';
import '../../../common/settings/settings_manager.dart';
import 'custom_state.dart';

class CustomBloc extends Cubit<CustomState> {
  CustomBloc({required this.settingsManager, required this.hashManager})
    : super(
        CustomState(
          width: settingsManager.cache.customWidth,
          height: settingsManager.cache.customHeight,
          mines: settingsManager.cache.customMines,
          hashBase: settingsManager.cache.hashBase ?? '',
          hashSeed: settingsManager.cache.hashSeed ?? '',
          minDimension: _minValue,
          maxDimension: _maxValue,
          minMines: _minMinesValue,
          maxMinesProportion: _maxMinesProportion,
        ),
      );

  final HashManager hashManager;
  final SettingsManager settingsManager;

  void pasteHash() async {
    ClipboardData? cdata = await Clipboard.getData(Clipboard.kTextPlain);
    String? copiedHash = cdata?.text?.trim();
    if (copiedHash != null && copiedHash.isNotEmpty) {
      setHash(copiedHash);
    }
  }

  void setHash(String hash) {
    GameHash? gameHash;
    if (hash.isNotEmpty) {
      gameHash = hashManager.parseHash(hash);
      if (gameHash != null) {
        emit(
          state.copyWith(
            hashBase: gameHash.hashBase,
            hashSeed: gameHash.hashSeed,
            gameHash: gameHash,
            fromClipboard: true,
            validHash: true,
            width: gameHash.minefield.width,
            height: gameHash.minefield.height,
            mines: gameHash.minefield.mines,
          ),
        );
      }
    }
  }

  void clearClipboard() {
    emit(state.copyWith(fromClipboard: false));
  }

  void setWidth(int width) {
    emit(state.copyWith(width: width));
  }

  void setHeight(int height) {
    emit(state.copyWith(height: height));
  }

  void setMines(int mines) {
    emit(state.copyWith(mines: mines));
  }

  void setSeed(int seed) {
    emit(state.copyWith(seed: seed));
  }

  void setHashBase(String base) {
    final gameHash = hashManager.parseHash('$base:${state.hashSeed}');
    emit(
      state.copyWith(
        hashBase: base,
        gameHash: gameHash,
        validHash: gameHash != null,
        width: gameHash?.minefield.width ?? 0,
        height: gameHash?.minefield.height ?? 0,
        mines: gameHash?.minefield.mines ?? 0,
      ),
    );
  }

  void setHashSeed(String seed) {
    final gameHash = hashManager.parseHash('${state.hashBase}:$seed');
    emit(
      state.copyWith(
        hashSeed: seed,
        gameHash: gameHash,
        validHash: gameHash != null,
        width: gameHash?.minefield.width ?? 0,
        height: gameHash?.minefield.height ?? 0,
        mines: gameHash?.minefield.mines ?? 0,
      ),
    );
  }

  void saveCustom() {
    settingsManager.setCustomMines(state.mines);
    settingsManager.setCustomWidth(state.width);
    settingsManager.setCustomHeight(state.height);
  }

  void saveHashes() {
    settingsManager.setHashBase(state.hashBase);
    settingsManager.setHashSeed(state.hashSeed);
  }

  static const int _minValue = 5;
  static const int _maxValue = 100;
  static const int _minMinesValue = 1;
  static const double _maxMinesProportion = 0.8;
}
