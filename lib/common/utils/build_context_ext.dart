import 'package:flutter/material.dart';

bool get isTablet {
  final firstView = WidgetsBinding.instance.platformDispatcher.views.first;
  final logicalShortestSide =
      firstView.physicalSize.shortestSide / firstView.devicePixelRatio;
  return logicalShortestSide > 600;
}
