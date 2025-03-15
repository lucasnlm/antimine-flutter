class DateTimeProvider {
  DateTime now() => DateTime.now();

  int nowInMilliseconds() => now().millisecondsSinceEpoch;
}
