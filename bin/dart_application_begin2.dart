import 'dart:io';

void main(List<String> arguments) {
  print("## Welcome to the RPG Game ##");
  print("Select a Character\n1. Warrior\n2.Archer");
  print("Select (1/2): ");
  int selectedCharacter = int.tryParse(stdin.readLineSync());

  switch (selectedCharacter) {
    case 1:
      print("You are choosing a Warrior");
      break;
    case 2:
      print("You are choosing a Archer");
      break;
  }
}
