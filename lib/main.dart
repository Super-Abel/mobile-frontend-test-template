import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/shared/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/shared/blocs/dashboard_bloc/dashboard_event.dart';
import 'data/repositories/dashboard_repository.dart';
import 'core/theme/app_theme.dart';
import 'router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => DashboardBloc(
            repository: DashboardRepositoryImpl(),
          )..add(const LoadDashboardData()),
          child: MaterialApp.router(
            title: 'Sales Dashboard',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            routerConfig: _appRouter.config(),
          ),
        );
      },
    );
  }
}
