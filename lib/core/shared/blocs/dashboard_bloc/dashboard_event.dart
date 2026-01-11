import 'package:equatable/equatable.dart';

abstract class DashboardEvent extends Equatable {
  const DashboardEvent();

  @override
  List<Object?> get props => [];
}

class LoadDashboardData extends DashboardEvent {
  const LoadDashboardData();
}

class UpdateTimeFilter extends DashboardEvent {
  final String filter;

  const UpdateTimeFilter(this.filter);

  @override
  List<Object?> get props => [filter];
}

class UpdateNavIndex extends DashboardEvent {
  final int index;

  const UpdateNavIndex(this.index);

  @override
  List<Object?> get props => [index];
}

class FilterByPeriod extends DashboardEvent {
  final String period;

  const FilterByPeriod(this.period);

  @override
  List<Object?> get props => [period];
}
