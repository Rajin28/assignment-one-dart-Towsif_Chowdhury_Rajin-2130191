import 'package:test/test.dart';
import '../question2.dart';

void main() {
  test('Student category test', () {
    expect(getCategory(95), 'Excellent');
    expect(getCategory(85), 'Good');
    expect(getCategory(75), 'Average');
    expect(getCategory(65), 'Needs Improvement');
  });
}