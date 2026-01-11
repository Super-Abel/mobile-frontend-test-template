import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_dashboard/core/widgets/kpi_card.dart';

void main() {
  group('KpiCard Widget', () {
    testWidgets('displays value and label correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => const MaterialApp(
            home: Scaffold(
              body: KpiCard(
                value: '250k',
                label: 'Sales',
                color: Colors.orange,
                icon: Icons.shopping_cart,
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('250k'), findsOneWidget);
      expect(find.text('Sales'), findsOneWidget);
      expect(find.byIcon(Icons.shopping_cart), findsOneWidget);
    });
  });
}
