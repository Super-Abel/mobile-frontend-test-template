import 'package:flutter_bloc/flutter_bloc.dart';
import 'order_event.dart';
import 'order_state.dart';
import '../../../../domain/models/order_model.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(const OrderState()) {
    on<SwipeToAction>(_onSwipeToAction);
    on<DeleteOrder>(_onDeleteOrder);
    on<ArchiveOrder>(_onArchiveOrder);
  }

  void _onSwipeToAction(
    SwipeToAction event,
    Emitter<OrderState> emit,
  ) {
    final updatedOrders = List<OrderModel>.from(state.orders);
    updatedOrders.removeWhere((order) => order.userId == event.orderId);
    emit(state.copyWith(orders: updatedOrders));
  }

  void _onDeleteOrder(
    DeleteOrder event,
    Emitter<OrderState> emit,
  ) {
    final updatedOrders = List<OrderModel>.from(state.orders);
    updatedOrders.removeWhere((order) => order.userId == event.orderId);
    emit(state.copyWith(orders: updatedOrders));
  }

  void _onArchiveOrder(
    ArchiveOrder event,
    Emitter<OrderState> emit,
  ) {
    final updatedOrders = List<OrderModel>.from(state.orders);
    final orderIndex = updatedOrders.indexWhere((o) => o.userId == event.orderId);
    if (orderIndex != -1) {
      updatedOrders.removeAt(orderIndex);
      emit(state.copyWith(orders: updatedOrders, archivedCount: state.archivedCount + 1));
    }
  }

  void swipeToAction(String orderId, String action) {
    add(SwipeToAction(orderId, action));
  }
}
