import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dashboard/core/widgets/orders_table.dart';
import 'package:flutter_dashboard/domain/models/order_model.dart';

void main() {
  group('OrdersTable Widget', () {
    testWidgets('displays orders table with data', (WidgetTester tester) async {
      final mockOrders = [
        OrderModel(
          customerName: 'Test Customer',
          customerImage: '',
          productName: 'Test Product',
          productImage: '',
          userId: 'TEST123',
          orderedPlaced: '01/01/2024',
          amount: 99.99,
          paymentStatus: 'Paid',
        ),
      ];

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: OrdersTable(orders: mockOrders),
          ),
        ),
      );

      expect(find.text('Orders'), findsOneWidget);
      expect(find.text('Test Customer'), findsOneWidget);
      expect(find.text('Test Product'), findsOneWidget);
    });
  });
}
