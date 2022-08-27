import 'package:dart_application_begin2/Character.dart';
import 'package:dart_application_begin2/Skills/tyrexSkills.dart';

class Tyrex extends Character implements TyrexSkills {
  @override
  int basicAttack(double tyrexAttack) {
    tyrexAttack = 40;
  }

  @override
  int Earthquake() {}
}
