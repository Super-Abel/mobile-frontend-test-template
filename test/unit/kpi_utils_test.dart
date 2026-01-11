import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dashboard/utils/kpi_utils.dart';
import 'package:flutter_dashboard/domain/models/order_model.dart';

void main() {
  group('calculateTotals', () {
    test('calculates totals correctly', () {
      final orders = [
        OrderModel(
          customerName: 'John',
          customerImage: '',
          productName: 'Product A',
          productImage: '',
          userId: '1',
          orderedPlaced: '01/01/2021',
          amount: 100,
          paymentStatus: 'Paid',
        ),
        OrderModel(
          customerName: 'Jane',
          customerImage: '',
          productName: 'Product B',
          productImage: '',
          userId: '2',
          orderedPlaced: '02/01/2021',
          amount: 150,
          paymentStatus: 'Paid',
        ),
      ];

      final totals = calculateTotals(orders);

      expect(totals['totalSales'], 2);
      expect(totals['totalCustomers'], 2);
      expect(totals['totalProducts'], 2);
      expect(totals['totalRevenue'], 250);
    });

    test('handles duplicate customers and products', () {
      final orders = [
        OrderModel(
          customerName: 'John',
          customerImage: '',
          productName: 'Product A',
          productImage: '',
          userId: '1',
          orderedPlaced: '01/01/2021',
          amount: 100,
          paymentStatus: 'Paid',
        ),
        OrderModel(
          customerName: 'John',
          customerImage: '',
          productName: 'Product A',
          productImage: '',
          userId: '2',
          orderedPlaced: '02/01/2021',
          amount: 50,
          paymentStatus: 'Paid',
        ),
      ];

      final totals = calculateTotals(orders);

      expect(totals['totalSales'], 2);
      expect(totals['totalCustomers'], 1);
      expect(totals['totalProducts'], 1);
      expect(totals['totalRevenue'], 150);
    });

    test('handles empty orders list', () {
      final totals = calculateTotals([]);

      expect(totals['totalSales'], 0);
      expect(totals['totalCustomers'], 0);
      expect(totals['totalProducts'], 0);
      expect(totals['totalRevenue'], 0);
    });
  });
}
