import 'dart:math';
import 'package:flutter/services.dart';
import 'package:sprintf/sprintf.dart';

import 'const.dart';
import '../object/mycharacter.dart';
import '../data/data.dart';

class Utils {
  static TextInputFormatter getNumberInputFormatter() {
    return FilteringTextInputFormatter.allow(RegExp(r'[0-9.-]'));
  }

  static double getSkillValue(List<double> valueList, int skillLevel) {
    return valueList[min(max(0, skillLevel - 1), valueList.length - 1)];
  }

  static String getSkillOtherValue(List<String> valueList, int skillLevel) {
    return valueList[min(max(0, skillLevel - 1), valueList.length - 1)];
  }

  static double getSkillValueWithCharacter(List<double> valueList, MyCharacter myCharacter, SkillType skillType) {
    switch (skillType) {
      case SkillType.SkillA:
        return getSkillValue(valueList, myCharacter.skillALevel);
      case SkillType.SkillE:
        return getSkillValue(valueList, myCharacter.skillELevel);
      case SkillType.SkillQ:
        return getSkillValue(valueList, myCharacter.skillQLevel);
      default:
        return 0;
    }
  }

  static String generateNumberCharacter(int number) {
    if (number <= 0 || number >= 100) return '';
    if (number <= 10) return Const.NUMBER_CHARACTERS[number - 1];
    return (number / 10 >= 2 ? Const.NUMBER_CHARACTERS[(number / 10).floor() - 1] : '') +
        Const.NUMBER_CHARACTERS[9] +
        (number % 10 == 0 ? '' : Const.NUMBER_CHARACTERS[number % 10 - 1]);
  }

  static String getValueUnitFromStat(Stats stat) {
    if (!Const.STATS_SHOW_PERCENT.contains(stat)) return '';

    switch (stat) {
      case Stats.AttackBonusByBaseAttack:
        return '%基础攻击力';
      case Stats.AttackBonusByDefend:
        return '%防御力';
      case Stats.AttackBonusByHp:
        return '%生命值';
      case Stats.AttackBonusByRecharge:
        return '%充能效率';
      case Stats.AttackBonusByRechargeOver100:
        return '%充能效率';
      case Stats.DmgBonusByRecharge:
        return '%充能效率';
      case Stats.DmgBonusByRechargeOver100:
        return '%充能效率';
      case Stats.DmgBonusByHealingForHpExtraDamage:
        return '%治疗加成';
      case Stats.DmgBonusByMastery:
        return '%元素精通';
      case Stats.DmgBonusByEnergy:
        return '%元素能量';
      case Stats.ExtraDamageByAttack:
        return '%攻击力';
      case Stats.ExtraDamageByAttackUsed:
        return '%攻击力';
      case Stats.ExtraDamageByHp:
        return '%生命值';
      case Stats.ExtraDmageByDefend:
        return '%防御力';
      case Stats.ExtraDmageByDefendUsed:
        return '%防御力';
      case Stats.MasteryByMastery:
        return '%元素精通';
      case Stats.CritRateByCritRate:
        return '%暴击率';
      default:
        return '%';
    }
  }

  static String getWeaponDescription(Map<String, Object> weapon, Refine refine) {
    List<dynamic> commentArguments = weapon['specialEffectCommentArguments'];
    return sprintf(weapon['specialEffectComment'], List.generate(commentArguments.length, (index) => (commentArguments[index] as List<String>)[refine.index]));
  }
}
