import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dashboard/utils/date_utils.dart';

void main() {
  group('formatDate', () {
    test('formats date correctly', () {
      final date = DateTime(2021, 12, 25);
      expect(formatDate(date), '25/12/2021');
    });

    test('formats date with single digit day and month', () {
      final date = DateTime(2021, 1, 5);
      expect(formatDate(date), '05/01/2021');
    });

    test('formats current date', () {
      final date = DateTime.now();
      final formatted = formatDate(date);
      expect(formatted, contains('/'));
      expect(formatted.split('/').length, 3);
    });
  });
}
