import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart' as fl_chart;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LineChart extends StatelessWidget {
  final String title;
  final List<String> filterOptions;
  final String selectedFilter;
  final Function(String) onFilterChanged;

  const LineChart({
    super.key,
    required this.title,
    required this.filterOptions,
    required this.selectedFilter,
    required this.onFilterChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Container(
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
              Row(
                children: [
                  Icon(Icons.circle, color: Colors.blue, size: 12.sp),
                  SizedBox(width: 8.w),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(
                  'Today',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: filterOptions
                  .map((filter) => Padding(
                        padding: EdgeInsets.only(right: 12.w),
                        child: FilterChip(
                        label: Text(filter),
                        selected: filter == selectedFilter,
                        onSelected: (_) => onFilterChanged(filter),
                        selectedColor: Colors.blue.withOpacity(0.2),
                        backgroundColor: Colors.grey[100],
                        labelStyle: TextStyle(
                          color: filter == selectedFilter
                              ? Colors.blue
                              : Colors.grey[600],
                          fontSize: 12.sp,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                      ),
                    ))
                  .toList(),
            ),
          ),
          SizedBox(height: 24.h),
          SizedBox(
            height: 200.h,
            child: fl_chart.LineChart(
              fl_chart.LineChartData(
                gridData: const fl_chart.FlGridData(show: true),
                titlesData: fl_chart.FlTitlesData(
                  leftTitles: const fl_chart.AxisTitles(
                    sideTitles: fl_chart.SideTitles(showTitles: false),
                  ),
                  rightTitles: const fl_chart.AxisTitles(
                    sideTitles: fl_chart.SideTitles(showTitles: false),
                  ),
                  topTitles: const fl_chart.AxisTitles(
                    sideTitles: fl_chart.SideTitles(showTitles: false),
                  ),
                  bottomTitles: fl_chart.AxisTitles(
                    sideTitles: fl_chart.SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        const months = [
                          'Jan',
                          'Feb',
                          'Mar',
                          'Apr',
                          'May',
                          'Jun',
                          'Jul',
                          'Aug',
                          'Sep',
                          'Oct',
                          'Nov',
                          'Dec'
                        ];
                        if (value.toInt() >= 0 && value.toInt() < months.length) {
                          return Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Text(
                              months[value.toInt()],
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.grey,
                              ),
                            ),
                          );
                        }
                        return Text('');
                      },
                      interval: 1,
                    ),
                  ),
                ),
                borderData: fl_chart.FlBorderData(show: false),
                lineBarsData: [
                  fl_chart.LineChartBarData(
                    spots: const [
                      fl_chart.FlSpot(0, 3),
                      fl_chart.FlSpot(1, 4),
                      fl_chart.FlSpot(2, 3.5),
                      fl_chart.FlSpot(3, 5),
                      fl_chart.FlSpot(4, 4),
                      fl_chart.FlSpot(5, 6),
                      fl_chart.FlSpot(6, 5.5),
                      fl_chart.FlSpot(7, 6.5),
                      fl_chart.FlSpot(8, 6),
                      fl_chart.FlSpot(9, 7),
                      fl_chart.FlSpot(10, 6.5),
                      fl_chart.FlSpot(11, 8),
                    ],
                    isCurved: true,
                    color: Colors.blue,
                    barWidth: 3,
                    isStrokeCapRound: true,
                    dotData: const fl_chart.FlDotData(show: false),
                    belowBarData: fl_chart.BarAreaData(
                      show: true,
                      color: Colors.blue.withOpacity(0.1),
                    ),
                  ),
                  fl_chart.LineChartBarData(
                    spots: const [
                      fl_chart.FlSpot(0, 2),
                      fl_chart.FlSpot(1, 3),
                      fl_chart.FlSpot(2, 2.5),
                      fl_chart.FlSpot(3, 4),
                      fl_chart.FlSpot(4, 3.5),
                      fl_chart.FlSpot(5, 5),
                      fl_chart.FlSpot(6, 4.5),
                      fl_chart.FlSpot(7, 5.5),
                      fl_chart.FlSpot(8, 5),
                      fl_chart.FlSpot(9, 6),
                      fl_chart.FlSpot(10, 5.5),
                      fl_chart.FlSpot(11, 7),
                    ],
                    isCurved: true,
                    color: Colors.purple,
                    barWidth: 3,
                    isStrokeCapRound: true,
                    dotData: const fl_chart.FlDotData(show: false),
                    belowBarData: fl_chart.BarAreaData(
                      show: true,
                      color: Colors.purple.withOpacity(0.1),
                    ),
                  ),
                ],
                minY: 0,
                maxY: 10,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLegend(Colors.blue, 'Sales'),
              SizedBox(width: 24.w),
              _buildLegend(Colors.purple, 'Revenue'),
            ],
          ),
        ],
      ),
      ),
    );
  }

  Widget _buildLegend(Color color, String label) {
    return Row(
      children: [
        Container(
          width: 12.w,
          height: 12.h,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
