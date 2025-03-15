import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../../../common/models/minefield.dart';
import '../flame/components/component_constants.dart';

class BatchList {
  BatchList({
    required double areaSize,
    required this.minefield,
  }) : areaSize = areaSize.roundToDouble();

  final List<RSTransform> _transforms = List.empty(growable: true);
  final List<Rect> _rects = List.empty(growable: true);
  final List<Color> _colors = List.empty(growable: true);

  double _x = 0;
  double _y = 0;
  Color color = Colors.white;

  final double areaSize;
  final Minefield minefield;

  List<RSTransform> get transforms => _transforms;
  List<Rect> get rects => _rects;
  List<Color> get colors => _colors;
  Vector2 get position => Vector2(_x.toDouble(), _y.toDouble());

  set x(double x) {
    _x = x;
  }

  set y(double y) {
    _y = y;
  }

  void add(
    Rect rect, [
    int padding = 0,
    double dx = 0.0,
    double dy = 0.0,
  ]) {
    transforms.add(_transformOf(_x, _y, padding, dx, dy));
    rects.add(rect);
    colors.add(color);
  }

  RSTransform _transformOf(
    double x,
    double y, [
    int padding = 0,
    double dx = 0.0,
    double dy = 0.0,
  ]) {
    final areaSize = this.areaSize;
    final scale = (areaSize - padding + extraPadding).toDouble() /
        ComponentConstants.spriteSize;
    final double tx = (x + dx) * areaSize -
        extraPadding2 +
        padding * 0.5 -
        minefield.width * areaSize * 0.5;
    final double ty = (y + dy) * areaSize -
        extraPadding2 +
        padding * 0.5 -
        minefield.height * areaSize * 0.5;
    return RSTransform(scale, 0.0, tx, ty);
  }

  static const extraPadding = 0.5;
  static const extraPadding2 = extraPadding * 0.5;
}
