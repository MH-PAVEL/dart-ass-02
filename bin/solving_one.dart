import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');


  int firstDigit = int.parse(input[0]);
  int secondDigit = int.parse(input[2]);
  String operator = input[1];


  int result;
  switch (operator) {
    case '+':
      result = (firstDigit + secondDigit);
      break;
    case '-':
      result = (firstDigit - secondDigit);
      break;
    case '*':
      result = (firstDigit * secondDigit);
      break;
    case '/':
      if (secondDigit != 0) {
        result = firstDigit ~/ secondDigit;
      } else {
        print("Error: Division by zero");
        return;
      }
      break;
    default:
      print("Error: Invalid operator");
      return;
  }
  print("$result");
}
