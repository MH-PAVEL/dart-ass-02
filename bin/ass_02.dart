void main() {


  // Passed cases values
  List<int> grades = [85, 92, 78, 65, 88, 72];

  // Failed cases values
  //List<int> grades = [45,67,13,45,36,87,34,45,67,90];

  // Calculating the average grade
  double sum = 0;
  for (int grade in grades) {
    sum += grade;
  }
  double average = sum / grades.length;

  // Rounding the average to the nearest integer
  int roundedAverage = average.round();

  // Determining passed or failed and printing the output
  if (roundedAverage >= 70) {
    print("Student's average grade: ${average.toStringAsFixed(1)}");
    print("Rounded average: $roundedAverage");
    print("Passed");
  } else {
    print("Student's average grade: ${average.toStringAsFixed(1)}");
    print("Rounded average: $roundedAverage");
    print("Failed");
  }
}
