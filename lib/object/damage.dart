import '../data/data.dart';

class DamageInput {
  double attack;
  double hp;
  double defend;
  double mastery;
  double damageBonus;
  double critRate;
  double critDmg;
  double skillRatio;
  double skillRatioExtra;
  int characterLevel = 90;
  int enemyLevel = 90;
  double defendDecrease = 0.0;
  double enemyResistance = 10.0;
  double resistanceDecrease = 0.0;
  double damageBonusForOther = 0.0;
  double elementRatio = 1.0;
  double elementEnhance = 0.0;
  double extraDamage = 0.0;
  double damageBonusExtra = 100.0;
  Map<ElementReactionType, double> reactionEnhanceMap = {};

  DamageInput copyWith({
    double attack,
    double hp,
    double defend,
    double mastery,
    double damageBonus,
    double critRate,
    double critDmg,
    double skillRatio,
    double skillRatioExtra,
    int characterLevel,
    int enemyLevel,
    double defendDecrease,
    double enemyResistance,
    double resistanceDecrease,
    double damageBonusForOther,
    double elementRatio,
    double elementEnhance,
    double extraDamage,
    double damageBonusExtra,
    Map<ElementReactionType, double> reactionEnhanceMap,
  }) {
    DamageInput result = new DamageInput();
    result.attack = attack ?? this.attack;
    result.hp = hp ?? this.hp;
    result.defend = defend ?? this.defend;
    result.mastery = mastery ?? this.mastery;
    result.damageBonus = damageBonus ?? this.damageBonus;
    result.critRate = critRate ?? this.critRate;
    result.critDmg = critDmg ?? this.critDmg;
    result.skillRatio = skillRatio ?? this.skillRatio;
    result.skillRatioExtra = skillRatioExtra ?? this.skillRatioExtra;
    result.characterLevel = characterLevel ?? this.characterLevel;
    result.enemyLevel = enemyLevel ?? this.enemyLevel;
    result.defendDecrease = defendDecrease ?? this.defendDecrease;
    result.enemyResistance = enemyResistance ?? this.enemyResistance;
    result.resistanceDecrease = resistanceDecrease ?? this.resistanceDecrease;
    result.damageBonusForOther = damageBonusForOther ?? this.damageBonusForOther;
    result.elementRatio = elementRatio ?? this.elementRatio;
    result.elementEnhance = elementEnhance ?? this.elementEnhance;
    result.extraDamage = extraDamage ?? this.extraDamage;
    result.damageBonusExtra = damageBonusExtra ?? this.damageBonusExtra;
    result.reactionEnhanceMap = reactionEnhanceMap ?? this.reactionEnhanceMap;
    return result;
  }
}

class DamageResult {
  bool hasResult = false;
  double damageWithCrit;
  double damageWithoutCrit;
  double damageAverage;
  String errorMessage = "";
}
