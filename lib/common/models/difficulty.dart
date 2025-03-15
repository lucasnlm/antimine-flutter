enum Difficulty {
  standard('STANDARD'),
  beginner('BEGINNER'),
  intermediate('INTERMEDIATE'),
  expert('EXPERT'),
  custom('CUSTOM'),
  master('MASTER'),
  legend('LEGEND'),
  fixedSize('FIXED_SIZE');

  final String id;

  const Difficulty(this.id);
}
