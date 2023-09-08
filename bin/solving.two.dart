import 'dart:io';

void main() {
  String dressCode = stdin.readLineSync()!.toLowerCase();
  int temperature = int.parse(stdin.readLineSync()!);

  String suggestedOutfit = "";

  if (dressCode == "casual" && temperature >= 15 && temperature <= 25) {
    suggestedOutfit = "Jeans and a light jacket.";
  } else if (dressCode == "festive" && temperature > 25) {
    suggestedOutfit = "Colorful dress and sandals.";
  } else {
    suggestedOutfit = "Wear what you're comfortable in.";
  }

  // Print the suggested outfit
  print(suggestedOutfit);
}
