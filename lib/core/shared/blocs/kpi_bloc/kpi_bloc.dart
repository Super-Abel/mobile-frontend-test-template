import 'package:flutter_bloc/flutter_bloc.dart';
import 'kpi_event.dart';
import 'kpi_state.dart';
import '../../../../domain/models/order_model.dart';

class KpiBloc extends Bloc<KpiEvent, KpiState> {
  KpiBloc() : super(const KpiState()) {
    on<CalculateKpis>(_onCalculateKpis);
  }

  void _onCalculateKpis(
    CalculateKpis event,
    Emitter<KpiState> emit,
  ) {
    final kpis = calculateKpis(event.orders);
    emit(state.copyWith(
      totalSales: kpis['totalSales'],
      totalCustomers: kpis['totalCustomers'],
      totalProducts: kpis['totalProducts'],
      totalRevenue: kpis['totalRevenue'],
    ));
  }

  Map<String, double> calculateKpis(List<OrderModel> orders) {
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
}
