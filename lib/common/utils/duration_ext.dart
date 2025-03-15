extension DurationExt on Duration {
  /// Format Duration in the format HH:mm:ss.
  /// If Hours is zero, the format will be mm:ss.
  String toFormattedString() {
    final hours = inHours;
    final minutes = inMinutes.remainder(60);
    final seconds = inSeconds.remainder(60);
    final hoursStr = hours.toString().padLeft(2, '0');
    final minutesStr = minutes.toString().padLeft(2, '0');
    final secondsStr = seconds.toString().padLeft(2, '0');
    if (hours > 0) {
      return '$hoursStr:$minutesStr:$secondsStr';
    } else {
      return '$minutesStr:$secondsStr';
    }
  }
}
