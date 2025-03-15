/// Used for indicate the different marks that can be used in the areas.
///
/// [none] is the default mark. User did not interact with the area.
/// [flag] is used to indicate that the user thinks there is a mine in the area.
/// [question] is used to indicate that the user is not sure if there is a mine in the area.
/// [forcedNone] is used when user directly force to mark that area as none.
enum Mark {
  none(0),
  flag(1),
  question(2),
  forcedNone(0);

  const Mark(this.mask);

  final int mask;

  bool get isFlag => this == Mark.flag;

  bool get isNone => this == Mark.none || this == Mark.forcedNone;

  bool get isNotNone => !isNone;

  static Mark fromId(int mask) {
    switch (mask) {
      case 0:
        return Mark.none;
      case 1:
        return Mark.flag;
      case 2:
        return Mark.question;
      default:
        throw ArgumentError.value(mask, 'mask', 'Invalid mask');
    }
  }
}
