import 'package:antimine/common/alert/game_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final minApp = MaterialApp(
    home: Scaffold(
      body: Builder(
        builder: (context) => TextButton(
          onPressed: () => showGameAlert(
            context: context,
            content: 'Content',
            title: 'Title',
            primaryAction: 'Primary',
            onPrimary: expectAsync1((_) {}),
          ),
          child: const Text('Show Alert'),
        ),
      ),
    ),
  );

  testWidgets('showGameAlert show a generic dialog', (tester) async {
    await tester.pumpWidget(minApp);
    await tester.tap(find.text('Show Alert'));
    await tester.pumpAndSettle();
    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.text('Content'), findsOneWidget);
    expect(find.text('Primary'), findsOneWidget);
    expect(find.text('Title'), findsOneWidget);
    await tester.tap(find.text('Primary'));
  });
}
