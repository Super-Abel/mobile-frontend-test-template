import 'package:equatable/equatable.dart';

abstract class OrderEvent extends Equatable {
  const OrderEvent();

  @override
  List<Object?> get props => [];
}

class SwipeToAction extends OrderEvent {
  final String orderId;
  final String action;

  const SwipeToAction(this.orderId, this.action);

  @override
  List<Object?> get props => [orderId, action];
}

class DeleteOrder extends OrderEvent {
  final String orderId;

  const DeleteOrder(this.orderId);

  @override
  List<Object?> get props => [orderId];
}

class ArchiveOrder extends OrderEvent {
  final String orderId;

  const ArchiveOrder(this.orderId);

  @override
  List<Object?> get props => [orderId];
}
