import 'package:flutter/material.dart';

import '../../common/utils/build_context_ext.dart';
import 'game_container.dart';
import 'spacing.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = isTablet ? Spacing.x128 : Spacing.x16;
    return Padding(
      padding: EdgeInsets.only(
        bottom: Spacing.x8,
        left: horizontalPadding,
        right: horizontalPadding,
      ),
      child: GameContainer(child: Column(children: children)),
    );
  }
}
