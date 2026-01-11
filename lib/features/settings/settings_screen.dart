import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Settings', style: TextStyle(fontSize: 18.sp)),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.r),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(IconsaxPlusLinear.user, size: 24.sp),
                  title: Text('Profile', style: TextStyle(fontSize: 16.sp)),
                  trailing: Icon(Icons.chevron_right, size: 20.sp),
                  onTap: () {},
                ),
                Divider(height: 1, indent: 56.w),
                ListTile(
                  leading: Icon(IconsaxPlusLinear.notification, size: 24.sp),
                  title:
                      Text('Notifications', style: TextStyle(fontSize: 16.sp)),
                  trailing: Icon(Icons.chevron_right, size: 20.sp),
                  onTap: () {},
                ),
                Divider(height: 1, indent: 56.w),
                ListTile(
                  leading: Icon(IconsaxPlusLinear.security, size: 24.sp),
                  title: Text('Privacy & Security',
                      style: TextStyle(fontSize: 16.sp)),
                  trailing: Icon(Icons.chevron_right, size: 20.sp),
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: ListTile(
              leading: Icon(IconsaxPlusLinear.logout,
                  color: Colors.red, size: 24.sp),
              title: Text('Logout',
                  style: TextStyle(color: Colors.red, fontSize: 16.sp)),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
