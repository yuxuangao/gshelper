import '../common/utils.dart';
import '../object/mycharacter.dart';
import '../object/artifact.dart';
import '../object/mycharacterdamage.dart';
import '../object/damage.dart';
import '../data/data.dart';
import 'artifact.dart';
import 'damage.dart';

class MyCharacterCalculator {
  static void adjustMyCharacter(MyCharacter myCharacter, Map<String, Object> character, Map<String, Object> weapon) {
    myCharacter.artifactMainTypeIndexList = [
      GsData.getArtifactIndexFromId(myCharacter.artifactFlowerId),
      GsData.getArtifactIndexFromId(myCharacter.artifactPlumeId),
      GsData.getArtifactIndexFromId(myCharacter.artifactSandsId),
      GsData.getArtifactIndexFromId(myCharacter.artifactGobletId),
      GsData.getArtifactIndexFromId(myCharacter.artifactCircletId),
    ];
    myCharacter.artifactMainStatIndexList = [
      myCharacter.artifactFlowerIndex,
      myCharacter.artifactPlumeIndex,
      myCharacter.artifactSandsIndex,
      myCharacter.artifactGlobletIndex,
      myCharacter.artifactCircletIndex,
    ];

    Levels level = GsData.getLevelFromIndex(myCharacter.levelIndex);
    Map<Stats, double> baseStats = (character['stat'] as Map<Levels, Object>)[level];
    double baseAttack = baseStats[Stats.Attack] + weapon['baseAttack'];
    List<Stats> mainStatList = [
      GsData.getArtifactFlowerMainStatFromIndex(myCharacter.artifactFlowerIndex),
      GsData.getArtifactPlumeMainStatFromIndex(myCharacter.artifactPlumeIndex),
      GsData.getArtifactSandsMainStatFromIndex(myCharacter.artifactSandsIndex),
      GsData.getArtifactGlobletMainStatFromIndex(myCharacter.artifactGlobletIndex),
      GsData.getArtifactCircletMainStatFromIndex(myCharacter.artifactCircletIndex),
    ];

    for (int i = 0; i < mainStatList.length + myCharacter.artifactSubStatIndexList.length; i++) {
      Stats stat;
      double value;

      if (i < mainStatList.length) {
        stat = mainStatList[i];
        value = GsData.getArtifactMainStatValue(stat);
      } else {
        stat = GsData.getArtifactSubStatFromIndex(myCharacter.artifactSubStatIndexList[i - mainStatList.length]);
        value = myCharacter.artifactSubValueList[i - mainStatList.length];
      }

      switch (stat) {
        case Stats.Hp:
          myCharacter.artifactHp += value;
          break;
        case Stats.HpBonus:
          myCharacter.artifactHp += baseStats[Stats.Hp] * value / 100;
          break;
        case Stats.Defend:
          myCharacter.artifactDefend += value;
          break;
        case Stats.DefendBonus:
          myCharacter.artifactDefend += baseStats[Stats.Defend] * value / 100;
          break;
        case Stats.Attack:
          myCharacter.artifactAttack += value;
          break;
        case Stats.AttackBonus:
          myCharacter.artifactAttack += baseAttack * value / 100;
          break;
        case Stats.Mastery:
          myCharacter.artifactMastery += value;
          break;
        case Stats.Recharge:
          myCharacter.artifactRecharge += value;
          break;
        case Stats.CritRate:
          myCharacter.artifactCritRate += value;
          break;
        case Stats.CritDmg:
          myCharacter.artifactCritDmg += value;
          break;
        default:
      }
    }
  }

  static List<Map<int, ArtifactSetType>> getArtifactSet(MyCharacter myCharacter) {
    Map<int, int> artifactTypeNumbeMap = {};
    artifactTypeNumbeMap.containsKey(myCharacter.artifactFlowerId)
        ? artifactTypeNumbeMap[myCharacter.artifactFlowerId] += 1
        : artifactTypeNumbeMap.addAll({myCharacter.artifactFlowerId: 1});
    artifactTypeNumbeMap.containsKey(myCharacter.artifactPlumeId)
        ? artifactTypeNumbeMap[myCharacter.artifactPlumeId] += 1
        : artifactTypeNumbeMap.addAll({myCharacter.artifactPlumeId: 1});
    artifactTypeNumbeMap.containsKey(myCharacter.artifactSandsId)
        ? artifactTypeNumbeMap[myCharacter.artifactSandsId] += 1
        : artifactTypeNumbeMap.addAll({myCharacter.artifactSandsId: 1});
    artifactTypeNumbeMap.containsKey(myCharacter.artifactGobletId)
        ? artifactTypeNumbeMap[myCharacter.artifactGobletId] += 1
        : artifactTypeNumbeMap.addAll({myCharacter.artifactGobletId: 1});
    artifactTypeNumbeMap.containsKey(myCharacter.artifactCircletId)
        ? artifactTypeNumbeMap[myCharacter.artifactCircletId] += 1
        : artifactTypeNumbeMap.addAll({myCharacter.artifactCircletId: 1});

    List<Map<int, ArtifactSetType>> result = [];
    for (MapEntry<int, int> artifactTypeEntry in artifactTypeNumbeMap.entries) {
      if (artifactTypeEntry.value >= 2) {
        result.add({artifactTypeEntry.key: ArtifactSetType.Set2});
      }
      if (artifactTypeEntry.value >= 4) {
        result.add({artifactTypeEntry.key: ArtifactSetType.Set4});
      }
    }

    return result;
  }

  static MyCharacterResult cal(MyCharacter myCharacter, Map<String, Object> character, Map<String, Object> weapon) {
    MyCharacterResult result = MyCharacterResult();

    Levels level = GsData.getLevelFromIndex(myCharacter.levelIndex);
    Map<Stats, double> baseStats = (character['stat'] as Map<Levels, Object>)[level];
    double baseAttack = baseStats[Stats.Attack] + weapon['baseAttack'];
    Stats subStat = weapon['subStat'];
    double subStatValue = weapon['subStatValue'];
    Map<Stats, double> weaponEffect = {};
    for (Stats stat in weapon['specialEffectAlways']) {
      double value = (weapon['specialEffect'] as Map<Refine, Map<Stats, double>>)[Refine.values[myCharacter.refineIndex]][stat];
      weaponEffect.addAll({stat: value});
    }

    Map<Stats, double> artifactEffect = {};
    List<Map<int, ArtifactSetType>> artifactSetList = getArtifactSet(myCharacter);
    for (Map<int, ArtifactSetType> artifactSet in artifactSetList) {
      if (artifactSet.keys.elementAt(0) < 0) continue;
      Map<String, Object> artifactSetEffect =
          (GsData.getArtifactFromId(artifactSet.keys.elementAt(0))['setEffect'] as Map<ArtifactSetType, Object>)[artifactSet.values.elementAt(0)];
      for (Stats stat in artifactSetEffect['effectAlways']) {
        if (artifactEffect.containsKey(stat)) {
          artifactEffect[stat] += (artifactSetEffect['effect'] as Map<Stats, double>)[stat];
        } else {
          artifactEffect[stat] = (artifactSetEffect['effect'] as Map<Stats, double>)[stat];
        }
      }
    }

    result.critRate = baseStats[Stats.CritRate] +
        (subStat == Stats.CritRate ? subStatValue : 0) +
        (weaponEffect[Stats.CritRate] ?? 0) +
        (artifactEffect[Stats.CritRate] ?? 0) +
        myCharacter.artifactCritRate;
    result.critDmg = baseStats[Stats.CritDmg] +
        (subStat == Stats.CritDmg ? subStatValue : 0) +
        (weaponEffect[Stats.CritDmg] ?? 0) +
        (artifactEffect[Stats.CritDmg] ?? 0) +
        myCharacter.artifactCritDmg;
    result.recharge = baseStats[Stats.Recharge] +
        (subStat == Stats.Recharge ? subStatValue : 0) +
        (weaponEffect[Stats.Recharge] ?? 0) +
        (artifactEffect[Stats.Recharge] ?? 0) +
        myCharacter.artifactRecharge;
    result.dmgBonus = baseStats[Stats.DmgBonus] +
        (subStat == Stats.DmgBonus ? subStatValue : 0) +
        (weaponEffect[Stats.DmgBonus] ?? 0) +
        (artifactEffect[Stats.DmgBonus] ?? 0) +
        (GsData.getArtifactGlobletMainStatFromIndex(myCharacter.artifactGlobletIndex) == Stats.DmgBonus ? GsData.getArtifactMainStatValue(Stats.DmgBonus) : 0);
    result.phyDmgBonus = baseStats[Stats.PhyDmgBonus] +
        (subStat == Stats.PhyDmgBonus ? subStatValue : 0) +
        (weaponEffect[Stats.PhyDmgBonus] ?? 0) +
        (artifactEffect[Stats.PhyDmgBonus] ?? 0) +
        (GsData.getArtifactGlobletMainStatFromIndex(myCharacter.artifactGlobletIndex) == Stats.PhyDmgBonus
            ? GsData.getArtifactMainStatValue(Stats.PhyDmgBonus)
            : 0);
    result.baseHp = baseStats[Stats.Hp];
    result.hp = baseStats[Stats.Hp] +
        (subStat == Stats.Hp ? subStatValue : 0) +
        (weaponEffect[Stats.Hp] ?? 0) +
        (artifactEffect[Stats.Hp] ?? 0) +
        (subStat == Stats.HpBonus ? baseStats[Stats.Hp] * subStatValue / 100 : 0) +
        baseStats[Stats.Hp] * (baseStats[Stats.HpBonus] + (weaponEffect[Stats.HpBonus] ?? 0) + (artifactEffect[Stats.HpBonus] ?? 0)) / 100 +
        myCharacter.artifactHp;
    result.baseAttack = baseAttack;
    result.attack = baseAttack +
        (subStat == Stats.Attack ? subStatValue : 0) +
        (weaponEffect[Stats.Attack] ?? 0) +
        (artifactEffect[Stats.Attack] ?? 0) +
        (subStat == Stats.AttackBonus ? baseAttack * subStatValue / 100 : 0) +
        (subStat == Stats.AttackBonusByHp ? result.hp * subStatValue / 100 : 0) +
        (subStat == Stats.AttackBonusByRecharge ? result.recharge * subStatValue / 100 : 0) +
        baseAttack * (baseStats[Stats.AttackBonus] + (weaponEffect[Stats.AttackBonus] ?? 0) + (artifactEffect[Stats.AttackBonus] ?? 0)) / 100 +
        myCharacter.artifactAttack;
    result.baseDefend = baseStats[Stats.Defend];
    result.defend = baseStats[Stats.Defend] +
        (subStat == Stats.Defend ? subStatValue : 0) +
        (weaponEffect[Stats.Defend] ?? 0) +
        (artifactEffect[Stats.Defend] ?? 0) +
        (subStat == Stats.DefendBonus ? baseStats[Stats.Defend] * subStatValue / 100 : 0) +
        baseStats[Stats.Defend] * (baseStats[Stats.DefendBonus] + (weaponEffect[Stats.DefendBonus] ?? 0) + (artifactEffect[Stats.DefendBonus] ?? 0)) / 100 +
        myCharacter.artifactDefend;
    result.mastery = baseStats[Stats.Mastery] +
        (subStat == Stats.Mastery ? subStatValue : 0) +
        (weaponEffect[Stats.Mastery] ?? 0) +
        (artifactEffect[Stats.Mastery] ?? 0) +
        myCharacter.artifactMastery;

    ArtifactInput artifactInput = ArtifactInput();
    artifactInput.characterId = myCharacter.characterId;
    artifactInput.levelIndex = myCharacter.levelIndex;
    artifactInput.artifactSandsIndex = myCharacter.artifactSandsIndex;
    artifactInput.artifactGobletIndex = myCharacter.artifactGlobletIndex;
    artifactInput.artifactCircletIndex = myCharacter.artifactCircletIndex;
    artifactInput.baseAttack = weapon['baseAttack'];
    artifactInput.artifactHp = myCharacter.artifactHp;
    artifactInput.artifactAttack = myCharacter.artifactAttack;
    artifactInput.artifactDefend = myCharacter.artifactDefend;
    artifactInput.artifactMastery = myCharacter.artifactMastery;
    artifactInput.artifactCritRate = myCharacter.artifactCritRate;
    artifactInput.artifactCritDmg = myCharacter.artifactCritDmg;
    artifactInput.artifactRecharge = myCharacter.artifactRecharge;
    result.artifactResult = ArtifactCalculator.cal(artifactInput);

    return result;
  }

  static MyCharacterDamageResult calDamage(MyCharacterDamageInput input) {
    if (input.skill == null) return MyCharacterDamageResult();
    Map<DamageType, DamageInput> elementDamageTypeInputMap = Map<DamageType, DamageInput>();
    Map<DamageType, DamageInput> physicalDamageTypeInputMap = Map<DamageType, DamageInput>();
    MyCharacterResult myCharacterResult = cal(input.myCharacter, input.character, input.weapon);

    for (DamageType damageType in DamageType.values) {
      DamageInput elementDamageInput = DamageInput();
      DamageInput physicalDamageInput = DamageInput();

      Map<Stats, double> buff = Map.fromIterable(Stats.values, value: (item) => 0.0);
      for (int i = 0; i < input.buffList.length; i++) {
        if (i >= input.buffActiveList.length || !input.buffActiveList[i]) continue;
        Map<String, Object> buffObject = input.buffList[i];
        if (!(buffObject['damageType'] as List<DamageType>).contains(damageType)) continue;
        if (buffObject['buffType'] == BuffType.BuffForMe || buffObject['buffType'] == BuffType.DebuffForEnemy) {
          buff[buffObject['stat']] += buffObject['value'];
        } else {
          buff[buffObject['stat']] -= buffObject['value'];
        }
      }

      double hp = myCharacterResult.hp + buff[Stats.Hp] + input.hp + myCharacterResult.baseHp * (buff[Stats.HpBonus] + input.hpBonus) / 100;
      double defend =
          myCharacterResult.defend + buff[Stats.Defend] + input.defend + myCharacterResult.baseDefend * (buff[Stats.DefendBonus] + input.defendBonus) / 100;
      double recharge = myCharacterResult.recharge + buff[Stats.Recharge] + input.recharge;
      double attack = myCharacterResult.attack +
          buff[Stats.Attack] +
          input.attack +
          myCharacterResult.baseAttack * (buff[Stats.AttackBonus] + input.attackBouns) / 100 +
          buff[Stats.AttackBonusByDefend] * defend / 100 +
          buff[Stats.AttackBonusByHp] * hp / 100 +
          buff[Stats.AttackBonusByRecharge] * recharge / 100;
      double extraDamage = buff[Stats.ExtraDamage] +
          input.extraDmage +
          buff[Stats.ExtraDamageByAttack] * attack / 100 +
          buff[Stats.ExtraDamageByHp] * hp / 100 +
          buff[Stats.ExtraDmageByDefend] * defend / 100;
      double mastery = myCharacterResult.mastery + buff[Stats.Mastery] + input.mastery;
      double elementDamageBonus = myCharacterResult.dmgBonus + buff[Stats.DmgBonus] + input.dmgBonus;
      double physicalDamageBonus = myCharacterResult.phyDmgBonus + buff[Stats.PhyDmgBonus] + input.phyDmgBonus;
      double critRate = myCharacterResult.critRate + buff[Stats.CritRate] + input.critRate;
      double critDmg = myCharacterResult.critDmg + buff[Stats.CritDmg] + input.critDmg;
      double defendDecrease = buff[Stats.DefendDecrease] + input.defendDecrease;
      double resistanceDecrease = buff[Stats.ResistanceDecrease] + input.restinanceDecrease;

      elementDamageInput.attack = attack;
      elementDamageInput.hp = hp;
      elementDamageInput.defend = defend;
      elementDamageInput.mastery = mastery;
      elementDamageInput.damageBonus = elementDamageBonus;
      elementDamageInput.critRate = critRate;
      elementDamageInput.critDmg = critDmg;
      elementDamageInput.characterLevel = input.myCharacter.levelIndex == Levels.Lv90 ? 90 : 80;
      elementDamageInput.enemyLevel = input.enemyLevel;
      elementDamageInput.defendDecrease = defendDecrease;
      elementDamageInput.enemyResistance = GsData.getEnemyResistance(input.enemyIndex, input.character['element']);
      elementDamageInput.resistanceDecrease = resistanceDecrease;
      elementDamageInput.extraDamage = extraDamage;
      elementDamageInput.reactionEnhanceMap = {
        ElementReactionType.Vaporize: buff[Stats.VaporizeBonus],
        ElementReactionType.Melt: buff[Stats.MeltBonus],
      };

      physicalDamageInput = elementDamageInput.copyWith(
        damageBonus: physicalDamageBonus,
        enemyResistance: GsData.getEnemyResistance(input.enemyIndex, Elements.Physical),
      );

      elementDamageTypeInputMap[damageType] = elementDamageInput;
      physicalDamageTypeInputMap[damageType] = physicalDamageInput;
    }

    MyCharacterDamageResult result = MyCharacterDamageResult();

    Map<Elements, Object> elementReaction = GsData.getElementReaction(input.character['element']);
    for (Map<String, Object> reaction in elementReaction.values) {
      result.reactionResult[reaction['name']] = {};
    }

    for (MapEntry<SkillType, Object> skillMap in input.skill.entries) {
      SkillType skillType = skillMap.key;
      if (skillType == SkillType.Passive) continue;

      Map<String, Object> skill = skillMap.value;
      String skillName = GsData.getSkillTypeName(skillType);
      result.elementResult[skillName] = {};
      result.physicalResult[skillName] = {};
      for (Map<String, Object> reaction in elementReaction.values) {
        result.reactionResult[reaction['name']][skillName] = {};
      }

      for (Map<String, Object> hitMap in skill['hit']) {
        int index = 1;
        for (Map<String, Object> valueMap in hitMap['value']) {
          String hitName = hitMap['name'];
          if ((hitMap['value'] as List).length > 1) {
            hitName += '（' + Utils.generateNumberCharacter(index++) + '）';
          }

          double ratio = Utils.getSkillValueWithCharacter(valueMap['value'], input.myCharacter, skillType);
          double extraDamage = 0.0;
          for (MapEntry<Stats, double> extraEntry in (valueMap['extra'] as Map<dynamic, dynamic>).entries) {
            switch (extraEntry.key) {
              case Stats.ExtraDamage:
                extraDamage += extraEntry.value;
                break;
              case Stats.ExtraDamageByAttack:
                extraDamage += extraEntry.value * elementDamageTypeInputMap[hitMap['damageType']].attack / 100;
                break;
              case Stats.ExtraDamageByHp:
                extraDamage += extraEntry.value * elementDamageTypeInputMap[hitMap['damageType']].hp / 100;
                break;
              case Stats.ExtraDmageByDefend:
                extraDamage += extraEntry.value * elementDamageTypeInputMap[hitMap['damageType']].defend / 100;
                break;
              default:
            }
          }

          if (hitMap['elementType'] == SkillElementType.Both || hitMap['elementType'] == SkillElementType.Element) {
            DamageInput elementDamageInput = elementDamageTypeInputMap[hitMap['damageType']].copyWith(
              skillRatio: ratio,
            );
            elementDamageInput.extraDamage += extraDamage;
            result.elementResult[skillName][hitName] = DamageCalculator.cal(elementDamageInput);
            for (Map<String, Object> reaction in elementReaction.values) {
              elementDamageInput.elementRatio = reaction['ratio'];
              elementDamageInput.elementEnhance = elementDamageInput.reactionEnhanceMap[reaction['type']];
              result.reactionResult[reaction['name']][skillName][hitName] = DamageCalculator.cal(elementDamageInput);
            }
          }

          if (hitMap['elementType'] == SkillElementType.Both || hitMap['elementType'] == SkillElementType.Physical) {
            DamageInput physicalDamageInput = physicalDamageTypeInputMap[hitMap['damageType']].copyWith(
              skillRatio: ratio,
            );
            physicalDamageInput.extraDamage += extraDamage;
            result.physicalResult[skillName][hitName] = DamageCalculator.cal(physicalDamageInput);
          }
        }
      }
    }

    return result;
  }
}
