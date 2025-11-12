import 'package:test/test.dart';
import '../question1.dart';

void main() {
  test('BMI calculation test', () {
    expect(calculateBMI(68.0, 5.9).toStringAsFixed(1), '22.5');
  });
  
  test('Grade calculation test', () {
    expect(getGrade(95), 'A');
    expect(getGrade(85), 'B');
    expect(getGrade(75), 'C');
    expect(getGrade(65), 'D');
    expect(getGrade(55), 'F');
  });
}