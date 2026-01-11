import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

@RoutePage()
class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Calendar', style: TextStyle(fontSize: 18.sp)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(IconsaxPlusBold.calendar, size: 80.sp, color: Colors.blue),
            SizedBox(height: 16.h),
            Text(
              'Calendar Dashboard',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),
            Text('Coming soon...',
                style: TextStyle(fontSize: 14.sp, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
