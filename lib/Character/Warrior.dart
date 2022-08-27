import 'package:dart_application_begin2/Character.dart';
import 'package:dart_application_begin2/Skills/warriorSkills.dart';

class Warrior extends Character implements WarriorSkills {
  @override
  int basicAttack(double warriorAttack) {
    warriorAttack = 20;
  }

  @override
  int BlazeBlade() {}

  @override
  int RainSwords() {}
}
