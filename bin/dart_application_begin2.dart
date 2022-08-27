import 'dart:io';

import 'package:dart_application_begin2/Character.dart';
import 'package:dart_application_begin2/Character/Archer.dart';
import 'package:dart_application_begin2/Character/Dragon.dart';
import 'package:dart_application_begin2/Character/Tyrex.dart';
import 'package:dart_application_begin2/Character/Warrior.dart';

void main(List<String> arguments) {
  Character warrior = new Warrior(300, 100);
  Character archer = new Archer(250, 140);
  Character dragon = new Dragon(600, 80);
  Character tyrex = new Tyrex(450, 80);
  Hero hero;

  print("## Welcome to the RPG Game ##");
  print("Select a Character\n1. Warrior\n2. Archer");
  print("Select (1/2): ");
  int selectedCharacter = int.tryParse(stdin.readLineSync());

  if (selectedCharacter == 1) {
    hero = Hero.warrior;
  } else if (selectedCharacter == 2) {
    hero = Hero.archer;
  } else {
    print("Input is not valid");
  }

  switch (hero) {
    case Hero.warrior:
      print("You are choosing a Warrior");
      getBattle(warrior, dragon, tyrex);
      break;
    case Hero.archer:
      print("You are choosing a Archer");
      getBattle(archer, dragon, tyrex);
      break;
    default:
      print("You are not choosing");
  }
}

enum Hero { warrior, archer }

void getBattle(Character hero, Character dragon, Character tyrex) {
  int dragonHealth = dragon.health,
      tyrexHealth = tyrex.health,
      dragonMana = dragon.mana,
      tyrexMana = tyrex.mana;

  do {
    if (hero is Warrior) {
      int getAttack = getInstructionWarrior();
      switch (getAttack) {
        case 1:
          dragonHealth = dragonHealth - hero.basicAttack(30);
          break;
        case 2:
          dragonHealth = dragonHealth - hero.BlazeBlade();
          break;
        case 3:
          dragonHealth = dragonHealth - hero.RainSwords();
          break;
        default:
          print("Input Invalid");
      }
    } else if (hero is Archer) {
      int getAttack = getInstructionArcher();
      switch (getAttack) {
        case 1:
          dragonHealth = dragonHealth - hero.basicAttack(43);
          break;
        case 2:
          dragonHealth = dragonHealth - hero.HunterTiger();
          break;
        case 3:
          dragonHealth = dragonHealth - hero.SpectrumArrow();
          break;
        default:
          print("Input Invalid");
      }
    }
  } while (dragonHealth > 0 || tyrexHealth > 0);
}

int getInstructionWarrior() {
  print("Choose attack :");
  print("1. Basic attack\n2. Blaze Blade\n3. Rain Swords");
  int choose = int.tryParse(stdin.readLineSync());
  return choose;
}

int getInstructionArcher() {
  print("Choose attack :");
  print("1. Basic attack\n2. Hunter Tiger\n3. Spectrum Arrow");
  int choose = int.tryParse(stdin.readLineSync());
  return choose;
}
