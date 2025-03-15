import 'package:flutter/material.dart';
import 'dependency_injection.dart';
import 'antimine_game.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const DependencyInjection(
      child: AntimineGame(),
    ),
  );
}
