import 'package:antimine/features/game/logic/dimension_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final mockedApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
    ),
  );
  const screenSize = Size(600, 800);

  Future<BuildContext> testContext(WidgetTester tester) async {
    await tester.pumpWidget(mockedApp);
    return tester.element(find.text('Test'));
  }

  testWidgets('appBarHeight returns the height of the app bar', (tester) async {
    final dimensionManager = DimensionManager(isMobile: true);
    final context = await testContext(tester);
    final appBarHeight = dimensionManager.appBarHeight(context);
    expect(appBarHeight, 56);
  });

  testWidgets('calcAreaSize returns the size of the area on Desktop',
      (tester) async {
    final dimensionManager = DimensionManager(
      isMobile: true,
    );
    dimensionManager.init(screenSize: screenSize);
    final areaSize = dimensionManager.calcAreaSize();
    expect(areaSize.toInt(), 50);
  });

  testWidgets('calcAreaSize returns the size of the area on Mobile',
      (tester) async {
    final dimensionManager = DimensionManager(
      isMobile: true,
    );
    dimensionManager.init(screenSize: screenSize);
    final areaSize = dimensionManager.calcAreaSize();
    expect(areaSize.toInt(), (600 ~/ 12));
  });

  testWidgets('standardMinefieldSize returns the size of the minefield',
      (tester) async {
    final dimensionManager = DimensionManager(isMobile: false);
    dimensionManager.init(screenSize: screenSize);
    final minefieldSize = dimensionManager.standardMinefieldSize();
    expect(minefieldSize.width.toInt(), 11);
    expect(minefieldSize.height.toInt(), 9);
  });
}
