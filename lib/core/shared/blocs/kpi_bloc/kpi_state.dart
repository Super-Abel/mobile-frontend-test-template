import 'package:equatable/equatable.dart';

class KpiState extends Equatable {
  final double totalSales;
  final double totalCustomers;
  final double totalProducts;
  final double totalRevenue;

  const KpiState({
    this.totalSales = 0,
    this.totalCustomers = 0,
    this.totalProducts = 0,
    this.totalRevenue = 0,
  });

  KpiState copyWith({
    double? totalSales,
    double? totalCustomers,
    double? totalProducts,
    double? totalRevenue,
  }) {
    return KpiState(
      totalSales: totalSales ?? this.totalSales,
      totalCustomers: totalCustomers ?? this.totalCustomers,
      totalProducts: totalProducts ?? this.totalProducts,
      totalRevenue: totalRevenue ?? this.totalRevenue,
    );
  }

  @override
  List<Object?> get props => [totalSales, totalCustomers, totalProducts, totalRevenue];
}
