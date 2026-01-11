import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dashboard/utils/percent_utils.dart';

void main() {
  group('calculatePercent', () {
    test('calculates percentage correctly', () {
      expect(calculatePercent(50, 200), 25.0);
    });

    test('handles zero total', () {
      expect(calculatePercent(50, 0), 0);
    });

    test('handles 100 percent', () {
      expect(calculatePercent(100, 100), 100.0);
    });

    test('handles decimal values', () {
      expect(calculatePercent(33.33, 100), closeTo(33.33, 0.01));
    });
  });
}
