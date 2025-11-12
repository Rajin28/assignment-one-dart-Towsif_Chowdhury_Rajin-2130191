// Question 1: Basic Data Types & Functions

void main() {
  // Basic data types
  String name = "John Doe";
  int age = 25;
  double height = 5.9;
  bool isStudent = true;

  // Display basic information
  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");

  // Calculate BMI
  double weight = 68.0;
  double bmi = calculateBMI(weight, height);
  print("BMI: ${bmi.toStringAsFixed(1)}");

  // Get grade
  int score = 85;
  String grade = getGrade(score);
  print("Grade: $grade");
}

double calculateBMI(double weight, double height) {
  double heightInMeters = height * 0.3048;
  return weight / (heightInMeters * heightInMeters);
}

String getGrade(int score) {
  if (score >= 90) return "A";
  else if (score >= 80) return "B";
  else if (score >= 70) return "C";
  else if (score >= 60) return "D";
  else return "F";
}