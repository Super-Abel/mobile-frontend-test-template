import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';

class AppTheme {
  static ThemeData get lightTheme =>
      ThemeData.light(useMaterial3: true).copyWith(
        primaryColor: AppColors.main,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: AppColors.black),
          titleTextStyle: TextStyle(
            fontSize: 20.sp,
            color: AppColors.black,
            fontWeight: FontWeight.w600,
            fontFamily: FontFamily.roboto,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.main,
            foregroundColor: AppColors.white,
            textStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
}
