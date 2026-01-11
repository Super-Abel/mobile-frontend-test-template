import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_dashboard/core/widgets/orders_table.dart';
import 'package:flutter_dashboard/domain/models/order_model.dart';
import 'package:flutter_dashboard/core/shared/blocs/order_bloc/order_bloc.dart';
import 'package:flutter_dashboard/core/shared/blocs/order_bloc/order_state.dart';

class MockOrderBloc extends Fake implements OrderBloc {
  @override
  Stream<OrderState> get stream => Stream.value(const OrderState());

  @override
  OrderState get state => const OrderState();

  @override
  void add(event) {}
}

void main() {
  group('OrdersTable Widget', () {
    testWidgets('displays orders table with data', (WidgetTester tester) async {
      final mockOrders = [
        const OrderModel(
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
        ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => MaterialApp(
            home: BlocProvider<OrderBloc>(
              create: (_) => MockOrderBloc(),
              child: Scaffold(
                body: OrdersTable(orders: mockOrders),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('Test Customer'), findsOneWidget);
      expect(find.text('Test Product'), findsOneWidget);
    });
  });
}
