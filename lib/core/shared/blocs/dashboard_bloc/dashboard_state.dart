import 'package:equatable/equatable.dart';
import '../../../../domain/models/order_model.dart';

enum DashboardStatus { initial, loading, success, failure }

class DashboardState extends Equatable {
  final DashboardStatus status;
  final List<OrderModel> orders;
  final String selectedTimeFilter;
  final int selectedNavIndex;
  final String? errorMessage;

  const DashboardState({
    this.status = DashboardStatus.initial,
    this.orders = const [],
    this.selectedTimeFilter = 'Yesterday',
    this.selectedNavIndex = 0,
    this.errorMessage,
  });

  DashboardState copyWith({
    DashboardStatus? status,
    List<OrderModel>? orders,
    String? selectedTimeFilter,
    int? selectedNavIndex,
    String? errorMessage,
  }) {
    return DashboardState(
      status: status ?? this.status,
      orders: orders ?? this.orders,
      selectedTimeFilter: selectedTimeFilter ?? this.selectedTimeFilter,
      selectedNavIndex: selectedNavIndex ?? this.selectedNavIndex,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        orders,
        selectedTimeFilter,
        selectedNavIndex,
        errorMessage,
      ];
}
