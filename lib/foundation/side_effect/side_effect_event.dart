abstract class SideEffectEvent {
  /// Side Effects are not supposed to be compared.
  @override
  bool operator ==(Object other) => false;

  @override
  int get hashCode => DateTime.timestamp().millisecondsSinceEpoch;
}
