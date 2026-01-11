import '../domain/models/order_model.dart';

Map<String, double> calculateTotals(List<OrderModel> orders) {
  double totalSales = 0;
  double totalRevenue = 0;
  Set<String> uniqueCustomers = {};
  Set<String> uniqueProducts = {};

  for (var order in orders) {
    totalSales++;
    totalRevenue += order.amount;
    uniqueCustomers.add(order.customerName);
    uniqueProducts.add(order.productName);
  }

  return {
    'totalSales': totalSales,
    'totalCustomers': uniqueCustomers.length.toDouble(),
    'totalProducts': uniqueProducts.length.toDouble(),
    'totalRevenue': totalRevenue,
  };
}
