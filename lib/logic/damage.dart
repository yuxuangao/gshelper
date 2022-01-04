import 'dart:math';

import '../object/damage.dart';

class DamageCalculator {
  static DamageResult cal(DamageInput input) {
    DamageResult result = DamageResult();

    if (input.attack == null || input.attack <= 0) {
      result.errorMessage += "攻击力输入有误\n";
    }
    if (input.mastery == null || input.mastery < 0) {
      result.errorMessage += "元素精通输入有误\n";
    }
    if (input.damageBonus == null || input.damageBonus < 0) {
      result.errorMessage += "元素增伤输入有误\n";
    }
    if (input.critRate == null) {
      result.errorMessage += "暴击率输入有误\n";
    }
    if (input.critDmg == null || input.critDmg <= 0) {
      result.errorMessage += "暴击伤害输入有误\n";
    }
    if (input.skillRatio == null || input.skillRatio <= 0) {
      result.errorMessage += "技能倍率输入有误\n";
    }
    if (input.characterLevel == null || input.characterLevel <= 0) {
      result.errorMessage += "角色等级输入有误\n";
    }
    if (input.enemyLevel == null || input.enemyLevel <= 0) {
      result.errorMessage += "敌人等级输入有误\n";
    }
    if (input.defendDecrease == null || input.defendDecrease < 0) {
      result.errorMessage += "减防输入有误\n";
    }
    if (input.enemyResistance == null) {
      result.errorMessage += "敌人抗性输入有误\n";
    }
    if (input.resistanceDecrease == null || input.resistanceDecrease < 0) {
      result.errorMessage += "减抗输入有误\n";
    }
    if (input.damageBonusForOther == null || input.damageBonusForOther < 0) {
      result.errorMessage += "额外增伤输入有误\n";
    }
    if (input.elementRatio == null || input.elementRatio <= 0) {
      result.errorMessage += "反应倍率输入有误\n";
    }
    if (input.elementEnhance == null || input.elementEnhance < 0) {
      result.errorMessage += "反应额外增加输入有误\n";
    }

    if (result.errorMessage != '') {
      return result;
    }

    double r = input.skillRatio / 100;
    double dr = (input.characterLevel + 100) /
        (input.characterLevel +
            100 +
            (1 - input.defendDecrease / 100) * (input.enemyLevel + 100));
    double rr = 1.0;
    if (input.enemyResistance > 75) {
      rr = 25 / (25 + input.enemyResistance);
    } else if (input.enemyResistance > 0) {
      rr = 1 - input.enemyResistance / 100;
    } else {
      rr = 1 - input.enemyResistance / 200;
    }
    if (input.enemyResistance > 75) {
      if (input.enemyResistance - input.resistanceDecrease > 75) {
        rr *= (25 + input.enemyResistance) /
            (25 + input.enemyResistance - input.resistanceDecrease);
      } else if (input.enemyResistance - input.resistanceDecrease > 0) {
        rr *= (25 + input.enemyResistance) *
            (1 - (input.enemyResistance - input.resistanceDecrease)) /
            25;
      } else {
        rr *= (25 + input.enemyResistance) *
            (1 - (input.enemyResistance - input.resistanceDecrease) / 2) /
            25;
      }
    } else if (input.enemyResistance > 0) {
      if (input.enemyResistance >= input.resistanceDecrease) {
        rr *= 1 + input.resistanceDecrease / (100 - input.enemyResistance);
      } else if (input.enemyResistance < input.resistanceDecrease) {
        rr *= (100 + (input.resistanceDecrease - input.enemyResistance) / 2) /
            (100 - input.enemyResistance);
      }
    }
    double at = input.attack;
    double cr = 1 + input.critDmg / 100;
    double db = 1 + input.damageBonus / 100 + input.damageBonusForOther / 100;
    double sp = 1.0;
    if (input.elementRatio > 1) {
      sp = input.elementRatio *
          (1 +
              (278 * input.mastery / (input.mastery + 1400) / 100) +
              input.elementEnhance / 100);
    }

    result.damageWithoutCrit = (r * at + input.extraDamage) * dr * rr * db * sp;
    result.damageWithCrit = result.damageWithoutCrit * cr;
    result.damageAverage =
        result.damageWithCrit * min(max(input.critRate, 0), 100) / 100 +
            result.damageWithoutCrit *
                (100 - min(max(input.critRate, 0), 100)) /
                100;

    result.damageWithoutCrit = result.damageWithoutCrit.roundToDouble();
    result.damageWithCrit = result.damageWithCrit.roundToDouble();
    result.damageAverage = result.damageAverage.roundToDouble();

    result.hasResult = true;

    return result;
  }
}
