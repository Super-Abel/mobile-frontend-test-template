import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/models/order_model.dart';
import '../shared/blocs/order_bloc/order_bloc.dart';
import '../shared/blocs/order_bloc/order_event.dart';

class OrdersTable extends StatelessWidget {
  final List<OrderModel> orders;
  final Function(String, String)? onSwipeAction;

  const OrdersTable({
    super.key,
    required this.orders,
    this.onSwipeAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Orders',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: TextStyle(fontSize: 12.sp),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: orders.length,
            itemBuilder: (context, index) {
              final order = orders[index];
              return Dismissible(
                key: ValueKey(order.userId),
                background: Container(
                  margin: EdgeInsets.only(bottom: 8.h),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 20.w),
                  child: Icon(Icons.delete, color: Colors.white, size: 24.sp),
                ),
                secondaryBackground: Container(
                  margin: EdgeInsets.only(bottom: 8.h),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 20.w),
                  child: Icon(Icons.archive, color: Colors.white, size: 24.sp),
                ),
                confirmDismiss: (direction) async {
                  if (direction == DismissDirection.startToEnd) {
                    context.read<OrderBloc>().add(DeleteOrder(order.userId));
                    onSwipeAction?.call(order.userId, 'delete');
                  } else {
                    context.read<OrderBloc>().add(ArchiveOrder(order.userId));
                    onSwipeAction?.call(order.userId, 'archive');
                  }
                  return true;
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 8.h),
                  padding: EdgeInsets.all(12.r),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Colors.grey[200]!),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: Colors.blue.shade100,
                        child: order.customerImage.isNotEmpty
                            ? ClipOval(
                                child: SvgPicture.asset(
                                  order.customerImage,
                                  width: 40.r,
                                  height: 40.r,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Text(
                                order.customerName[0].toUpperCase(),
                                style: TextStyle(fontSize: 14.sp, color: Colors.blue, fontWeight: FontWeight.bold),
                              ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              order.customerName,
                              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              order.productName,
                              style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '\$${order.amount.toStringAsFixed(2)}',
                            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 4.h),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                            decoration: BoxDecoration(
                              color: order.paymentStatus == 'Paid' ? Colors.green[50] : Colors.orange[50],
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: Text(
                              order.paymentStatus,
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: order.paymentStatus == 'Paid' ? Colors.green : Colors.orange,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
