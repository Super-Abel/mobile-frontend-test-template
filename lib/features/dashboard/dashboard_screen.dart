import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import '../../gen/assets.gen.dart';
import '../../core/shared/blocs/dashboard_bloc/dashboard_bloc.dart';
import '../../core/shared/blocs/dashboard_bloc/dashboard_event.dart';
import '../../core/shared/blocs/dashboard_bloc/dashboard_state.dart';
import '../../core/widgets/kpi_card.dart';
import '../../core/widgets/line_chart.dart' as custom;
import '../../core/widgets/bar_chart.dart' as custom;
import '../../core/widgets/orders_table.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(IconsaxPlusLinear.menu, color: Colors.black87, size: 24.sp),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue[700]!, Colors.purple[400]!],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(IconsaxPlusBold.home_2, color: Colors.white, size: 20.sp),
            ),
            SizedBox(width: 12.w),
            Text(
              'Sales',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: Stack(
              children: [
                IconButton(
                  icon: Icon(IconsaxPlusLinear.notification,
                      color: Colors.black87, size: 24.sp),
                  onPressed: () {},
                ),
                Positioned(
                  right: 4,
                  top: 4,
                  child: Container(
                    padding: EdgeInsets.all(4.r),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    constraints: BoxConstraints(
                      minWidth: 18.w,
                      minHeight: 18.h,
                    ),
                    child: Text(
                      '21',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16, left: 8.r),
            child: Row(
              children: [
                Text(
                  'You have 21 new leads',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(width: 8.w),
                Assets.images.accountCircleSvgrepoCom.svg(
                  width: 32.w,
                  height: 32.h,
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: _buildDrawer(context),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search anything',
                prefixIcon: Icon(IconsaxPlusLinear.search_normal, size: 20.sp),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              ),
            ),
            SizedBox(height: 16.h),
            _buildKpiCards(),
            SizedBox(height: 24.h),
            _buildCharts(context),
            SizedBox(height: 24.h),
            _buildOrdersSection(context),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(context),
    );
  }

  Widget _buildKpiCards() {
    return RepaintBoundary(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 600;
          return GridView.count(
            crossAxisCount: isWide ? 4 : 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: isWide ? 1.8 : 1.5,
          children: [
            KpiCard(
              value: '250k',
              label: 'Sales',
              color: Colors.orange,
              icon: Icons.shopping_cart,
            ),
            KpiCard(
              value: '24m',
              label: 'Customers',
              color: Colors.blue,
              icon: Icons.people,
            ),
            KpiCard(
              value: '15k',
              label: 'Products',
              color: Colors.amber,
              icon: Icons.inventory_2,
            ),
            KpiCard(
              value: '180m',
              label: 'Revenue',
              color: Colors.green,
              icon: Icons.attach_money,
            ),
          ],
          );
        },
      ),
    );
  }

  Widget _buildCharts(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth > 900;

            if (isWide) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: custom.LineChart(
                      title: 'Overall Sales',
                      filterOptions: const ['Yesterday', '7 days', '15 days', '30 days'],
                      selectedFilter: state.selectedTimeFilter,
                      onFilterChanged: (filter) {
                        context.read<DashboardBloc>().add(UpdateTimeFilter(filter));
                      },
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    flex: 1,
                    child: custom.BarChart(
                      title: 'Sales',
                      value: '2100',
                      subtitle: '+2% higher than last month',
                    ),
                  ),
                ],
              );
            } else {
              return Column(
                children: [
                  custom.LineChart(
                    title: 'Overall Sales',
                    filterOptions: const ['Yesterday', '7 days', '15 days', '30 days'],
                    selectedFilter: state.selectedTimeFilter,
                    onFilterChanged: (filter) {
                      context.read<DashboardBloc>().add(UpdateTimeFilter(filter));
                    },
                  ),
                  SizedBox(height: 16.h),
                  custom.BarChart(
                    title: 'Sales',
                    value: '2100',
                    subtitle: '+2% higher than last month',
                  ),
                ],
              );
            }
          },
        );
      },
    );
  }

  Widget _buildOrdersSection(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return OrdersTable(orders: state.orders);
      },
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      width: 250.w,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Dashboard Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.sp,
              ),
            ),
          ),
          ListTile(
            leading: Icon(IconsaxPlusBold.home, size: 24.sp),
            title: Text('Dashboard', style: TextStyle(fontSize: 16.sp)),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(IconsaxPlusBold.chart, size: 24.sp),
            title: Text('Analytics', style: TextStyle(fontSize: 16.sp)),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(IconsaxPlusBold.setting_2, size: 24.sp),
            title: Text('Settings', style: TextStyle(fontSize: 16.sp)),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state.selectedNavIndex,
          onTap: (index) {
            context.read<DashboardBloc>().add(UpdateNavIndex(index));
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: [
        BottomNavigationBarItem(
          icon: Icon(IconsaxPlusBold.home, size: 24.sp),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsaxPlusBold.chart, size: 24.sp),
          label: 'Analytics',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsaxPlusBold.calendar, size: 24.sp),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsaxPlusBold.document, size: 24.sp),
          label: 'Tables',
        ),
          ],
        );
      },
    );
  }
}
