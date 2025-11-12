// Question 5: Advanced Features & Mixins

mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    print("Payment processed: \$$amount");
  }
}

mixin Reportable {
  String generateReport(String employeeName, String department) {
    return "Monthly report for $employeeName in $department department";
  }
}

abstract class Employee {
  String name;
  String id;
  String department;

  Employee(this.name, this.id, this.department);

  String getJobTitle();
  double getBaseSalary();
}

class Manager extends Employee with Payable, Reportable {
  int teamSize;

  Manager(String name, String id, String department, this.teamSize)
      : super(name, id, department);

  @override
  String getJobTitle() {
    return "Manager";
  }

  @override
  double getBaseSalary() {
    return 8000.0;
  }

  void displayInfo() {
    print("Manager: $name (ID: $id, Department: $department, Team Size: $teamSize)");
    print("Job Title: ${getJobTitle()}");
    double baseSalary = getBaseSalary();
    double calculatedSalary = calculateSalary(baseSalary, 1000.0);
    print("Base Salary: \$$baseSalary");
    print("Calculated Salary: \$$calculatedSalary");
    processPayment(calculatedSalary);
    print("Report: ${generateReport(name, department)}");
  }
}

class Developer extends Employee with Payable {
  String programmingLanguage;

  Developer(String name, String id, String department, this.programmingLanguage)
      : super(name, id, department);

  @override
  String getJobTitle() {
    return "Senior Developer";
  }

  @override
  double getBaseSalary() {
    return 6000.0;
  }

  void displayInfo() {
    print("Developer: $name (ID: $id, Department: $department, Language: $programmingLanguage)");
    print("Job Title: ${getJobTitle()}");
    double baseSalary = getBaseSalary();
    double calculatedSalary = calculateSalary(baseSalary, 500.0);
    print("Base Salary: \$$baseSalary");
    print("Calculated Salary: \$$calculatedSalary");
    processPayment(calculatedSalary);
  }
}

void main() {
  Manager manager = Manager("John Smith", "M001", "IT", 5);
  Developer developer = Developer("Alice Johnson", "D001", "IT", "Dart");

  print("=== Employee Management System ===\n");
  manager.displayInfo();
  print("\n" + "=" * 50 + "\n");
  developer.displayInfo();
}