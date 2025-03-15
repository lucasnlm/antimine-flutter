import '../../../common/models/stats.dart';

extension StatsListExt on Iterable<Stats> {
  Iterable<Stats> victories() {
    return where((e) => e.victory == 1);
  }

  int sumMines() {
    return fold<int>(0, (prev, e) => prev + e.mines);
  }

  int sumOpenArea() {
    return fold<int>(0, (prev, e) => prev + e.openArea);
  }

  int sumDuration() {
    return fold<int>(0, (prev, e) => prev + e.duration);
  }

  int? minDuration() {
    final result = fold<int>(
      _intMaxValue,
      (prev, e) => prev < e.duration ? prev : e.duration,
    );
    return result == _intMaxValue ? null : result;
  }

  static const int _intMaxValue = -1 >>> 1;
}
