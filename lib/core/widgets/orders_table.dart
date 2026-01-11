import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../domain/models/order_model.dart';

class OrdersTable extends StatelessWidget {
  final List<OrderModel> orders;

  const OrdersTable({
    super.key,
    required this.orders,
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
                'Orders',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                icon: Icon(Icons.close, size: 20.sp),
                onPressed: () {},
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowColor: MaterialStateProperty.all(Colors.grey[50]),
              columns: [
                DataColumn(
                  label: Text(
                    'Customer',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Product',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'User ID',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Ordered Placed',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Amount',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Payment Status',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                  ),
                ),
              ],
              rows: orders
                  .map(
                    (order) => DataRow(
                      cells: [
                        DataCell(
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 16.r,
                                backgroundColor: Colors.blue.shade100,
                                child: order.customerImage.isNotEmpty
                                    ? ClipOval(
                                        child: SvgPicture.asset(
                                          order.customerImage,
                                          width: 32.r,
                                          height: 32.r,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    : Text(
                                        order.customerName[0].toUpperCase(),
                                        style: TextStyle(fontSize: 12.sp, color: Colors.blue),
                                      ),
                              ),
                              SizedBox(width: 8.w),
                              Text(
                                order.customerName,
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ),
                        DataCell(
                          Row(
                            children: [
                              Container(
                                width: 32.w,
                                height: 32.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.r),
                                  color: Colors.grey[100],
                                ),
                                child: order.productImage.isNotEmpty
                                    ? Image.asset(
                                        order.productImage,
                                        fit: BoxFit.cover,
                                        errorBuilder: (_, __, ___) => Icon(
                                          Icons.shopping_bag,
                                          size: 16.sp,
                                        ),
                                      )
                                    : Icon(Icons.shopping_bag, size: 16.sp),
                              ),
                              SizedBox(width: 8.w),
                              Text(
                                order.productName,
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ),
                        DataCell(
                          Text(
                            order.userId,
                            style: TextStyle(fontSize: 12.sp),
                          ),
                        ),
                        DataCell(
                          Text(
                            order.orderedPlaced,
                            style: TextStyle(fontSize: 12.sp),
                          ),
                        ),
                        DataCell(
                          Text(
                            '\$${order.amount.toStringAsFixed(2)}',
                            style: TextStyle(fontSize: 12.sp),
                          ),
                        ),
                        DataCell(
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 4.h,
                            ),
                            decoration: BoxDecoration(
                              color: order.paymentStatus.toLowerCase() == 'paid'
                                  ? Colors.green.withOpacity(0.1)
                                  : Colors.orange.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Text(
                              order.paymentStatus,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: order.paymentStatus.toLowerCase() == 'paid'
                                    ? Colors.green
                                    : Colors.orange,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
