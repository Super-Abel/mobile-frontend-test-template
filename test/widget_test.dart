import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dashboard/main.dart';

void main() {
  testWidgets('Dashboard app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    expect(find.text('Sales'), findsWidgets);
  });
}
