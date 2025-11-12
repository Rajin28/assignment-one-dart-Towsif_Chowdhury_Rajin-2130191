import 'package:test/test.dart';
import '../question4.dart';

void main() {
  test('Vehicle age calculation', () {
    Car car = Car('Toyota', 'Camry', 2020, 4);
    int currentYear = DateTime.now().year;
    expect(car.calculateAge(), currentYear - 2020);
  });
  
  test('Car info display', () {
    Car car = Car('Toyota', 'Camry', 2020, 4);
    expect(car.numberOfDoors, 4);
    expect(car.brand, 'Toyota');
  });
  
  test('Motorcycle info display', () {
    Motorcycle bike = Motorcycle('Honda', 'CBR', 2021, true);
    expect(bike.hasWindshield, true);
    expect(bike.model, 'CBR');
  });
}