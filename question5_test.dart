import 'package:test/test.dart';
import '../question5.dart';

void main() {
  test('Manager salary calculation', () {
    Manager manager = Manager('John', 'M001', 'IT', 5);
    double salary = manager.calculateSalary(manager.getBaseSalary(), 1000.0);
    expect(salary, 9000.0); // 8000 base + 1000 bonus
  });
  
  test('Developer salary calculation', () {
    Developer dev = Developer('Alice', 'D001', 'IT', 'Dart');
    double salary = dev.calculateSalary(dev.getBaseSalary(), 500.0);
    expect(salary, 6500.0); // 6000 base + 500 bonus
  });
  
  test('Job titles test', () {
    Manager manager = Manager('John', 'M001', 'IT', 5);
    Developer dev = Developer('Alice', 'D001', 'IT', 'Dart');
    
    expect(manager.getJobTitle(), 'Manager');
    expect(dev.getJobTitle(), 'Senior Developer');
  });
}