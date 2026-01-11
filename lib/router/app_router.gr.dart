// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:flutter_dashboard/core/views/error_screen.dart' as _i4;
import 'package:flutter_dashboard/features/analytics/analytics_screen.dart'
    as _i1;
import 'package:flutter_dashboard/features/calendar/calendar_screen.dart'
    as _i2;
import 'package:flutter_dashboard/features/dashboard/dashboard_screen.dart'
    as _i3;
import 'package:flutter_dashboard/features/settings/settings_screen.dart'
    as _i5;
import 'package:flutter_dashboard/features/tables/tables_screen.dart' as _i6;

/// generated route for
/// [_i1.AnalyticsScreen]
class AnalyticsRoute extends _i7.PageRouteInfo<void> {
  const AnalyticsRoute({List<_i7.PageRouteInfo>? children})
    : super(AnalyticsRoute.name, initialChildren: children);

  static const String name = 'AnalyticsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.AnalyticsScreen();
    },
  );
}

/// generated route for
/// [_i2.CalendarScreen]
class CalendarRoute extends _i7.PageRouteInfo<void> {
  const CalendarRoute({List<_i7.PageRouteInfo>? children})
    : super(CalendarRoute.name, initialChildren: children);

  static const String name = 'CalendarRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.CalendarScreen();
    },
  );
}

/// generated route for
/// [_i3.DashboardScreen]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.DashboardScreen();
    },
  );
}

/// generated route for
/// [_i4.ErrorScreen]
class ErrorRoute extends _i7.PageRouteInfo<ErrorRouteArgs> {
  ErrorRoute({
    _i8.Key? key,
    required String message,
    _i8.VoidCallback? onRetry,
    List<_i7.PageRouteInfo>? children,
  }) : super(
         ErrorRoute.name,
         args: ErrorRouteArgs(key: key, message: message, onRetry: onRetry),
         initialChildren: children,
       );

  static const String name = 'ErrorRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ErrorRouteArgs>();
      return _i4.ErrorScreen(
        key: args.key,
        message: args.message,
        onRetry: args.onRetry,
      );
    },
  );
}

class ErrorRouteArgs {
  const ErrorRouteArgs({this.key, required this.message, this.onRetry});

  final _i8.Key? key;

  final String message;

  final _i8.VoidCallback? onRetry;

  @override
  String toString() {
    return 'ErrorRouteArgs{key: $key, message: $message, onRetry: $onRetry}';
  }
}

/// generated route for
/// [_i5.SettingsScreen]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute({List<_i7.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i6.TablesScreen]
class TablesRoute extends _i7.PageRouteInfo<void> {
  const TablesRoute({List<_i7.PageRouteInfo>? children})
    : super(TablesRoute.name, initialChildren: children);

  static const String name = 'TablesRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.TablesScreen();
    },
  );
}
