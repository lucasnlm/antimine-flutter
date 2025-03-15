import 'package:equatable/equatable.dart';

class Form extends Equatable {
  final bool top;
  final bool bottom;
  final bool left;
  final bool right;
  final bool topLeft;
  final bool topRight;
  final bool bottomLeft;
  final bool bottomRight;

  const Form({
    this.top = false,
    this.bottom = false,
    this.left = false,
    this.right = false,
    this.topLeft = false,
    this.topRight = false,
    this.bottomLeft = false,
    this.bottomRight = false,
  });

  bool get isFull =>
      top &&
      bottom &&
      left &&
      right &&
      topLeft &&
      topRight &&
      bottomLeft &&
      bottomRight;

  bool get isNone =>
      !top &&
      !bottom &&
      !left &&
      !right &&
      !topLeft &&
      !topRight &&
      !bottomLeft &&
      !bottomRight;

  @override
  List<Object?> get props => [
    top,
    bottom,
    left,
    right,
    topLeft,
    topRight,
    bottomLeft,
    bottomRight,
  ];

  static Form getFormByPosition(int x, int y, int width, int height) {
    return Form(
      top: y != 0,
      bottom: y != height - 1,
      left: x != 0,
      right: x != width - 1,
      topLeft: x != 0 && y != 0,
      topRight: x != width - 1 && y != 0,
      bottomLeft: x != 0 && y != height - 1,
      bottomRight: x != width - 1 && y != height - 1,
    );
  }
}
