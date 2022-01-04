import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

import 'character.dart';
import 'weapon.dart';
import 'enemy.dart';
import 'artifact.dart';
import 'skill.dart';

class GsData {
  static List<PickerItem<dynamic>> getCharacterNames() {
    List<PickerItem<dynamic>> result = [];

    List<List<Map<String, Object>>> tempList = List.generate(_CHARACTERS_SHOW_ELEMENT_ORDER.length, (index) => []);
    for (var character in CHARACTERS) {
      var index = _CHARACTERS_SHOW_ELEMENT_ORDER.indexOf(character['element']);
      if (index >= 0) {
        tempList[index].add(character);
      }
    }
    for (var characterList in tempList) {
      for (var character in characterList) {
        result.add(PickerItem(
          text: Text(
            character['name'],
            style: TextStyle(
              color: _ELEMENT_TEXT_COLOR[character['element']],
            ),
          ),
          value: character['name'],
        ));
      }
    }

    return result;
  }

  static Map<String, Object> getCharacterFromIndex(int index) {
    if (index < 0) return null;

    List<List<Map<String, Object>>> tempList = List.generate(_CHARACTERS_SHOW_ELEMENT_ORDER.length, (index) => []);
    for (var character in CHARACTERS) {
      var index = _CHARACTERS_SHOW_ELEMENT_ORDER.indexOf(character['element']);
      if (index >= 0) {
        tempList[index].add(character);
      }
    }

    int i = 0;
    for (var characterList in tempList) {
      for (var character in characterList) {
        if (i++ == index) {
          return {...character};
        }
      }
    }

    return null;
  }

  static List<String> getLevels() {
    return List.generate(_LEVELS.length, (index) => _LEVELS[index]['name']);
  }

  static Levels getLevelFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _LEVELS.length) return null;
    return _LEVELS[index]['level'];
  }

  static String getLevelNameFromIndex(int index) {
    if (index < 0) return '';
    if (index >= _LEVELS.length) return '';
    return _LEVELS[index]['name'];
  }

  static List<String> getArtifactFlowerMainStatNameList() {
    return List.generate(_ARTIFACT_FLOWER_MAIN_STAT.length, (index) => _STATS_NAME[_ARTIFACT_FLOWER_MAIN_STAT[index]]);
  }

  static Stats getArtifactFlowerMainStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_FLOWER_MAIN_STAT.length) return null;
    return _ARTIFACT_FLOWER_MAIN_STAT[index];
  }

  static List<String> getArtifactPlumeMainStatNameList() {
    return List.generate(_ARTIFACT_PLUME_MAIN_STAT.length, (index) => _STATS_NAME[_ARTIFACT_PLUME_MAIN_STAT[index]]);
  }

  static Stats getArtifactPlumeMainStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_PLUME_MAIN_STAT.length) return null;
    return _ARTIFACT_PLUME_MAIN_STAT[index];
  }

  static List<String> getArtifactSandsMainStatNameList() {
    return List.generate(_ARTIFACT_SANDS_MAIN_STAT.length, (index) => _STATS_NAME[_ARTIFACT_SANDS_MAIN_STAT[index]]);
  }

  static Stats getArtifactSandsMainStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_SANDS_MAIN_STAT.length) return null;
    return _ARTIFACT_SANDS_MAIN_STAT[index];
  }

  static List<String> getArtifactGobletMainStatNameList() {
    return List.generate(_ARTIFACT_GOBLET_MAIN_STAT.length, (index) => _STATS_NAME[_ARTIFACT_GOBLET_MAIN_STAT[index]]);
  }

  static Stats getArtifactGlobletMainStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_GOBLET_MAIN_STAT.length) return null;
    return _ARTIFACT_GOBLET_MAIN_STAT[index];
  }

  static List<String> getArtifactCircletMainStatNameList() {
    return List.generate(_ARTIFACT_CIRCLET_MAIN_STAT.length, (index) => _STATS_NAME[_ARTIFACT_CIRCLET_MAIN_STAT[index]]);
  }

  static Stats getArtifactCircletMainStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_CIRCLET_MAIN_STAT.length) return null;
    return _ARTIFACT_CIRCLET_MAIN_STAT[index];
  }

  static List<String> getArtifactSubStatNameList() {
    return List.generate(_ARTIFACT_SUB_STAT.length, (index) => _STATS_NAME[_ARTIFACT_SUB_STAT[index]]);
  }

  static Stats getArtifactSubStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_SUB_STAT.length) return null;
    return _ARTIFACT_SUB_STAT[index];
  }

  static List<String> getArtifactTypeNameList() {
    List<String> result = [];
    for (var artifact in ARTIFACT) {
      result.add(artifact['name']);
    }
    return result;
  }

  static Map<String, Object> getArtifactFromName(String name) {
    for (var artifact in ARTIFACT) {
      if (artifact['name'] == name) {
        return artifact;
      }
    }
    return null;
  }

  static Map<String, Object> getArtifactFromId(int artifactId) {
    for (var artifact in ARTIFACT) {
      if (artifact['artifact_id'] == artifactId) {
        return artifact;
      }
    }
    return null;
  }

  static int getArtifactIndexFromId(int artifactId) {
    Map<String, Object> artifact = getArtifactFromId(artifactId);
    List<String> artifactNameList = getArtifactTypeNameList();
    for (int i = 0; i < artifactNameList.length; i++) {
      if (artifactNameList[i] == artifact['name']) return i;
    }
    return -1;
  }

  static int getArtifactIdFromIndex(int index) {
    if (index < 0 || index >= ARTIFACT.length) return -1;
    return ARTIFACT[index]['artifact_id'];
  }

  static String getStatName(Stats stat) {
    return _STATS_NAME[stat] ?? '';
  }

  static Map<Stats, double> getArtifactBaseStat() {
    return _ARTIFACT_BASE_STAT;
  }

  static Map<Stats, double> getArtifactMainStat() {
    return _ARTIFACT_MAIN_STAT;
  }

  static double getArtifactMainStatValue(Stats stat) {
    return _ARTIFACT_MAIN_STAT[stat];
  }

  static Map<Stats, double> getArtifactSubStatWordValue() {
    return _ARTIFACT_SUB_STAT_WORD_VALUE;
  }

  static String getStatNameAbbrevation(Stats stat) {
    return _STATS_NAME_ABBREVATION[stat] ?? '';
  }

  static List<String> getWeaponNameListByType(WeaponTypes type) {
    if (type == null) return [];

    List<Map<String, Object>> tempList = [];
    for (var weapon in WEAPONS) {
      if (weapon['type'] == type) tempList.add(weapon);
    }
    tempList.sort((w1, w2) {
      return w1['rarity'] != w2['rarity']
          ? (w1['rarity'] as Rarity).index - (w2['rarity'] as Rarity).index
          : (w1['weapon_id'] as int) - (w2['weapon_id'] as int);
    });
    List<String> result = [];
    for (var weapon in tempList) {
      result.add(weapon['name']);
    }
    return result;
  }

  static Map<String, Object> getWeaponFromName(String name) {
    for (var weapon in WEAPONS) {
      if (weapon['name'] == name) {
        return weapon;
      }
    }
    return null;
  }

  static List<String> getRefineNameList() {
    List<String> result = [];
    for (var refine in Refine.values) {
      result.add(_REFINE_NAME[refine]);
    }
    return result;
  }

  static String getRefineName(Refine refine) {
    return _REFINE_NAME[refine];
  }

  static List<String> getConstellationNameList() {
    List<String> result = [];
    for (var constellation in Constellation.values) {
      result.add(_CONSTELLATION_NAME[constellation]);
    }
    return result;
  }

  static String getConstellationName(Constellation constellation) {
    return _CONSTELLATION_NAME[constellation];
  }

  static Map<String, Object> getCharacterFromId(int characterId) {
    for (var character in CHARACTERS) {
      if (character['character_id'] == characterId) {
        return character;
      }
    }
    return null;
  }

  static Map<String, Object> getWeaponFromId(int weaponId) {
    for (var weapon in WEAPONS) {
      if (weapon['weapon_id'] == weaponId) {
        return weapon;
      }
    }
    return null;
  }

  static int getWeaponIndexFromId(int weaponId) {
    Map<String, Object> weapon = getWeaponFromId(weaponId);
    List<String> weaponNameList = getWeaponNameListByType(weapon['type']);
    for (int i = 0; i < weaponNameList.length; i++) {
      if (weaponNameList[i] == weapon['name']) return i;
    }
    return -1;
  }

  static List<String> getEnemyNameList() {
    List<String> result = [];

    for (var enemy in ENEMIES) {
      result.add(enemy['name']);
    }

    return result;
  }

  static Map<String, Object> getEnemyFromName(String name) {
    for (var enemy in ENEMIES) {
      if (enemy['name' == name]) {
        return enemy;
      }
    }
    return null;
  }

  static double getEnemyResistance(int enemyIndex, Elements element) {
    Map<String, Object> enemy = ENEMIES[enemyIndex];
    return (enemy['resistance'] as Map<Elements, double>)[element];
  }

  static Map<SkillType, Object> getSkillFromCharacterId(int characterId) {
    if (SKILLS.containsKey(characterId)) return SKILLS[characterId];
    return null;
  }

  static String getBuffTypeName(BuffType buffType) {
    return _BUFF_TYPE_NAME[buffType];
  }

  static String getDamageTypeName(DamageType damageType) {
    return _DAMAGE_TYPE_NAME[damageType];
  }

  static String getElementName(Elements element) {
    return _ELEMENT_NAME[element];
  }

  static Map<Elements, Object> getElementReaction(Elements element) {
    return _ELEMENT_REACTIONS.containsKey(element) ? _ELEMENT_REACTIONS[element] : {};
  }

  static String getSkillTypeName(SkillType skillType) {
    return _SKILL_TYPE_NAME[skillType];
  }

  static const _CHARACTERS_SHOW_ELEMENT_ORDER = [
    Elements.Anemo,
    Elements.Hydro,
    Elements.Pyro,
    Elements.Cryo,
    Elements.Electro,
    Elements.Geo,
    Elements.Dendro,
  ];
  static const _ELEMENT_TEXT_COLOR = {
    Elements.Anemo: Color(0xff5de0b4),
    Elements.Hydro: Color(0xff2fc7f9),
    Elements.Pyro: Color(0xffe78345),
    Elements.Cryo: Color(0xff98dfe3),
    Elements.Electro: Color(0xffd597ff),
    Elements.Geo: Color(0xfff8d056),
    Elements.Dendro: Color(0xffa5d534),
  };
  static const _ELEMENT_NAME = {
    Elements.Physical: '物',
    Elements.Anemo: '风',
    Elements.Hydro: '水',
    Elements.Pyro: '火',
    Elements.Cryo: '冰',
    Elements.Electro: '雷',
    Elements.Geo: '岩',
    Elements.Dendro: '草',
  };
  static const _ELEMENT_REACTIONS = {
    Elements.Hydro: {
      Elements.Pyro: {
        'name': '蒸发',
        'type': ElementReactionType.Vaporize,
        'ratio': 2.0,
      },
    },
    Elements.Pyro: {
      Elements.Hydro: {
        'name': '蒸发',
        'type': ElementReactionType.Vaporize,
        'ratio': 1.5,
      },
      Elements.Cryo: {
        'name': '融化',
        'type': ElementReactionType.Melt,
        'ratio': 2.0,
      },
    },
    Elements.Cryo: {
      Elements.Pyro: {
        'name': '融化',
        'type': ElementReactionType.Melt,
        'ratio': 1.5,
      },
    },
  };

  static const _STATS_NAME = {
    Stats.Hp: "生命值",
    Stats.Attack: "攻击力",
    Stats.Defend: "防御力",
    Stats.Mastery: "元素精通",
    Stats.CritRate: "暴击率%",
    Stats.CritDmg: "暴击伤害%",
    Stats.Recharge: "元素充能%",
    Stats.DmgBonus: "元素伤害%",
    Stats.PhyDmgBonus: '物理伤害%',
    Stats.HealingBonus: "治疗加成%",
    Stats.AttackBonus: '攻击力%',
    Stats.HpBonus: '生命值%',
    Stats.DefendBonus: '防御力%',
    Stats.ShieldStrength: '护盾强效%',
    Stats.ExtraDamage: '额外伤害',
    Stats.ExtraDamageByAttack: '额外伤害（由攻击力结算）',
    Stats.ExtraDamageByHp: '额外伤害（由生命值结算）',
    Stats.ExtraDmageByDefend: '额外伤害（由防御力结算）',
    Stats.AttackBonusByHp: '基于生命值上限提升攻击力',
    Stats.AttackBonusByDefend: '基于防御力提升攻击力',
    Stats.AttackBonusByRecharge: '基于充能效率提升攻击力',
    Stats.DefendDecrease: '减防%',
    Stats.Resistance: '抗性%',
    Stats.ResistanceDecrease: '减抗%',
    Stats.VaporizeBonus: '蒸发系数加成%',
    Stats.MeltBonus: '融化系数加成%',
  };
  static const _STATS_NAME_ABBREVATION = {
    Stats.Hp: "生",
    Stats.Attack: "攻",
    Stats.Defend: "防",
    Stats.Mastery: "精通",
    Stats.CritRate: "暴击",
    Stats.CritDmg: "暴伤",
    Stats.Recharge: "充能",
    Stats.DmgBonus: "属伤",
    Stats.PhyDmgBonus: '物伤',
    Stats.HealingBonus: "治",
    Stats.AttackBonus: '攻',
    Stats.HpBonus: '生',
    Stats.DefendBonus: '防',
    Stats.ShieldStrength: '护盾强效',
    Stats.ExtraDamage: '额外伤害',
    Stats.ExtraDamageByAttack: '额外伤害（由攻击力结算）',
    Stats.ExtraDamageByHp: '额外伤害（由生命值结算）',
    Stats.ExtraDmageByDefend: '额外伤害（由防御力结算）',
    Stats.AttackBonusByHp: '基于生命值上限提升攻击力',
    Stats.AttackBonusByDefend: '基于防御力提升攻击力',
    Stats.AttackBonusByRecharge: '基于充能效率提升攻击力',
    Stats.DefendDecrease: '减防',
    Stats.Resistance: '抗性',
    Stats.ResistanceDecrease: '减抗',
    Stats.VaporizeBonus: '蒸发系数加成',
    Stats.MeltBonus: '融化系数加成',
  };
  static const _ARTIFACT_FLOWER_MAIN_STAT = [Stats.Hp];
  static const _ARTIFACT_PLUME_MAIN_STAT = [Stats.Attack];
  static const _ARTIFACT_SANDS_MAIN_STAT = [Stats.HpBonus, Stats.AttackBonus, Stats.DefendBonus, Stats.Mastery, Stats.Recharge];
  static const _ARTIFACT_GOBLET_MAIN_STAT = [Stats.HpBonus, Stats.AttackBonus, Stats.DefendBonus, Stats.Mastery, Stats.DmgBonus, Stats.PhyDmgBonus];
  static const _ARTIFACT_CIRCLET_MAIN_STAT = [
    Stats.HpBonus,
    Stats.AttackBonus,
    Stats.DefendBonus,
    Stats.Mastery,
    Stats.CritRate,
    Stats.CritDmg,
    Stats.HealingBonus
  ];
  static const _ARTIFACT_SUB_STAT = [
    Stats.Hp,
    Stats.Attack,
    Stats.Defend,
    Stats.HpBonus,
    Stats.AttackBonus,
    Stats.DefendBonus,
    Stats.Mastery,
    Stats.Recharge,
    Stats.CritRate,
    Stats.CritDmg
  ];
  static const _LEVELS = [
    {
      'name': '80',
      'level': Levels.Lv80,
    },
    {
      'name': '80突破',
      'level': Levels.Lv80p,
    },
    {
      'name': '90',
      'level': Levels.Lv90,
    },
  ];
  static const _ARTIFACT_BASE_STAT = {
    Stats.Hp: 4780.0,
    Stats.Attack: 311.0,
  };
  static const _ARTIFACT_MAIN_STAT = {
    Stats.Hp: 4780.0,
    Stats.Attack: 311.0,
    Stats.HpBonus: 46.6,
    Stats.AttackBonus: 46.6,
    Stats.DefendBonus: 58.3,
    Stats.Mastery: 187.0,
    Stats.CritRate: 31.1,
    Stats.CritDmg: 62.2,
    Stats.Recharge: 51.8,
    Stats.DmgBonus: 46.6,
    Stats.PhyDmgBonus: 58.3,
    Stats.HealingBonus: 35.9,
  };
  static const _ARTIFACT_SUB_STAT_WORD_VALUE = {
    Stats.Hp: 5.0,
    Stats.Attack: 5.0,
    Stats.Defend: 6.2,
    Stats.Mastery: 19.75,
    Stats.CritRate: 3.3,
    Stats.CritDmg: 6.6,
    Stats.Recharge: 5.5,
  };
  static const _REFINE_NAME = {
    Refine.Refine1: '精炼1阶',
    Refine.Refine2: '精炼2阶',
    Refine.Refine3: '精炼3阶',
    Refine.Refine4: '精炼4阶',
    Refine.Refine5: '精炼5阶',
  };
  static const _CONSTELLATION_NAME = {
    Constellation.Con0: '0命',
    Constellation.Con1: '1命',
    Constellation.Con2: '2命',
    Constellation.Con3: '3命',
    Constellation.Con4: '4命',
    Constellation.Con5: '5命',
    Constellation.Con6: '6命',
  };
  static const _BUFF_TYPE_NAME = {
    BuffType.BuffForMe: '为自己施加buff',
    BuffType.DebuffForMe: '为敌人施加debuff',
    BuffType.DebuffForEnemy: '为自己施加debuff',
  };
  static const _DAMAGE_TYPE_NAME = {
    DamageType.Normal: '普通攻击',
    DamageType.Charged: '重击',
    DamageType.Plunging: '下落攻击',
    DamageType.SkillE: '元素战技',
    DamageType.SkillQ: '元素爆发',
  };
  static const _SKILL_TYPE_NAME = {
    SkillType.Passive: '被动技能',
    SkillType.SkillA: '普通攻击',
    SkillType.SkillE: '元素战技',
    SkillType.SkillQ: '元素爆发',
  };
}

enum Levels { Lv80, Lv80p, Lv90 }
enum Elements { Physical, Anemo, Hydro, Pyro, Cryo, Electro, Geo, Dendro }
enum Stats {
  Hp,
  Attack,
  Defend,
  Mastery,
  CritRate,
  CritDmg,
  Recharge,
  DmgBonus,
  PhyDmgBonus,
  HealingBonus,
  AttackBonus,
  HpBonus,
  DefendBonus,
  ShieldStrength,
  ExtraDamage,
  ExtraDamageByAttack,
  ExtraDamageByHp,
  ExtraDmageByDefend,
  AttackBonusByHp,
  AttackBonusByDefend,
  AttackBonusByRecharge,
  Resistance,
  DefendDecrease,
  ResistanceDecrease,
  VaporizeBonus,
  MeltBonus,
}
enum WeaponTypes { Sword, Claymore, Polearm, Bow, Catalyst }
enum Rarity { Star3, Star4, Star5, Special }
enum Refine { Refine1, Refine2, Refine3, Refine4, Refine5 }
enum Constellation { Con0, Con1, Con2, Con3, Con4, Con5, Con6 }
enum DamageType { Normal, Charged, Plunging, SkillE, SkillQ }
enum SkillType { Passive, SkillA, SkillE, SkillQ }
enum BuffType { BuffForMe, DebuffForMe, DebuffForEnemy }
enum SkillElementType { Both, Element, Physical }
enum ElementReactionType { Vaporize, Melt }
enum ArtifactSetType { Set2, Set4 }
