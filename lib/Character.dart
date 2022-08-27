abstract class Character {
  int _healthPoint;
  int _manaPoint;

  void set HealthPoint(int healthPoint) {
    _healthPoint = healthPoint;
  }

  void set ManaPoint(int manaPoint) {
    _manaPoint = manaPoint;
  }

  int basicAttack(double attack);
}
