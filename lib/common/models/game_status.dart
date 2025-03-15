enum GameStatus {
  notStarted(-1),
  inProgress(0),
  success(1),
  failure(2);

  const GameStatus(this.id);

  final int id;

  static GameStatus fromId(int id) {
    switch (id) {
      case -1:
        return GameStatus.notStarted;
      case 0:
        return GameStatus.inProgress;
      case 1:
        return GameStatus.success;
      case 2:
        return GameStatus.failure;
      default:
        throw Exception('Unknown GameStatus id: $id');
    }
  }
}
