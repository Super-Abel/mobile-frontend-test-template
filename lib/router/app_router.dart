import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          initial: true,
          page: DashboardRoute.page,
          path: '/dashboard',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: AnalyticsRoute.page,
          path: '/analytics',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: SettingsRoute.page,
          path: '/settings',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: CalendarRoute.page,
          path: '/calendar',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: TablesRoute.page,
          path: '/tables',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
      ];
}
