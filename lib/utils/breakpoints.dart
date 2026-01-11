import 'package:responsive_toolkit/breakpoints.dart';

class MyBreakpoints<T> extends BaseBreakpoints<T> {
  MyBreakpoints({
    required T smallMobile, // 0-359
    T? mediumMobile, // 360-399
    T? largeMobile, // 400-479
    T? xlargeMobile, // 480-599
    T? xsmallTablet, // 600-719
    T? smallTablet, // 720-839
    T? mediumTablet, // 840-959
    T? largeTablet, // 960-1023
    T? xlargeTablet, // 1024-1279
    T? xxlargeTablet, // 1280-1439
    Map<int, T>? custom,
  }) : super(
          breakpoints: [0, 399, 479, 599, 719, 839, 959, 1023, 1279, 1439],
          values: [
            smallMobile,
            mediumMobile,
            largeMobile,
            xlargeMobile,
            xsmallTablet,
            smallTablet,
            mediumTablet,
            largeTablet,
            xlargeTablet,
            xxlargeTablet,
          ],
          custom: custom,
        );
}
