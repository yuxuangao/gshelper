import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

import 'character.dart';
import 'weapon.dart';

class GsData {
  static List<PickerItem<dynamic>> getCharacterNames() {
    List<PickerItem<dynamic>> result = [];

    List<List<Map<String, Object>>> tempList =
        List.generate(_CHARACTERS_SHOW_ELEMENT_ORDER.length, (index) => []);
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

    List<List<Map<String, Object>>> tempList =
        List.generate(_CHARACTERS_SHOW_ELEMENT_ORDER.length, (index) => []);
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

  static List<String> getArtifactSandsMainStatNameList() {
    return List.generate(_ARTIFACT_SANDS_MAIN_STAT.length,
        (index) => _STATS_NAME[_ARTIFACT_SANDS_MAIN_STAT[index]]);
  }

  static Stats getArtifactSandsMainStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_SANDS_MAIN_STAT.length) return null;
    return _ARTIFACT_SANDS_MAIN_STAT[index];
  }

  static List<String> getArtifactGobleMainStatNameList() {
    return List.generate(_ARTIFACT_GOBLE_MAIN_STAT.length,
        (index) => _STATS_NAME[_ARTIFACT_GOBLE_MAIN_STAT[index]]);
  }

  static Stats getArtifactGlobleMainStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_GOBLE_MAIN_STAT.length) return null;
    return _ARTIFACT_GOBLE_MAIN_STAT[index];
  }

  static List<String> getArtifactCircletMainStatNameList() {
    return List.generate(_ARTIFACT_CIRCLET_MAIN_STAT.length,
        (index) => _STATS_NAME[_ARTIFACT_CIRCLET_MAIN_STAT[index]]);
  }

  static Stats getArtifactCircletMainStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_CIRCLET_MAIN_STAT.length) return null;
    return _ARTIFACT_CIRCLET_MAIN_STAT[index];
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

  static Map<Stats, double> getArtifactSubStat() {
    return _ARTIFACT_SUB_STAT;
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

  static const _CHARACTERS_SHOW_ELEMENT_ORDER = [
    Elements.Anemo,
    Elements.Hydro,
    Elements.Pyro,
    Elements.Cryo,
    Elements.Electro,
    Elements.Geo,
    Elements.Dendro
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

  static const _STATS_NAME = {
    Stats.Hp: "生命值",
    Stats.Attack: "攻击力",
    Stats.Defend: "防御力",
    Stats.Mastery: "元素精通",
    Stats.CritRate: "暴击率",
    Stats.CritDmg: "暴击伤害",
    Stats.Recharge: "元素充能",
    Stats.DmgBonus: "属性伤害",
    Stats.PhyDmgBonus: '物理伤害',
    Stats.HealingBonus: "治疗加成",
    Stats.AttackBonus: '攻击力',
    Stats.HpBonus: '生命值',
    Stats.DefendBonus: '防御力',
    Stats.ShieldStrength: '护盾强效',
    Stats.ExtraDamage: '额外伤害',
    Stats.ExtraDamageByAttack: '额外伤害（由攻击力结算）',
    Stats.ExtraDamageByHp: '额外伤害（由生命值结算）',
    Stats.ExtraDmageByDefend: '额外伤害（由防御力结算）',
    Stats.AttackBonusByHp: '基于生命值上限提升攻击力',
    Stats.AttackBonusByRecharge: '基于充能效率提升攻击力',
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
    Stats.AttackBonusByRecharge: '基于充能效率提升攻击力',
  };
  static const _ARTIFACT_SANDS_MAIN_STAT = [
    Stats.Hp,
    Stats.Attack,
    Stats.Defend,
    Stats.Mastery,
    Stats.Recharge
  ];
  static const _ARTIFACT_GOBLE_MAIN_STAT = [
    Stats.Hp,
    Stats.Attack,
    Stats.Defend,
    Stats.Mastery,
    Stats.DmgBonus,
    Stats.PhyDmgBonus
  ];
  static const _ARTIFACT_CIRCLET_MAIN_STAT = [
    Stats.Hp,
    Stats.Attack,
    Stats.Defend,
    Stats.Mastery,
    Stats.CritRate,
    Stats.CritDmg,
    Stats.HealingBonus
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
    Stats.Hp: 46.6,
    Stats.Attack: 46.6,
    Stats.Defend: 58.3,
    Stats.Mastery: 187.0,
    Stats.CritRate: 31.1,
    Stats.CritDmg: 62.2,
    Stats.Recharge: 51.8,
    Stats.DmgBonus: 46.6,
    Stats.PhyDmgBonus: 58.3,
    Stats.HealingBonus: 35.9,
  };
  static const _ARTIFACT_SUB_STAT = {
    Stats.Hp: 5.83,
    Stats.Attack: 5.83,
    Stats.Defend: 7.29,
    Stats.Mastery: 23.31,
    Stats.CritRate: 3.89,
    Stats.CritDmg: 7.77,
    Stats.Recharge: 6.48,
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
}

enum Levels { Lv80, Lv80p, Lv90 }
enum Elements { Anemo, Hydro, Pyro, Cryo, Electro, Geo, Dendro }
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
  AttackBonusByRecharge,
}
enum WeaponTypes { Sword, Claymore, Polearm, Bow, Catalyst }
enum Rarity { Star3, Star4, Star5, Special }
enum Refine { Refine1, Refine2, Refine3, Refine4, Refine5 }
enum Constellation { Con0, Con1, Con2, Con3, Con4, Con5, Con6 }
enum DamageType { Normal, Charged, Plunging, SkillE, SkillQ }
