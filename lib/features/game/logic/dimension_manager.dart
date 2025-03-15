import 'dart:math';
import 'dart:io';
import 'package:antimine/common/utils/build_context_ext.dart';
import 'package:flutter/material.dart';

class DimensionManager {
  DimensionManager({
    bool? isMobile,
  }) : isMobile = isMobile ?? _isMobile();

  late Size screenSize;
  final bool isMobile;

  void init({
    required Size screenSize,
  }) {
    this.screenSize = screenSize;
  }

  double appBarHeight(BuildContext context) {
    return Scaffold.of(context).appBarMaxHeight ?? 0;
  }

  double calcAreaSize() {
    final areaColumns = isTablet ? 20 : 12;
    final size = screenSize;
    final width = size.width;
    final height = size.height;
    return max(min(width, height) / areaColumns, 35);
  }

  Size standardMinefieldSize() {
    final areaSize = calcAreaSize();
    final width = screenSize.width ~/ areaSize - 1;
    final height = screenSize.height ~/ areaSize - 7;
    return Size(width.toDouble(), height.toDouble());
  }

  static bool _isMobile() {
    return Platform.isAndroid || Platform.isIOS || Platform.isFuchsia;
  }
}
