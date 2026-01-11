import 'package:flutter_bloc/flutter_bloc.dart';
import 'dashboard_event.dart';
import 'dashboard_state.dart';
import '../../../../data/repositories/dashboard_repository.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final DashboardRepository repository;

  DashboardBloc({required this.repository}) : super(const DashboardState()) {
    on<LoadDashboardData>(_onLoadDashboardData);
    on<UpdateTimeFilter>(_onUpdateTimeFilter);
    on<UpdateNavIndex>(_onUpdateNavIndex);
  }

  Future<void> _onLoadDashboardData(
    LoadDashboardData event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(status: DashboardStatus.loading));
    try {
      final orders = await repository.getOrders();
      emit(state.copyWith(
        status: DashboardStatus.success,
        orders: orders,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: DashboardStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  void _onUpdateTimeFilter(
    UpdateTimeFilter event,
    Emitter<DashboardState> emit,
  ) {
    emit(state.copyWith(selectedTimeFilter: event.filter));
  }

  void _onUpdateNavIndex(
    UpdateNavIndex event,
    Emitter<DashboardState> emit,
  ) {
    emit(state.copyWith(selectedNavIndex: event.index));
  }
}
