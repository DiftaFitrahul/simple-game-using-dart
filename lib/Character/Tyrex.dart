import 'package:dart_application_begin2/Character.dart';
import 'package:dart_application_begin2/Skills/tyrexSkills.dart';

class Tyrex extends Character implements TyrexSkills {
  Tyrex(int healthPoints, int manaPoints) : super(healthPoints, manaPoints);
  @override
  int basicAttack(int tyrexAttack) => tyrexAttack;

  @override
  int Earthquake() {}
}
