import 'dart:math';
import 'package:flutter/services.dart';
import 'package:gshelper/common/const.dart';

import '../object/mycharacter.dart';
import '../data/data.dart';

class Utils {
  static TextInputFormatter getNumberInputFormatter() {
    return FilteringTextInputFormatter.allow(RegExp(r'[0-9.-]'));
  }

  static double getSkillValue(List<double> valueList, int skillLevel) {
    return valueList[min(max(0, skillLevel - 1), valueList.length - 1)];
  }

  static double getSkillValueWithCharacter(
      List<double> valueList, MyCharacter myCharacter, SkillType skillType) {
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
    return (number / 10 >= 2
            ? Const.NUMBER_CHARACTERS[(number / 10).floor() - 1]
            : '') +
        Const.NUMBER_CHARACTERS[9] +
        (number % 10 == 0 ? '' : Const.NUMBER_CHARACTERS[number % 10 - 1]);
  }
}
