import 'package:dart_application_begin2/Character.dart';
import 'package:dart_application_begin2/Skills/dragonSkills.dart';

class Dragon extends Character implements DragonSkills {
  Dragon(int healthPoints, int manaPoints) : super(healthPoints, manaPoints);
  @override
  int basicAttack(int dragonAttack) => dragonAttack;
  @override
  int HoloBreath() {}
}
