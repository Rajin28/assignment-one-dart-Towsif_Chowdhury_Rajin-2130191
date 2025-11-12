// Question 3: Classes & Objects

class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;

  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;

  void deposit(double amount) {
    balance += amount;
    print("Deposited: \$$amount");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrawn: \$$amount");
    } else {
      print("Insufficient funds for withdrawal of \$$amount from account $accountNumber");
    }
  }

  double getBalance() {
    return balance;
  }

  void displayAccountInfo() {
    print("Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: \$$balance");
  }
}

void main() {
  // Create bank accounts
  BankAccount account1 = BankAccount("12345", "Alice", "Savings");
  BankAccount account2 = BankAccount("67890", "Bob", "Checking");
  BankAccount account3 = BankAccount("11121", "Charlie", "Savings");

  // Demonstrate operations
  account1.deposit(1500.0);
  account2.deposit(800.0);
  account3.deposit(2000.0);

  account1.withdraw(500.0);
  account2.withdraw(1000.0); // Should show insufficient funds

  print("\nAccount Information:");
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();
}