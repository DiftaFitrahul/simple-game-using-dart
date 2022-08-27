import 'package:dart_application_begin2/Character.dart';
import 'package:dart_application_begin2/Skills/archerSkills.dart';

class Archer extends Character implements ArcherSkills {
  Archer(int healthPoints, int manaPoints) : super(healthPoints, manaPoints);
  @override
  int basicAttack(int archerAttack) => archerAttack;

  @override
  int HunterTiger() {}

  @override
  int SpectrumArrow() {}
}
