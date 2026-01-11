import 'package:equatable/equatable.dart';
import '../../../../domain/models/order_model.dart';

abstract class KpiEvent extends Equatable {
  const KpiEvent();

  @override
  List<Object?> get props => [];
}

class CalculateKpis extends KpiEvent {
  final List<OrderModel> orders;

  const CalculateKpis(this.orders);

  @override
  List<Object?> get props => [orders];
}
