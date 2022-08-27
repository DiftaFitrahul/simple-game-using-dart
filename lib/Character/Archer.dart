import 'package:dart_application_begin2/Character.dart';
import 'package:dart_application_begin2/Skills/archerSkills.dart';

class Archer extends Character implements ArcherSkills {
  @override
  int basicAttack(double archerAttack) {
    archerAttack = 25;
  }

  @override
  int HunterTiger() {}

  @override
  int SpectrumArrow() {}
}
