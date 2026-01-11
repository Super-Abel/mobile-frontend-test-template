import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dashboard/main.dart';

void main() {
  testWidgets('Dashboard app smoke test', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(800, 1200);
    tester.view.devicePixelRatio = 1.0;

    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle(const Duration(seconds: 3));

    expect(find.text('Sales'), findsWidgets);

    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });
  });
}
