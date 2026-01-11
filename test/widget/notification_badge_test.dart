import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class NotificationBadge extends StatelessWidget {
  final int count;

  const NotificationBadge({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      child: Text(
        '$count',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

void main() {
  group('NotificationBadge Widget', () {
    testWidgets('displays leads count correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: NotificationBadge(count: 21),
          ),
        ),
      );

      expect(find.text('21'), findsOneWidget);
    });

    testWidgets('displays different count', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: NotificationBadge(count: 5),
          ),
        ),
      );

      expect(find.text('5'), findsOneWidget);
    });
  });
}
