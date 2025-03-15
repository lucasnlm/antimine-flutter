import 'package:equatable/equatable.dart';

class Neighbours extends Equatable {
  final int topId;
  final int bottomId;
  final int leftId;
  final int rightId;
  final int topLeftId;
  final int topRightId;
  final int bottomLeftId;
  final int bottomRightId;

  const Neighbours({
    this.topId = noLink,
    this.bottomId = noLink,
    this.leftId = noLink,
    this.rightId = noLink,
    this.topLeftId = noLink,
    this.topRightId = noLink,
    this.bottomLeftId = noLink,
    this.bottomRightId = noLink,
  });

  List<int> get list =>
      [
        topId,
        bottomId,
        leftId,
        rightId,
        topLeftId,
        topRightId,
        bottomLeftId,
        bottomRightId,
      ].where((e) => e >= 0).toList();

  @override
  List<Object?> get props => [
    topId,
    bottomId,
    leftId,
    rightId,
    topLeftId,
    topRightId,
    bottomLeftId,
    bottomRightId,
  ];

  @override
  bool get stringify => true;

  static const int noLink = -1;
}
