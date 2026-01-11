import 'package:equatable/equatable.dart';
import '../../../../domain/models/order_model.dart';

class OrderState extends Equatable {
  final List<OrderModel> orders;
  final int archivedCount;

  const OrderState({
    this.orders = const [],
    this.archivedCount = 0,
  });

  OrderState copyWith({
    List<OrderModel>? orders,
    int? archivedCount,
  }) {
    return OrderState(
      orders: orders ?? this.orders,
      archivedCount: archivedCount ?? this.archivedCount,
    );
  }

  @override
  List<Object?> get props => [orders, archivedCount];
}
