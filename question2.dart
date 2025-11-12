// Question 2: Collections & Control Flow
import 'dart:math';

void main() {
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
  Map<String, int> studentScores = {};
  Random random = Random();

  // Assign random scores
  for (String name in studentNames) {
    studentScores[name] = random.nextInt(41) + 60; // 60-100
  }

  // Display all scores
  print("Student Scores: $studentScores");

  // Find highest and lowest
  String highestStudent = "";
  String lowestStudent = "";
  int highestScore = 0;
  int lowestScore = 100;
  int totalScore = 0;

  studentScores.forEach((name, score) {
    totalScore += score;
    if (score > highestScore) {
      highestScore = score;
      highestStudent = name;
    }
    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = name;
    }
  });

  double averageScore = totalScore / studentNames.length;

  print("\nHighest Score: $highestStudent - $highestScore");
  print("Lowest Score: $lowestStudent - $lowestScore");
  print("Average Score: ${averageScore.toStringAsFixed(1)}");

  // Categorize students
  print("\nStudent Categories:");
  studentScores.forEach((name, score) {
    String category = getCategory(score);
    print("$name: $score - $category");
  });
}

String getCategory(int score) {
  switch (score ~/ 10) {
    case 10:
    case 9:
      return "Excellent";
    case 8:
      return "Good";
    case 7:
      return "Average";
    default:
      return "Needs Improvement";
  }
}