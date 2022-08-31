import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:gshelper/data/constellation.dart';
import 'package:easy_localization/easy_localization.dart';

import 'character.dart';
import 'weapon.dart';
import 'enemy.dart';
import 'artifact.dart';
import 'skill.dart';
import 'simulation.dart';

class GsData {
  static List<Map<String, Object>> getCharacterList() {
    List<Map<String, Object>> result = [...CHARACTERS];
    result.sort((c1, c2) {
      if (c1['element'] != c2['element']) return _CHARACTERS_SHOW_ELEMENT_ORDER.indexOf(c1['element']) - _CHARACTERS_SHOW_ELEMENT_ORDER.indexOf(c2['element']);
      if (c1['rarity'] != c2['rarity']) return (c2['rarity'] as Rarity).index - (c1['rarity'] as Rarity).index;
      return (c1['character_id'] as int) - (c2['character_id'] as int);
    });
    return result;
  }

  static List<Map<String, Object>> getCharacterListByRarityOrder() {
    List<Map<String, Object>> result = [...CHARACTERS];
    result.sort((c1, c2) {
      if (c1['rarity'] != c2['rarity']) return (c2['rarity'] as Rarity).index - (c1['rarity'] as Rarity).index;
      if (c1['element'] != c2['element']) return _CHARACTERS_SHOW_ELEMENT_ORDER.indexOf(c1['element']) - _CHARACTERS_SHOW_ELEMENT_ORDER.indexOf(c2['element']);
      return (c1['character_id'] as int) - (c2['character_id'] as int);
    });
    return result;
  }

  static List<PickerItem<dynamic>> getCharacterNames() {
    List<PickerItem<dynamic>> result = [];
    List<Map<String, Object>> characterList = getCharacterList();

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

    return result;
  }

  static Color getElementBorderColor(Elements element) {
    return _ELEMENT_BORDER_COLOR[element];
  }

  static Map<String, Object> getCharacterFromIndex(int index) {
    if (index < 0) return null;

    List<Map<String, Object>> characterList = getCharacterList();
    return index >= characterList.length ? null : characterList[index];
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
    return List.generate(
        _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Flower].length, (index) => _STATS_NAME[_ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Flower][index]]);
  }

  static Stats getArtifactFlowerMainStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Flower].length) return null;
    return _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Flower][index];
  }

  static List<String> getArtifactPlumeMainStatNameList() {
    return List.generate(
        _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Plume].length, (index) => _STATS_NAME[_ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Plume][index]]);
  }

  static Stats getArtifactPlumeMainStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Plume].length) return null;
    return _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Plume][index];
  }

  static List<String> getArtifactSandsMainStatNameList() {
    return List.generate(
        _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Sands].length, (index) => _STATS_NAME[_ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Sands][index]]);
  }

  static Stats getArtifactSandsMainStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Sands].length) return null;
    return _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Sands][index];
  }

  static List<String> getArtifactGobletMainStatNameList() {
    return List.generate(
        _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Goblet].length, (index) => _STATS_NAME[_ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Goblet][index]]);
  }

  static Stats getArtifactGobletMainStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Goblet].length) return null;
    return _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Goblet][index];
  }

  static List<String> getArtifactCircletMainStatNameList() {
    return List.generate(
        _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Circlet].length, (index) => _STATS_NAME[_ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Circlet][index]]);
  }

  static Stats getArtifactCircletMainStatFromIndex(int index) {
    if (index < 0) return null;
    if (index >= _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Circlet].length) return null;
    return _ARTIFACT_EACH_MAIN_STAT[ArtifactPosition.Circlet][index];
  }

  static int getArtifactMainStatIndexFromStat(ArtifactPosition position, Stats stat) {
    return _ARTIFACT_EACH_MAIN_STAT[position].indexOf(stat);
  }

  static int getArtifactSubStatIndexFromStat(Stats stat) {
    return _ARTIFACT_SUB_STAT.indexOf(stat);
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

  static String getArtifactPositionName(ArtifactPosition position) {
    return _ARTIFACT_POSITION_NAME[position];
  }

  static String getStatNameAbbrevation(Stats stat) {
    return _STATS_NAME_ABBREVATION[stat] ?? _STATS_NAME[stat] ?? '';
  }

  static List<String> getWeaponNameListByType(WeaponTypes type) {
    if (type == null) return [];

    List<Map<String, Object>> tempList = [];
    for (var weapon in WEAPONS) {
      if (weapon['type'] == type) tempList.add(weapon);
    }
    tempList.sort((w1, w2) {
      return w1['rarity'] != w2['rarity']
          ? (w2['rarity'] as Rarity).index - (w1['rarity'] as Rarity).index
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

  static List<Map<String, Object>> getWeaponListByRarityOrder() {
    List<Map<String, Object>> result = [...WEAPONS];
    result.sort((c1, c2) {
      if (c1['rarity'] != c2['rarity']) return (c2['rarity'] as Rarity).index - (c1['rarity'] as Rarity).index;
      if (c1['type'] != c2['type']) return (c1['type'] as WeaponTypes).index - (c2['type'] as WeaponTypes).index;
      return (c1['weapon_id'] as int) - (c2['weapon_id'] as int);
    });
    return result;
  }

  static List<Map<String, Object>> getArtifactListByRarityOrder() {
    List<Map<String, Object>> result = [...ARTIFACT];
    result.sort((c1, c2) {
      if (c1['rarity'] != c2['rarity']) return (c2['rarity'] as Rarity).index - (c1['rarity'] as Rarity).index;
      return (c1['artifact_id'] as int) - (c2['artifact_id'] as int);
    });
    return result;
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

  static Map<Constellation, Object> getConstellationFromCharacterId(int characterId, Constellation constellation) {
    if (CONSTELLATIONS.containsKey(characterId))
      return Map<Constellation, Object>.fromIterable(
        List.generate(constellation.index, (index) => Constellation.values[index + 1]),
        value: (element) => CONSTELLATIONS[characterId][element],
      );
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

  static String getCharacterFilePath(int characterId) {
    return 'assets/images/c_' + characterId.toString() + '.png';
  }

  static String getCharacterFaceFilePath(int characterId) {
    return 'assets/images/c_' + characterId.toString() + '_f.png';
  }

  static String getCharacterGachaFilePath(int characterId) {
    return 'assets/images/c_' + characterId.toString() + '_g.png';
  }

  static String getWeaponFilePath(int weaponId) {
    return 'assets/images/w_' + weaponId.toString() + '.png';
  }

  static String getArtifactFilePath(int artifactId, ArtifactPosition artifactPosition) {
    return 'assets/images/a_' + artifactId.toString() + '_' + (artifactPosition.index + 1).toString() + '.png';
  }

  static String getRarityBackgroundFilePath(Rarity rarity) {
    return _RARITY_BACKGROUND_FILE_PATH[rarity];
  }

  static String getRarityStarFilePath(Rarity rarity) {
    return _RARITY_STAR_FILE_PATH[rarity];
  }

  static String getSkillFilePath(int characterId, SkillType skillType, {int passiveOrder}) {
    if (skillType == SkillType.SkillA) return 'assets/images/s_' + characterId.toString() + '_a.png';
    if (skillType == SkillType.SkillE) return 'assets/images/s_' + characterId.toString() + '_e.png';
    if (skillType == SkillType.SkillQ) return 'assets/images/s_' + characterId.toString() + '_q.png';
    return 'assets/images/s_' + characterId.toString() + '_p_' + passiveOrder.toString() + '.png';
  }

  static String getConstellationFilePath(int characterId, Constellation constellation) {
    return 'assets/images/co_' + characterId.toString() + '_' + constellation.index.toString() + '.png';
  }

  static String getElementFilePath(Elements element) {
    return _ELEMENT_FILE_PATH[element];
  }

  static String getWeaponTypeFilePath(WeaponTypes weaponType) {
    return _WEAPON_TYPE_FILE_PATH[weaponType];
  }

  static List<String> getSimulationArtifactMainStatNameList() {
    return List<String>.generate(SIMULATION_ARTIFACT_MAIN_STAT.length, (index) => SIMULATION_ARTIFACT_MAIN_STAT[index]['name']);
  }

  static List<Stats> getSimulationArtifactMainStatValueFromIndex(int index) {
    if (index < 0) return null;
    return SIMULATION_ARTIFACT_MAIN_STAT[index]['value'];
  }

  static List<String> getSimulationArtifactSubStatNameList() {
    return List<String>.generate(SIMULATION_ARTIFACT_SUB_STAT.length, (index) => SIMULATION_ARTIFACT_SUB_STAT[index]['name']);
  }

  static Map<Stats, double> getSimulationArtifactSubStatValueFromIndex(int index) {
    return SIMULATION_ARTIFACT_SUB_STAT[index]['value'];
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
  static const _ELEMENT_BORDER_COLOR = {
    Elements.Anemo: Color(0xff288375),
    Elements.Hydro: Color(0xff2154a1),
    Elements.Pyro: Color(0xff8b463d),
    Elements.Cryo: Color(0xff53a4c2),
    Elements.Electro: Color(0xff9752b5),
    Elements.Geo: Color(0xff977d37),
    Elements.Dendro: Color(0xff71b211),
  };
  static final _ELEMENT_NAME = {
    Elements.Physical: 'c_e_physical'.tr(),
    Elements.Anemo: 'c_e_anemo'.tr(),
    Elements.Hydro: 'c_e_hydro'.tr(),
    Elements.Pyro: 'c_e_pyro'.tr(),
    Elements.Cryo: 'c_e_cryo'.tr(),
    Elements.Electro: 'c_e_electro'.tr(),
    Elements.Geo: 'c_e_geo'.tr(),
    Elements.Dendro: 'c_e_dendro'.tr(),
  };
  static final _ELEMENT_REACTIONS = {
    Elements.Hydro: {
      Elements.Pyro: {
        'name': 'c_r_vaporize'.tr(),
        'type': ElementReactionType.Vaporize,
        'ratio': 2.0,
      },
    },
    Elements.Pyro: {
      Elements.Hydro: {
        'name': 'c_r_vaporize'.tr(),
        'type': ElementReactionType.Vaporize,
        'ratio': 1.5,
      },
      Elements.Cryo: {
        'name': 'c_r_melt'.tr(),
        'type': ElementReactionType.Melt,
        'ratio': 2.0,
      },
    },
    Elements.Cryo: {
      Elements.Pyro: {
        'name': 'c_r_melt'.tr(),
        'type': ElementReactionType.Melt,
        'ratio': 1.5,
      },
    },
  };

  static final _STATS_NAME = {
    Stats.Hp: 'c_s_hp'.tr(),
    Stats.Attack: 'c_s_attack'.tr(),
    Stats.Defend: 'c_s_defend'.tr(),
    Stats.Mastery: 'c_s_mastery'.tr(),
    Stats.CritRate: 'c_s_crit_rate'.tr(),
    Stats.CritDmg: 'c_s_crit_dmg'.tr(),
    Stats.Recharge: 'c_s_recharge'.tr(),
    Stats.DmgBonus: 'c_s_dmg_bonus%'.tr(),
    Stats.EleDmgBonus: 'c_s_ele_dmg_bonus'.tr(),
    Stats.PhyDmgBonus: 'c_s_phy_dmg_bonus'.tr(),
    Stats.HealingBonus: 'c_s_healing_bonus'.tr(),
    Stats.AttackBonus: 'c_s_attack_bonus'.tr(),
    Stats.HpBonus: 'c_s_hp_bonus'.tr(),
    Stats.DefendBonus: 'c_s_defend_bonus'.tr(),
    Stats.ShieldStrength: 'c_s_shield_strength'.tr(),
    Stats.ExtraDamage: 'c_s_extra_damage'.tr(),
    Stats.ExtraDamageByAttack: 'c_s_extra_damage_by_attack'.tr(),
    Stats.ExtraDamageByAttackUsed: 'c_s_extra_damage_by_attack_used'.tr(),
    Stats.ExtraDamageByHp: 'c_s_extra_damage_by_hp'.tr(),
    Stats.ExtraDamageByDefend: 'c_s_extra_damage_by_defend'.tr(),
    Stats.ExtraDamageByDefendUsed: 'c_s_extra_damage_by_defend_used'.tr(),
    Stats.ExtraDamageByMastery: 'c_s_extra_damage_by_mastery'.tr(),
    Stats.AttackBonusByBaseAttack: 'c_s_attack_bonus_by_base_attack'.tr(),
    Stats.AttackBonusByHp: 'c_s_attack_bonus_by_hp'.tr(),
    Stats.AttackBonusByDefend: 'c_s_attack_bonus_by_defend'.tr(),
    Stats.AttackBonusByRecharge: 'c_s_attack_bonus_by_recharge'.tr(),
    Stats.AttackBonusByRechargeOver100: 'c_s_attack_bonus_by_recharge_over_100'.tr(),
    Stats.DmgBonusByRecharge: 'c_s_dmg_bonus_by_recharge'.tr(),
    Stats.DmgBonusByRechargeOver100: 'c_s_dmg_bonus_by_recharge_over_100'.tr(),
    Stats.DmgBonusByHealingForHpExtraDamage: 'c_s_dmg_bonus_by_healing_for_hp_extra_damage'.tr(),
    Stats.DmgBonusByEnergy: 'c_s_dmg_bonus_by_energy'.tr(),
    Stats.DmgBonusByMastery: 'c_s_dmg_bonus_by_mastery'.tr(),
    Stats.DmgBonusExtra: 'c_s_dmg_bonus_extra'.tr(),
    Stats.DefendDecrease: 'c_s_defend_decrease'.tr(),
    Stats.Resistance: 'c_s_resistance'.tr(),
    Stats.ResistanceDecreaseElement: 'c_s_resistance_decrease_element'.tr(),
    Stats.ResistanceDecreasePhysical: 'c_s_resistance_decrease_physical'.tr(),
    Stats.VaporizeBonus: 'c_s_vaporize_bonus'.tr(),
    Stats.MeltBonus: 'c_s_melt_bonus'.tr(),
    Stats.RatioExtra: 'c_s_ratio_extra'.tr(),
    Stats.RatioExtraByAttack: 'c_s_ratio_extra_by_attack'.tr(),
    Stats.RatioExtraByMastery: 'c_s_ratio_extra_by_mastery'.tr(),
    Stats.MasteryByMastery: 'c_s_mastery_by_mastery'.tr(),
    Stats.CritRateByCritRate: 'c_s_crit_rate_by_crit_rate'.tr(),
  };
  static final _STATS_NAME_ABBREVATION = {
    Stats.Hp: 'c_sa_hp'.tr(),
    Stats.Attack: 'c_sa_attack'.tr(),
    Stats.Defend: 'c_sa_defend'.tr(),
    Stats.Mastery: 'c_sa_mastery'.tr(),
    Stats.CritRate: 'c_sa_crit_rate'.tr(),
    Stats.CritDmg: 'c_sa_crit_dmg'.tr(),
    Stats.Recharge: 'c_sa_recharge'.tr(),
    Stats.EleDmgBonus: 'c_sa_ele_dmg_bonus'.tr(),
    Stats.PhyDmgBonus: 'c_sa_phy_dmg_bonus'.tr(),
    Stats.HealingBonus: 'c_sa_healing_bonus'.tr(),
    Stats.AttackBonus: 'c_sa_attack_bonus'.tr(),
    Stats.HpBonus: 'c_sa_hp_bonus'.tr(),
    Stats.DefendBonus: 'c_sa_defend_bonus'.tr(),
  };
  static const _ARTIFACT_EACH_MAIN_STAT = {
    ArtifactPosition.Flower: [Stats.Hp],
    ArtifactPosition.Plume: [Stats.Attack],
    ArtifactPosition.Sands: [Stats.HpBonus, Stats.AttackBonus, Stats.DefendBonus, Stats.Mastery, Stats.Recharge],
    ArtifactPosition.Goblet: [Stats.HpBonus, Stats.AttackBonus, Stats.DefendBonus, Stats.Mastery, Stats.EleDmgBonus, Stats.PhyDmgBonus],
    ArtifactPosition.Circlet: [Stats.HpBonus, Stats.AttackBonus, Stats.DefendBonus, Stats.Mastery, Stats.CritRate, Stats.CritDmg, Stats.HealingBonus],
  };
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
  static final _LEVELS = [
    {
      'name': 'c_l_80'.tr(),
      'level': Levels.Lv80,
    },
    {
      'name': 'c_l_80p'.tr(),
      'level': Levels.Lv80p,
    },
    {
      'name': 'c_l_90'.tr(),
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
    Stats.EleDmgBonus: 46.6,
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
  static final _REFINE_NAME = {
    Refine.Refine1: 'c_ref_1'.tr(),
    Refine.Refine2: 'c_ref_2'.tr(),
    Refine.Refine3: 'c_ref_3'.tr(),
    Refine.Refine4: 'c_ref_4'.tr(),
    Refine.Refine5: 'c_ref_5'.tr(),
  };
  static final _CONSTELLATION_NAME = {
    Constellation.Con0: 'c_con_0'.tr(),
    Constellation.Con1: 'c_con_1'.tr(),
    Constellation.Con2: 'c_con_2'.tr(),
    Constellation.Con3: 'c_con_3'.tr(),
    Constellation.Con4: 'c_con_4'.tr(),
    Constellation.Con5: 'c_con_5'.tr(),
    Constellation.Con6: 'c_con_6'.tr(),
  };
  static final _BUFF_TYPE_NAME = {
    BuffType.BuffForMe: 'c_buff_for_me'.tr(),
    BuffType.BuffForTeam: 'c_buff_for_team'.tr(),
    BuffType.BuffForTeamWithoutMe: 'c_buff_for_team_without_me'.tr(),
    BuffType.DebuffForMe: 'c_debuff_for_me'.tr(),
    BuffType.DebuffForEnemy: 'c_debuff_for_enemy'.tr(),
  };
  static final _DAMAGE_TYPE_NAME = {
    DamageType.All: 'c_dt_all'.tr(),
    DamageType.Normal: 'c_dt_normal'.tr(),
    DamageType.Charged: 'c_dt_charged'.tr(),
    DamageType.Plunging: 'c_dt_plunging'.tr(),
    DamageType.SkillE: 'c_dt_skille'.tr(),
    DamageType.SkillESpecial: 'c_dt_skille_special'.tr(),
    DamageType.SkillQ: 'c_dt_skillq'.tr(),
    DamageType.SkillQSpecial: 'c_dt_skillq_special'.tr(),
  };
  static final _SKILL_TYPE_NAME = {
    SkillType.Passive: 'c_st_passive'.tr(),
    SkillType.SkillA: 'c_st_skilla'.tr(),
    SkillType.SkillE: 'c_st_skille'.tr(),
    SkillType.SkillQ: 'c_st_skillq'.tr(),
  };
  static const _RARITY_BACKGROUND_FILE_PATH = {
    Rarity.Star3: 'assets/images/rarity_3.png',
    Rarity.Star4: 'assets/images/rarity_4.png',
    Rarity.Star5: 'assets/images/rarity_5.png',
    Rarity.Special: 'assets/images/rarity_5.png',
  };
  static const _RARITY_STAR_FILE_PATH = {
    Rarity.Star3: 'assets/images/icon_3_stars.png',
    Rarity.Star4: 'assets/images/icon_4_stars.png',
    Rarity.Star5: 'assets/images/icon_5_stars.png',
    Rarity.Special: 'assets/images/icon_5_stars.png',
  };
  static final _ARTIFACT_POSITION_NAME = {
    ArtifactPosition.Flower: 'c_a_flower'.tr(),
    ArtifactPosition.Plume: 'c_a_plume'.tr(),
    ArtifactPosition.Sands: 'c_a_sands'.tr(),
    ArtifactPosition.Goblet: 'c_a_goblet'.tr(),
    ArtifactPosition.Circlet: 'c_a_circlet'.tr(),
  };
  static const _ELEMENT_FILE_PATH = {
    Elements.Anemo: 'assets/images/e_anemo.png',
    Elements.Hydro: 'assets/images/e_hydro.png',
    Elements.Pyro: 'assets/images/e_pyro.png',
    Elements.Cryo: 'assets/images/e_cryo.png',
    Elements.Electro: 'assets/images/e_electro.png',
    Elements.Geo: 'assets/images/e_geo.png',
    Elements.Dendro: 'assets/images/e_dendro.png',
  };
  static const _WEAPON_TYPE_FILE_PATH = {
    WeaponTypes.Sword: 'assets/images/icon_sword.png',
    WeaponTypes.Claymore: 'assets/images/icon_claymore.png',
    WeaponTypes.Polearm: 'assets/images/icon_polearm.png',
    WeaponTypes.Bow: 'assets/images/icon_bow.png',
    WeaponTypes.Catalyst: 'assets/images/icon_catalyst.png',
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
  EleDmgBonus,
  PhyDmgBonus,
  HealingBonus,
  AttackBonus,
  HpBonus,
  DefendBonus,
  ShieldStrength,
  ExtraDamage,
  ExtraDamageByAttack,
  ExtraDamageByAttackUsed,
  ExtraDamageByHp,
  ExtraDamageByDefend,
  ExtraDamageByDefendUsed,
  ExtraDamageByMastery,
  AttackBonusByBaseAttack,
  AttackBonusByHp,
  AttackBonusByDefend,
  AttackBonusByRecharge,
  AttackBonusByRechargeOver100,
  DmgBonusByRecharge,
  DmgBonusByRechargeOver100,
  DmgBonusByHealingForHpExtraDamage,
  DmgBonusByEnergy,
  DmgBonusByMastery,
  DmgBonusExtra,
  Resistance,
  DefendDecrease,
  ResistanceDecreasePhysical,
  ResistanceDecreaseElement,
  VaporizeBonus,
  MeltBonus,
  RatioExtra,
  RatioExtraByAttack,
  RatioExtraByMastery,
  MasteryByMastery,
  CritRateByCritRate,
}

enum WeaponTypes { Sword, Claymore, Polearm, Bow, Catalyst }

enum Rarity { Star3, Star4, Special, Star5 }

enum Refine { Refine1, Refine2, Refine3, Refine4, Refine5 }

enum Constellation { Con0, Con1, Con2, Con3, Con4, Con5, Con6 }

enum DamageType { All, Normal, Charged, Plunging, SkillE, SkillESpecial, SkillQ, SkillQSpecial }

enum SkillType { Passive, SkillA, SkillE, SkillQ }

enum BuffType { BuffForMe, BuffForTeam, BuffForTeamWithoutMe, DebuffForMe, DebuffForEnemy }

enum SkillElementType { Both, Element, Physical }

enum ElementReactionType { Vaporize, Melt }

enum ArtifactSetType { Set2, Set4 }

enum ArtifactPosition { Flower, Plume, Sands, Goblet, Circlet }
