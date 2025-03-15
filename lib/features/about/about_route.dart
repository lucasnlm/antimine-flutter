import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../game_routing.dart';
import 'screen/about_screen.dart';

class AboutRoute extends StatelessWidget {
  const AboutRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const AboutScreen();
  }

  static void open(BuildContext context) async {
    await context.push(GameRoutes.about);
  }
}
