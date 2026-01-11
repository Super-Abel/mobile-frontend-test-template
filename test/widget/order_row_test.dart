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
  group('OrderRow Widget', () {
    testWidgets('displays payment status badge correctly', (WidgetTester tester) async {
      final orders = [
        const OrderModel(
          customerName: 'John Doe',
          customerImage: '',
          productName: 'Product A',
          productImage: '',
          userId: '1',
          orderedPlaced: '2024-01-01',
          amount: 100.0,
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
                body: OrdersTable(orders: orders),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('Paid'), findsOneWidget);
      expect(find.text('John Doe'), findsOneWidget);
    });
  });
}
