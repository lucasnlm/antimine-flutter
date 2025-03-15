import 'package:flutter/material.dart';

import '../../../common/utils/build_context_ext.dart';

class AboutIcon extends StatelessWidget {
  const AboutIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.shortestSide;
    final scale = isTablet ? 0.1 : 0.2;
    final iconSize = width * scale;
    return SizedBox(
      width: iconSize,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(iconSize * 0.5),
        child: SizedBox(
          width: iconSize,
          child: Image.asset(
            './assets/icon.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
