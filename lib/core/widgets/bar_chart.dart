import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart' as fl_chart;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BarChart extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;

  const BarChart({
    super.key,
    required this.title,
    required this.value,
    required this.subtitle,
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
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 24.h),
          SizedBox(
            height: 150.h,
            child: fl_chart.BarChart(
              fl_chart.BarChartData(
                alignment: fl_chart.BarChartAlignment.spaceAround,
                maxY: 120,
                barTouchData: fl_chart.BarTouchData(enabled: false),
                titlesData: fl_chart.FlTitlesData(
                  show: true,
                  bottomTitles: fl_chart.AxisTitles(
                    sideTitles: fl_chart.SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        const months = ['Mar', 'Jul', 'Sat', 'Mon'];
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
                    ),
                  ),
                  leftTitles: const fl_chart.AxisTitles(
                    sideTitles: fl_chart.SideTitles(showTitles: false),
                  ),
                  topTitles: const fl_chart.AxisTitles(
                    sideTitles: fl_chart.SideTitles(showTitles: false),
                  ),
                  rightTitles: const fl_chart.AxisTitles(
                    sideTitles: fl_chart.SideTitles(showTitles: false),
                  ),
                ),
                gridData: const fl_chart.FlGridData(show: false),
                borderData: fl_chart.FlBorderData(show: false),
                barGroups: [
                  _buildBarGroup(0, 70, Colors.blue[300]!),
                  _buildBarGroup(1, 85, Colors.blue[400]!),
                  _buildBarGroup(2, 95, Colors.blue[600]!),
                  _buildBarGroup(3, 110, Colors.blue[800]!),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Center(
            child: Column(
              children: [
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }

  fl_chart.BarChartGroupData _buildBarGroup(int x, double y, Color color) {
    return fl_chart.BarChartGroupData(
      x: x,
      barRods: [
        fl_chart.BarChartRodData(
          toY: y,
          color: color,
          width: 40.w,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6.r),
            topRight: Radius.circular(6.r),
          ),
        ),
      ],
    );
  }
}
