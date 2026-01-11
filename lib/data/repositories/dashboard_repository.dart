import '../../domain/models/order_model.dart';
import '../../gen/assets.gen.dart';

abstract class DashboardRepository {
  Future<List<OrderModel>> getOrders();
}

class DashboardRepositoryImpl implements DashboardRepository {
  @override
  Future<List<OrderModel>> getOrders() async {
    return [
      OrderModel(
        customerName: 'Ellie Collins',
        customerImage: Assets.images.accountCircleSvgrepoCom.path,
        productName: 'Ginger Snacks',
        productImage: '',
        userId: 'Ariel87',
        orderedPlaced: '12/12/2021',
        amount: 19.00,
        paymentStatus: 'Paid',
      ),
      OrderModel(
        customerName: 'John Doe',
        customerImage: Assets.images.accountCircleSvgrepoCom.path,
        productName: 'Chocolate Chips',
        productImage: '',
        userId: 'John123',
        orderedPlaced: '12/13/2021',
        amount: 25.50,
        paymentStatus: 'Pending',
      ),
      OrderModel(
        customerName: 'Sarah Smith',
        customerImage: Assets.images.accountCircleSvgrepoCom.path,
        productName: 'Organic Tea',
        productImage: '',
        userId: 'Sarah456',
        orderedPlaced: '12/14/2021',
        amount: 15.00,
        paymentStatus: 'Paid',
      ),
    ];
  }
}
