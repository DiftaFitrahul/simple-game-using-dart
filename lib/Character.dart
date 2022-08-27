abstract class Character {
  int _healthPoint;
  int _manaPoint;
  Character(this._healthPoint, this._manaPoint);

  int get health => this._healthPoint;
  int get mana => this._manaPoint;

  int basicAttack(int attack);
}
