import 'package:test/test.dart';
import '../question3.dart';

void main() {
  test('BankAccount operations test', () {
    BankAccount account = BankAccount('12345', 'Test User', 'Savings');
    
    account.deposit(1000.0);
    expect(account.getBalance(), 1000.0);
    
    account.withdraw(500.0);
    expect(account.getBalance(), 500.0);
  });
  
  test('Insufficient funds test', () {
    BankAccount account = BankAccount('12345', 'Test User', 'Savings');
    account.deposit(100.0);
    
    // This should not throw error but print insufficient funds message
    account.withdraw(200.0);
    expect(account.getBalance(), 100.0); // Balance should remain unchanged
  });
}