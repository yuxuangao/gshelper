class DamageInput {
  double attack;
  double mastery;
  double damageBonus;
  double critRate;
  double critDmg;
  double skillRatio;
  int characterLevel = 90;
  int enemyLevel = 90;
  double defendDecrease = 0.0;
  double enemyResistance = 10.0;
  double resistanceDecrease = 0.0;
  double damageBonusForOther = 0.0;
  double elementRatio = 1.0;
  double elementEnhance = 0.0;
}

class DamageResult {
  bool hasResult = false;
  double damageWithCrit;
  double damageWithoutCrit;
  double damageAverage;
  String errorMessage = "";
}
