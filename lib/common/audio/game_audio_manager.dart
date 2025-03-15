import 'package:flame_audio/bgm.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/cupertino.dart';

import '../settings/settings_manager.dart';
import 'game_audio.dart';

class GameAudioManager {
  GameAudioManager({
    required this.settingsManager,
    AudioCache? audioCache,
    Bgm? bgm,
  })  : audioCache = audioCache ?? FlameAudio.audioCache,
        bgm = bgm ?? FlameAudio.bgm;

  final AudioCache audioCache;
  final Bgm bgm;
  final SettingsManager settingsManager;

  Future<void> preLoad() async {
    final settings = settingsManager.cache;
    try {
      if (settings.music) {
        await audioCache.load(GameAudio.music);
      } else {
        await audioCache.clear(GameAudio.music);
      }
    } catch (e) {
      debugPrint('Error preloading music: $e');
    }
  }

  void playMusic({bool restart = false}) async {
    final settings = settingsManager.cache;
    final currentState = bgm.audioPlayer.state;
    if (settings.music && currentState != PlayerState.playing) {
      try {
        if (!restart && currentState == PlayerState.paused) {
          await bgm.resume();
        } else {
          await bgm.play(GameAudio.music, volume: 0.5);
        }
      } catch (e) {
        debugPrint('Error playing music: $e');
      }
    }
  }

  bool isMusicPlaying() {
    return bgm.audioPlayer.state == PlayerState.playing;
  }

  void pauseMusic() async {
    try {
      await bgm.stop();
    } catch (e) {
      debugPrint('Error pausing music: $e');
    }
  }

  void playBombExplosion() async {
    final settings = settingsManager.cache;
    if (settings.soundEffects) {
      _playAndDispose(GameAudio.bombExplosion);
    }
  }

  void playOpenArea() async {
    final settings = settingsManager.cache;
    if (settings.soundEffects) {
      final audioFiles = [
        GameAudio.openArea0,
        GameAudio.openArea1,
        GameAudio.openArea2,
        GameAudio.openArea3,
        GameAudio.openMultiple0,
        GameAudio.openMultiple1,
        GameAudio.openMultiple2,
      ]..shuffle();
      _playAndDispose(audioFiles.first);
    }
  }

  void playFlag() async {
    final settings = settingsManager.cache;
    if (settings.soundEffects) {
      final audioFiles = [
        GameAudio.putFlag0,
        GameAudio.putFlag1,
        GameAudio.putFlag2,
      ]..shuffle();
      _playAndDispose(audioFiles.first);
    }
  }

  void playWin() async {
    final settings = settingsManager.cache;
    if (settings.soundEffects) {
      _playAndDispose(GameAudio.win);
    }
  }

  void playRevealMine() {
    final settings = settingsManager.cache;
    if (settings.soundEffects) {
      final audioFiles = [
        GameAudio.revealMine0,
        GameAudio.revealMine1,
        GameAudio.revealMine2,
      ]..shuffle();
      _playAndDispose(audioFiles.first);
    }
  }

  void _playAndDispose(String fileName) async {
    try {
      final player = await FlameAudio.play(fileName);
      player.onPlayerComplete.listen((_) {
        player.release();
        player.dispose();
      });
    } catch (e) {
      debugPrint('Error playing audio: $e');
    }
  }
}
