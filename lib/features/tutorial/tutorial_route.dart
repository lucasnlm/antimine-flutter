import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../game_routing.dart';
import 'screen/tutorial_screen.dart';

class TutorialRoute extends StatelessWidget {
  const TutorialRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const TutorialScreen();
  }

  static Future<T?> open<T extends Object?>(BuildContext context) {
    return context.push(GameRoutes.tutorial);
  }
}
