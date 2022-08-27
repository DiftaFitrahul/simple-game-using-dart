import 'package:dart_application_begin2/Character.dart';
import 'package:dart_application_begin2/Skills/warriorSkills.dart';

class Warrior extends Character implements WarriorSkills {
  Warrior(int healthPoint, int manaPoint) : super(healthPoint, manaPoint);

  @override
  int basicAttack(int warriorAttack) => warriorAttack;

  @override
  int BlazeBlade() {
    int blazeBlade = 200;
    return blazeBlade;
  }

  @override
  int RainSwords() {
    int rainSwords = 180;
    return rainSwords;
  }
}
