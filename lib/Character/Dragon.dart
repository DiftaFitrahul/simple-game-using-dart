import 'package:dart_application_begin2/Character.dart';
import 'package:dart_application_begin2/Skills/dragonSkills.dart';

class Dragon extends Character implements DragonSkills {
  @override
  int basicAttack(double dragonAttack) {
    dragonAttack = 50;
  }

  @override
  int HoloBreath() {}
}
