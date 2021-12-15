import 'data.dart';

const WEAPONS = [
  {
    'name': '黑岩长剑',
    'weapon_id': 1,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.CritDmg,
    'subStatValue': 36.8,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 36.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 45.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 54.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 63.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 72.0,
      },
    },
    'specialEffectComent': '击败敌人后的30秒内叠1层，最多3层',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '西风剑',
    'weapon_id': 2,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.Recharge,
    'subStatValue': 61.3,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': [],
  },
  {
    'name': '铁蜂刺',
    'weapon_id': 3,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.Mastery,
    'subStatValue': 165.0,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 12.0,
        Stats.PhyDmgBonus: 12.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 15.0,
        Stats.PhyDmgBonus: 15.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 18.0,
        Stats.PhyDmgBonus: 18.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 21.0,
        Stats.PhyDmgBonus: 21.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
      },
    },
    'specialEffectComent': '造成元素伤害6秒内叠一层，最多两层，每1秒触发一次',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '匣里龙吟',
    'weapon_id': 4,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 41.3,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 20.0,
        Stats.PhyDmgBonus: 20.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 28.0,
        Stats.PhyDmgBonus: 28.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 32.0,
        Stats.PhyDmgBonus: 32.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 36.0,
        Stats.PhyDmgBonus: 36.0,
      },
    },
    'specialEffectComent': '对处于火元素或雷元素影响下的敌人',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '视作斩岩',
    'weapon_id': 5,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.PhyDmgBonus,
    'subStatValue': 34.5,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 16.0,
        Stats.DefendBonus: 16.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 20.0,
        Stats.DefendBonus: 20.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 24.0,
        Stats.DefendBonus: 24.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 28.0,
        Stats.DefendBonus: 28.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 32.0,
        Stats.DefendBonus: 32.0,
      },
    },
    'specialEffectComent': '普通攻击或重击命中时叠1层，持续6秒，最多4层，每0.3秒触发一次',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.DefendBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '宗室长剑',
    'weapon_id': 6,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 41.3,
    'specialEffect': {
      Refine.Refine1: {
        Stats.CritRate: 40.0,
      },
      Refine.Refine2: {
        Stats.CritRate: 50.0,
      },
      Refine.Refine3: {
        Stats.CritRate: 60.0,
      },
      Refine.Refine4: {
        Stats.CritRate: 70.0,
      },
      Refine.Refine5: {
        Stats.CritRate: 80.0,
      },
    },
    'specialEffectComent': '攻击造成伤害后叠一层，最多5层，造成暴击后移除',
    'specialEffectDamageType': {
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '祭礼剑',
    'weapon_id': 7,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.Recharge,
    'subStatValue': 61.3,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': [],
  },
  {
    'name': '暗巷闪光',
    'weapon_id': 8,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 620.0,
    'subStat': Stats.Mastery,
    'subStatValue': 55.0,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 12.0,
        Stats.PhyDmgBonus: 12.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 15.0,
        Stats.PhyDmgBonus: 15.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 18.0,
        Stats.PhyDmgBonus: 18.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 21.0,
        Stats.PhyDmgBonus: 21.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
      },
    },
    'specialEffectComent': '受到伤害后消失5秒',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '黑剑',
    'weapon_id': 9,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.CritRate,
    'subStatValue': 27.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 20.0,
        Stats.PhyDmgBonus: 20.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 25.0,
        Stats.PhyDmgBonus: 25.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 30.0,
        Stats.PhyDmgBonus: 30.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 35.0,
        Stats.PhyDmgBonus: 35.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 40.0,
        Stats.PhyDmgBonus: 40.0,
      },
    },
    'specialEffectComent': '普通攻击与重击伤害提升',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
      ],
    },
  },
  {
    'name': '笛剑',
    'weapon_id': 10,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.Attack,
    'subStatValue': 41.3,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': [],
  },
  {
    'name': '降临之剑',
    'weapon_id': 11,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 440.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 35.2,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': [],
  },
  {
    'name': '腐殖之剑',
    'weapon_id': 12,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.Recharge,
    'subStatValue': 45.9,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 16.0,
        Stats.PhyDmgBonus: 16.0,
        Stats.CritRate: 6.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 20.0,
        Stats.PhyDmgBonus: 20.0,
        Stats.CritRate: 7.5,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
        Stats.CritRate: 9.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 28.0,
        Stats.PhyDmgBonus: 28.0,
        Stats.CritRate: 10.5,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 32.0,
        Stats.PhyDmgBonus: 32.0,
        Stats.CritRate: 12.0,
      },
    },
    'specialEffectComent': '元素战技的伤害、暴击率提升',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillE,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillE,
      ],
      Stats.CritRate: [
        DamageType.SkillE,
      ],
    },
  },
  {
    'name': '天目影打刀',
    'weapon_id': 13,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 55.1,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': [],
  },
  {
    'name': '风鹰剑',
    'weapon_id': 14,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star5,
    'baseAttack': 674.0,
    'subStat': Stats.PhyDmgBonus,
    'subStatValue': 41.3,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 20.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 25.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 30.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 35.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 40.0,
      },
    },
    'specialEffectComent': '攻击力提高',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '天空之刃',
    'weapon_id': 15,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.Recharge,
    'subStatValue': 55.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.CritRate: 4.0,
        Stats.ExtraDamageByAttack: 20.0,
      },
      Refine.Refine2: {
        Stats.CritRate: 5.0,
        Stats.ExtraDamageByAttack: 25.0,
      },
      Refine.Refine3: {
        Stats.CritRate: 6.0,
        Stats.ExtraDamageByAttack: 30.0,
      },
      Refine.Refine4: {
        Stats.CritRate: 7.0,
        Stats.ExtraDamageByAttack: 35.0,
      },
      Refine.Refine5: {
        Stats.CritRate: 8.0,
        Stats.ExtraDamageByAttack: 40.0,
      },
    },
    'specialEffectComent': '暴击率提升，普通攻击与重击命中时造成额外伤害',
    'specialEffectDamageType': {
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.ExtraDamageByAttack: [
        DamageType.Normal,
        DamageType.Charged,
      ],
    },
  },
  {
    'name': '斫峰之刃',
    'weapon_id': 16,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 49.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 40.0,
        Stats.ShieldStrength: 20.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 50.0,
        Stats.ShieldStrength: 25.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 60.0,
        Stats.ShieldStrength: 30.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 70.0,
        Stats.ShieldStrength: 35.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 80.0,
        Stats.ShieldStrength: 40.0,
      },
    },
    'specialEffectComent': '攻击命中后叠1层，最多5层，每0.3秒触发一次，处于护盾庇护下时效果翻倍',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.ShieldStrength: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '磐岩结绿',
    'weapon_id': 17,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star5,
    'baseAttack': 542.0,
    'subStat': Stats.CritRate,
    'subStatValue': 44.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.HpBonus: 20.0,
        Stats.AttackBonusByHp: 1.2,
      },
      Refine.Refine2: {
        Stats.HpBonus: 25.0,
        Stats.AttackBonusByHp: 1.5,
      },
      Refine.Refine3: {
        Stats.HpBonus: 30.0,
        Stats.AttackBonusByHp: 1.8,
      },
      Refine.Refine4: {
        Stats.HpBonus: 35.0,
        Stats.AttackBonusByHp: 2.1,
      },
      Refine.Refine5: {
        Stats.HpBonus: 40.0,
        Stats.AttackBonusByHp: 2.4,
      },
    },
    'specialEffectComent': '提升生命值，根据生命值上限增加攻击力',
    'specialEffectDamageType': {
      Stats.HpBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.AttackBonusByHp: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '苍古自由之誓',
    'weapon_id': 18,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.Mastery,
    'subStatValue': 198.0,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 26.0,
        Stats.PhyDmgBonus: 26.0,
        Stats.AttackBonus: 20.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 32.5,
        Stats.PhyDmgBonus: 32.5,
        Stats.AttackBonus: 25.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 39.0,
        Stats.PhyDmgBonus: 39.0,
        Stats.AttackBonus: 30.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 45.5,
        Stats.PhyDmgBonus: 45.5,
        Stats.AttackBonus: 35.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 52.0,
        Stats.PhyDmgBonus: 52.0,
        Stats.AttackBonus: 40.0,
      },
    },
    'specialEffectComent': '造成伤害提升（计算时未包含技能），触发两次元素反应获得额外加成',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
      ],
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '雾切之回光',
    'weapon_id': 19,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star5,
    'baseAttack': 674.0,
    'subStat': Stats.CritDmg,
    'subStatValue': 44.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 40.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 50.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 60.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 70.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 80.0,
      },
    },
    'specialEffectComent': '元素伤害加成，获得巴印时额外增加',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '黑岩斩刀',
    'weapon_id': 20,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.CritDmg,
    'subStatValue': 55.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 36.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 45.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 54.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 63.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 72.0,
      },
    },
    'specialEffectComent': '击败敌人后攻击力提升30秒，最多3层',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '西风大剑',
    'weapon_id': 21,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.Recharge,
    'subStatValue': 61.3,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '千岩古剑',
    'weapon_id': 22,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 41.3,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 28.0,
        Stats.CritRate: 12.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 32.0,
        Stats.CritRate: 16.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 36.0,
        Stats.CritRate: 20.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 40.0,
        Stats.CritRate: 24.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 44.0,
        Stats.CritRate: 28.0,
      },
    },
    'specialEffectComent': '每有一位璃月角色提升攻击力和暴击率',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '试做古华',
    'weapon_id': 23,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 27.6,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '雨裁',
    'weapon_id': 24,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.Mastery,
    'subStatValue': 165.0,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 20.0,
        Stats.PhyDmgBonus: 20.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 28.0,
        Stats.PhyDmgBonus: 28.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 32.0,
        Stats.PhyDmgBonus: 32.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 36.0,
        Stats.PhyDmgBonus: 36.0,
      },
    },
    'specialEffectComent': '对处于水元素或雷元素影响下的敌人伤害提升',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '宗室大剑',
    'weapon_id': 25,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 27.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.CritRate: 40.0,
      },
      Refine.Refine2: {
        Stats.CritRate: 50.0,
      },
      Refine.Refine3: {
        Stats.CritRate: 60.0,
      },
      Refine.Refine4: {
        Stats.CritRate: 70.0,
      },
      Refine.Refine5: {
        Stats.CritRate: 80.0,
      },
    },
    'specialEffectComent': '攻击造成伤害后叠一层，最多5层，造成暴击后移除',
    'specialEffectDamageType': {
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '螭骨剑',
    'weapon_id': 26,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.CritRate,
    'subStatValue': 27.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 30.0,
        Stats.PhyDmgBonus: 30.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 35.0,
        Stats.PhyDmgBonus: 35.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 40.0,
        Stats.PhyDmgBonus: 40.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 45.0,
        Stats.PhyDmgBonus: 45.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 50.0,
        Stats.PhyDmgBonus: 50.0,
      },
    },
    'specialEffectComent': '每4秒提升1层伤害，最多5层，受到伤害后减少1层',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '钟剑',
    'weapon_id': 27,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.HpBonus,
    'subStatValue': 41.3,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 12.0,
        Stats.PhyDmgBonus: 12.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 15.0,
        Stats.PhyDmgBonus: 15.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 18.0,
        Stats.PhyDmgBonus: 18.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 21.0,
        Stats.PhyDmgBonus: 21.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
      },
    },
    'specialEffectComent': '处于护盾庇护下',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '白影剑',
    'weapon_id': 28,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.DefendBonus,
    'subStatValue': 51.7,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 24.0,
        Stats.DefendBonus: 24.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 30.0,
        Stats.DefendBonus: 30.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 36.0,
        Stats.DefendBonus: 36.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 42.0,
        Stats.DefendBonus: 42.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 48.0,
        Stats.DefendBonus: 48.0,
      },
    },
    'specialEffectComent': '普通攻击或重击命中后叠加1层，持续6秒，最多4层，每0.5秒触发一次',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.DefendBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '祭礼大剑',
    'weapon_id': 29,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.Recharge,
    'subStatValue': 30.6,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '雪葬的星银',
    'weapon_id': 30,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.PhyDmgBonus,
    'subStatValue': 34.5,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '桂木斩长正',
    'weapon_id': 31,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.Recharge,
    'subStatValue': 45.9,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 6.0,
        Stats.PhyDmgBonus: 6.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 7.5,
        Stats.PhyDmgBonus: 7.5,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 9.0,
        Stats.PhyDmgBonus: 9.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 10.5,
        Stats.PhyDmgBonus: 10.5,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 12.0,
        Stats.PhyDmgBonus: 12.0,
      },
    },
    'specialEffectComent': '元素战技伤害提升',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillE,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillE,
      ],
    },
  },
  {
    'name': '衔珠海皇',
    'weapon_id': 32,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 55.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 12.0,
        Stats.PhyDmgBonus: 12.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 15.0,
        Stats.PhyDmgBonus: 15.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 18.0,
        Stats.PhyDmgBonus: 18.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 21.0,
        Stats.PhyDmgBonus: 21.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
      },
    },
    'specialEffectComent': '元素爆发伤害提升',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '恶王丸',
    'weapon_id': 33,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 41.3,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 40.0,
        Stats.PhyDmgBonus: 40.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 50.0,
        Stats.PhyDmgBonus: 50.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 60.0,
        Stats.PhyDmgBonus: 60.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 70.0,
        Stats.PhyDmgBonus: 70.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 80.0,
        Stats.PhyDmgBonus: 80.0,
      },
    },
    'specialEffectComent': '根据队伍中元素能量总和提升元素爆发伤害',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '天空之傲',
    'weapon_id': 34,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star5,
    'baseAttack': 674.0,
    'subStat': Stats.Recharge,
    'subStatValue': 36.8,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 8.0,
        Stats.PhyDmgBonus: 8.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 10.0,
        Stats.PhyDmgBonus: 10.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 12.0,
        Stats.PhyDmgBonus: 12.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 14.0,
        Stats.PhyDmgBonus: 14.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 16.0,
        Stats.PhyDmgBonus: 16.0,
      },
    },
    'specialEffectComent': '造成伤害提高',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '狼的末路',
    'weapon_id': 35,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 49.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 60.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 75.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 90.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 105.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 120.0,
      },
    },
    'specialEffectComent': '攻击力提高，攻击生命值低于30%的敌人时攻击力再提升',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '无工之剑',
    'weapon_id': 36,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 49.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 40.0,
        Stats.ShieldStrength: 20.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 50.0,
        Stats.ShieldStrength: 25.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 60.0,
        Stats.ShieldStrength: 30.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 70.0,
        Stats.ShieldStrength: 35.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 80.0,
        Stats.ShieldStrength: 40.0,
      },
    },
    'specialEffectComent': '攻击命中后叠1层，最多5层，每0.3秒触发一次，处于护盾庇护下时效果翻倍',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.ShieldStrength: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '松籁响起之时',
    'weapon_id': 37,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star5,
    'baseAttack': 741.0,
    'subStat': Stats.PhyDmgBonus,
    'subStatValue': 20.7,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 36.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 45.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 54.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 63.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 72.0,
      },
    },
    'specialEffectComent': '攻击力提高，普通攻击重击命中4次后再提高',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '黑岩刺枪',
    'weapon_id': 38,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.CritDmg,
    'subStatValue': 55.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 36.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 45.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 54.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 63.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 72.0,
      },
    },
    'specialEffectComent': '击败敌人后的30秒内叠1层，最多3层',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '流月针',
    'weapon_id': 39,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.PhyDmgBonus,
    'subStatValue': 34.5,
    'specialEffect': {
      Refine.Refine1: {
        Stats.ExtraDamageByAttack: 20.0,
      },
      Refine.Refine2: {
        Stats.ExtraDamageByAttack: 25.0,
      },
      Refine.Refine3: {
        Stats.ExtraDamageByAttack: 30.0,
      },
      Refine.Refine4: {
        Stats.ExtraDamageByAttack: 35.0,
      },
      Refine.Refine5: {
        Stats.ExtraDamageByAttack: 40.0,
      },
    },
    'specialEffectComent': '获得元素晶球或微粒5秒内',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
      ],
    },
  },
  {
    'name': '决斗之枪',
    'weapon_id': 40,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.CritRate,
    'subStatValue': 36.8,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 24.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 30.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 36.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 42.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 48.0,
      },
    },
    'specialEffectComent': '身边敌人少于两个时',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '匣里灭辰',
    'weapon_id': 41,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.Mastery,
    'subStatValue': 221.0,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 20.0,
        Stats.PhyDmgBonus: 20.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 28.0,
        Stats.PhyDmgBonus: 28.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 32.0,
        Stats.PhyDmgBonus: 32.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 36.0,
        Stats.PhyDmgBonus: 36.0,
      },
    },
    'specialEffectComent': '对处于水元素或火元素影响下的敌人',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '千岩长枪',
    'weapon_id': 42,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 27.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 28.0,
        Stats.CritRate: 12.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 32.0,
        Stats.CritRate: 16.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 36.0,
        Stats.CritRate: 20.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 40.0,
        Stats.CritRate: 24.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 44.0,
        Stats.CritRate: 28.0,
      },
    },
    'specialEffectComent': '每有一位璃月角色提升攻击力和暴击率',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '试做星镰',
    'weapon_id': 43,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.Recharge,
    'subStatValue': 45.9,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 16.0,
        Stats.PhyDmgBonus: 16.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 20.0,
        Stats.PhyDmgBonus: 20.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 28.0,
        Stats.PhyDmgBonus: 28.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 32.0,
        Stats.PhyDmgBonus: 32.0,
      },
    },
    'specialEffectComent': '施放元素战技后叠加一层，最多2层',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
      ],
    },
  },
  {
    'name': '西风长枪',
    'weapon_id': 44,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.Recharge,
    'subStatValue': 30.6,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '宗室猎枪',
    'weapon_id': 45,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 27.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.CritRate: 40.0,
      },
      Refine.Refine2: {
        Stats.CritRate: 50.0,
      },
      Refine.Refine3: {
        Stats.CritRate: 60.0,
      },
      Refine.Refine4: {
        Stats.CritRate: 70.0,
      },
      Refine.Refine5: {
        Stats.CritRate: 80.0,
      },
    },
    'specialEffectComent': '攻击造成伤害后叠一层，最多5层，造成暴击后移除',
    'specialEffectDamageType': {
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '龙脊长枪',
    'weapon_id': 46,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.PhyDmgBonus,
    'subStatValue': 69.0,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '喜多院十文字',
    'weapon_id': 47,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.Mastery,
    'subStatValue': 110.0,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 6.0,
        Stats.PhyDmgBonus: 6.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 7.5,
        Stats.PhyDmgBonus: 7.5,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 9.0,
        Stats.PhyDmgBonus: 9.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 10.5,
        Stats.PhyDmgBonus: 10.5,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 12.0,
        Stats.PhyDmgBonus: 12.0,
      },
    },
    'specialEffectComent': '元素战技伤害提升',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillE,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillE,
      ],
    },
  },
  {
    'name': '「渔获」',
    'weapon_id': 48,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.Recharge,
    'subStatValue': 45.9,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 16.0,
        Stats.PhyDmgBonus: 16.0,
        Stats.CritRate: 6.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 20.0,
        Stats.PhyDmgBonus: 20.0,
        Stats.CritRate: 7.5,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
        Stats.CritRate: 9.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 28.0,
        Stats.PhyDmgBonus: 28.0,
        Stats.CritRate: 10.5,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 32.0,
        Stats.PhyDmgBonus: 32.0,
        Stats.CritRate: 12.0,
      },
    },
    'specialEffectComent': '元素爆发造成的伤害提升，暴击率提升',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillQ,
      ],
      Stats.CritRate: [
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '断浪长鳍',
    'weapon_id': 49,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star4,
    'baseAttack': 620.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 13.8,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 40.0,
        Stats.PhyDmgBonus: 40.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 50.0,
        Stats.PhyDmgBonus: 50.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 60.0,
        Stats.PhyDmgBonus: 60.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 70.0,
        Stats.PhyDmgBonus: 70.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 80.0,
        Stats.PhyDmgBonus: 80.0,
      },
    },
    'specialEffectComent': '根据队伍中元素能量总和提升元素爆发伤害',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '贯虹之槊',
    'weapon_id': 50,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 49.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 40.0,
        Stats.ShieldStrength: 20.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 50.0,
        Stats.ShieldStrength: 25.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 60.0,
        Stats.ShieldStrength: 30.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 70.0,
        Stats.ShieldStrength: 35.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 80.0,
        Stats.ShieldStrength: 40.0,
      },
    },
    'specialEffectComent': '攻击命中后叠1层，最多5层，每0.3秒触发一次，处于护盾庇护下时效果翻倍',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.ShieldStrength: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '和璞鸢',
    'weapon_id': 51,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star5,
    'baseAttack': 674.0,
    'subStat': Stats.CritRate,
    'subStatValue': 22.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 22.4,
        Stats.DmgBonus: 12.0,
        Stats.PhyDmgBonus: 12.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 27.3,
        Stats.DmgBonus: 15.0,
        Stats.PhyDmgBonus: 15.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 32.2,
        Stats.DmgBonus: 18.0,
        Stats.PhyDmgBonus: 18.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 37.1,
        Stats.DmgBonus: 21.0,
        Stats.PhyDmgBonus: 21.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 42.0,
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
      },
    },
    'specialEffectComent': '命中敌人后叠加一层，持续6秒，最多7层，每0.3秒触发一次，满层时伤害提升',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '天空之脊',
    'weapon_id': 52,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star5,
    'baseAttack': 674.0,
    'subStat': Stats.Recharge,
    'subStatValue': 36.8,
    'specialEffect': {
      Refine.Refine1: {
        Stats.CritRate: 8.0,
      },
      Refine.Refine2: {
        Stats.CritRate: 10.0,
      },
      Refine.Refine3: {
        Stats.CritRate: 12.0,
      },
      Refine.Refine4: {
        Stats.CritRate: 14.0,
      },
      Refine.Refine5: {
        Stats.CritRate: 16.0,
      },
    },
    'specialEffectComent': '暴击率提升',
    'specialEffectDamageType': {
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '护摩之杖',
    'weapon_id': 53,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.CritDmg,
    'subStatValue': 66.2,
    'specialEffect': {
      Refine.Refine1: {
        Stats.HpBonus: 20.0,
        Stats.AttackBonusByHp: 1.8,
      },
      Refine.Refine2: {
        Stats.HpBonus: 25.0,
        Stats.AttackBonusByHp: 2.2,
      },
      Refine.Refine3: {
        Stats.HpBonus: 30.0,
        Stats.AttackBonusByHp: 2.6,
      },
      Refine.Refine4: {
        Stats.HpBonus: 35.0,
        Stats.AttackBonusByHp: 3.0,
      },
      Refine.Refine5: {
        Stats.HpBonus: 40.0,
        Stats.AttackBonusByHp: 3.4,
      },
    },
    'specialEffectComent': '生命值提升，基于生命值提升攻击力，生命值低于50%时再提升',
    'specialEffectDamageType': {
      Stats.HpBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.AttackBonusByHp: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '薙草之稻光',
    'weapon_id': 54,
    'type': WeaponTypes.Polearm,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.Recharge,
    'subStatValue': 55.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonusByRecharge: 28.0,
        Stats.Recharge: 30.0,
      },
      Refine.Refine2: {
        Stats.AttackBonusByRecharge: 35.0,
        Stats.Recharge: 35.0,
      },
      Refine.Refine3: {
        Stats.AttackBonusByRecharge: 42.0,
        Stats.Recharge: 40.0,
      },
      Refine.Refine4: {
        Stats.AttackBonusByRecharge: 49.0,
        Stats.Recharge: 45.0,
      },
      Refine.Refine5: {
        Stats.AttackBonusByRecharge: 56.0,
        Stats.Recharge: 50.0,
      },
    },
    'specialEffectComent': '基于元素充能效率提升攻击力，施放元素爆发后的12秒内提升元素充能',
    'specialEffectDamageType': {
      Stats.AttackBonusByRecharge: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.Recharge: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '绝弦',
    'weapon_id': 55,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.Mastery,
    'subStatValue': 165.0,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 30.0,
        Stats.PhyDmgBonus: 30.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 36.0,
        Stats.PhyDmgBonus: 36.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 42.0,
        Stats.PhyDmgBonus: 42.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 48.0,
        Stats.PhyDmgBonus: 48.0,
      },
    },
    'specialEffectComent': '元素战技与元素爆发的伤害提升',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '暗巷猎手',
    'weapon_id': 56,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 27.3,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 20.0,
        Stats.PhyDmgBonus: 20.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 25.0,
        Stats.PhyDmgBonus: 25.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 30.0,
        Stats.PhyDmgBonus: 30.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 35.0,
        Stats.PhyDmgBonus: 35.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 40.0,
        Stats.PhyDmgBonus: 40.0,
      },
    },
    'specialEffectComent': '处于队伍后台时每秒提升，处于队伍前台时流失',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '黑岩战弓',
    'weapon_id': 57,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.CritDmg,
    'subStatValue': 36.8,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 36.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 45.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 54.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 63.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 72.0,
      },
    },
    'specialEffectComent': '击败敌人后的30秒内叠1层，最多3层',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '钢轮弓',
    'weapon_id': 58,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.PhyDmgBonus,
    'subStatValue': 69.0,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 16.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 20.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 24.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 28.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 32.0,
      },
    },
    'specialEffectComent': '普通攻击和重击命中时叠加1层，持续6秒，最多4层，每0.3秒1层',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '西风猎弓',
    'weapon_id': 59,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.Recharge,
    'subStatValue': 61.3,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '试做澹月',
    'weapon_id': 60,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 41.3,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 36.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 45.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 54.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 63.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 72.0,
      },
    },
    'specialEffectComent': '重击命中要害，持续10秒',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '宗室长弓',
    'weapon_id': 61,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 41.3,
    'specialEffect': {
      Refine.Refine1: {
        Stats.CritRate: 40.0,
      },
      Refine.Refine2: {
        Stats.CritRate: 50.0,
      },
      Refine.Refine3: {
        Stats.CritRate: 60.0,
      },
      Refine.Refine4: {
        Stats.CritRate: 70.0,
      },
      Refine.Refine5: {
        Stats.CritRate: 80.0,
      },
    },
    'specialEffectComent': '攻击造成伤害后叠一层，最多5层，造成暴击后移除',
    'specialEffectDamageType': {
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '弓藏',
    'weapon_id': 62,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 41.3,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 40.0,
        Stats.PhyDmgBonus: 40.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 50.0,
        Stats.PhyDmgBonus: 50.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 60.0,
        Stats.PhyDmgBonus: 60.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 70.0,
        Stats.PhyDmgBonus: 70.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 80.0,
        Stats.PhyDmgBonus: 80.0,
      },
    },
    'specialEffectComent': '普通攻击造成的伤害提升，重击造成的伤害下降',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
      ],
    },
  },
  {
    'name': '祭礼弓',
    'weapon_id': 63,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.Recharge,
    'subStatValue': 30.6,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '苍翠猎弓',
    'weapon_id': 64,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.Recharge,
    'subStatValue': 27.6,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '风花之颂',
    'weapon_id': 65,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.Mastery,
    'subStatValue': 165.0,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 16.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 20.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 24.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 28.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 32.0,
      },
    },
    'specialEffectComent': '施放元素战技时提升攻击力，持续6秒',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '幽夜华尔兹',
    'weapon_id': 66,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.PhyDmgBonus,
    'subStatValue': 51.7,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 20.0,
        Stats.PhyDmgBonus: 20.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 25.0,
        Stats.PhyDmgBonus: 25.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 30.0,
        Stats.PhyDmgBonus: 30.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 35.0,
        Stats.PhyDmgBonus: 35.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 40.0,
        Stats.PhyDmgBonus: 40.0,
      },
    },
    'specialEffectComent': '普通攻击命中后5秒内元素战技伤害提升，元素战技命中后5秒内普通攻击伤害提升',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.SkillE,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.SkillE,
      ],
    },
  },
  {
    'name': '破魔之弓',
    'weapon_id': 67,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 55.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 30.0,
        Stats.PhyDmgBonus: 30.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 36.0,
        Stats.PhyDmgBonus: 36.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 42.0,
        Stats.PhyDmgBonus: 42.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 48.0,
        Stats.PhyDmgBonus: 48.0,
      },
    },
    'specialEffectComent': '普通攻击重击伤害提升（暂以重击计算），元素能量100%时翻倍',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
      ],
    },
  },
  {
    'name': '掠食者',
    'weapon_id': 68,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 41.3,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '曚云之月',
    'weapon_id': 69,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 27.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 40.0,
        Stats.PhyDmgBonus: 40.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 50.0,
        Stats.PhyDmgBonus: 50.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 60.0,
        Stats.PhyDmgBonus: 60.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 70.0,
        Stats.PhyDmgBonus: 70.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 80.0,
        Stats.PhyDmgBonus: 80.0,
      },
    },
    'specialEffectComent': '根据队伍中元素能量总和提升元素爆发伤害',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '天空之翼',
    'weapon_id': 70,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star5,
    'baseAttack': 674.0,
    'subStat': Stats.CritRate,
    'subStatValue': 22.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.CritDmg: 20.0,
      },
      Refine.Refine2: {
        Stats.CritDmg: 25.0,
      },
      Refine.Refine3: {
        Stats.CritDmg: 30.0,
      },
      Refine.Refine4: {
        Stats.CritDmg: 35.0,
      },
      Refine.Refine5: {
        Stats.CritDmg: 40.0,
      },
    },
    'specialEffectComent': '暴击伤害提升',
    'specialEffectDamageType': {
      Stats.CritDmg: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '阿莫斯之弓',
    'weapon_id': 71,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 49.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 52.0,
        Stats.PhyDmgBonus: 52.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 65.0,
        Stats.PhyDmgBonus: 65.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 78.0,
        Stats.PhyDmgBonus: 78.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 91.0,
        Stats.PhyDmgBonus: 91.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 104.0,
        Stats.PhyDmgBonus: 104.0,
      },
    },
    'specialEffectComent': '普通攻击与重击伤害提升，箭矢每经过0.1秒提升1次，最多5次',
    'specialEffectDamageType': {
      Stats.CritDmg: [
        DamageType.Normal,
        DamageType.Charged,
      ],
    },
  },
  {
    'name': '终末嗟叹之诗',
    'weapon_id': 72,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.Recharge,
    'subStatValue': 55.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.Mastery: 160.0,
        Stats.AttackBonus: 20.0,
      },
      Refine.Refine2: {
        Stats.Mastery: 200.0,
        Stats.AttackBonus: 25.0,
      },
      Refine.Refine3: {
        Stats.Mastery: 240.0,
        Stats.AttackBonus: 30.0,
      },
      Refine.Refine4: {
        Stats.Mastery: 280.0,
        Stats.AttackBonus: 35.0,
      },
      Refine.Refine5: {
        Stats.Mastery: 320.0,
        Stats.AttackBonus: 40.0,
      },
    },
    'specialEffectComent': '元素精通提高，元素战技或元素爆发命中4次后提升元素精通和攻击力',
    'specialEffectDamageType': {
      Stats.CritDmg: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '飞雷之弦振',
    'weapon_id': 73,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.CritDmg,
    'subStatValue': 66.2,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 20.0,
        Stats.DmgBonus: 40.0,
        Stats.PhyDmgBonus: 40.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 25.0,
        Stats.DmgBonus: 50.0,
        Stats.PhyDmgBonus: 50.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 30.0,
        Stats.DmgBonus: 60.0,
        Stats.PhyDmgBonus: 60.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 35.0,
        Stats.DmgBonus: 70.0,
        Stats.PhyDmgBonus: 70.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 40.0,
        Stats.DmgBonus: 80.0,
        Stats.PhyDmgBonus: 80.0,
      },
    },
    'specialEffectComent': '攻击力提高，获得巴印时增加普通攻击伤害',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.DmgBonus: [
        DamageType.Normal,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
      ],
    },
  },
  {
    'name': '冬极白星',
    'weapon_id': 74,
    'type': WeaponTypes.Bow,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.CritRate,
    'subStatValue': 33.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 48.0,
        Stats.DmgBonus: 12.0,
        Stats.PhyDmgBonus: 12.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 60.0,
        Stats.DmgBonus: 15.0,
        Stats.PhyDmgBonus: 15.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 72.0,
        Stats.DmgBonus: 18.0,
        Stats.PhyDmgBonus: 18.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 84.0,
        Stats.DmgBonus: 21.0,
        Stats.PhyDmgBonus: 21.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 96.0,
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
      },
    },
    'specialEffectComent': '元素战技和元素爆发造成的伤害提高，得到白夜极星时额外增加攻击力',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.DmgBonus: [
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '黑岩绯玉',
    'weapon_id': 75,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.CritDmg,
    'subStatValue': 55.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 36.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 45.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 54.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 63.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 72.0,
      },
    },
    'specialEffectComent': '击败敌人后的30秒内叠1层，最多3层',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '西风秘典',
    'weapon_id': 76,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.Recharge,
    'subStatValue': 45.9,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '万国诸海图谱',
    'weapon_id': 77,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.Mastery,
    'subStatValue': 110.0,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 16.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 20.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 24.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 28.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 32.0,
      },
    },
    'specialEffectComent': '触发元素反应后的10秒内叠1层，最多2层',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '试做金珀',
    'weapon_id': 78,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.HpBonus,
    'subStatValue': 41.3,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '宗室秘法录',
    'weapon_id': 79,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 27.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.CritRate: 40.0,
      },
      Refine.Refine2: {
        Stats.CritRate: 50.0,
      },
      Refine.Refine3: {
        Stats.CritRate: 60.0,
      },
      Refine.Refine4: {
        Stats.CritRate: 70.0,
      },
      Refine.Refine5: {
        Stats.CritRate: 80.0,
      },
    },
    'specialEffectComent': '攻击造成伤害后叠一层，最多5层，造成暴击后移除',
    'specialEffectDamageType': {
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '祭礼残章',
    'weapon_id': 80,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.Mastery,
    'subStatValue': 221.0,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '匣里日月',
    'weapon_id': 81,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.CritRate,
    'subStatValue': 27.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 20.0,
        Stats.PhyDmgBonus: 20.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 25.0,
        Stats.PhyDmgBonus: 25.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 30.0,
        Stats.PhyDmgBonus: 30.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 35.0,
        Stats.PhyDmgBonus: 35.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 40.0,
        Stats.PhyDmgBonus: 40.0,
      },
    },
    'specialEffectComent': '普通攻击命中后，元素战技与元素爆发伤害提高，元素战技与元素爆发命中后，普通攻击伤害提高',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '流浪乐章',
    'weapon_id': 82,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.CritDmg,
    'subStatValue': 55.1,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '暗巷的酒与诗',
    'weapon_id': 83,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.Recharge,
    'subStatValue': 30.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 20.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 25.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 30.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 35.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 40.0,
      },
    },
    'specialEffectComent': '冲刺后攻击力提升',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '昭心',
    'weapon_id': 84,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star4,
    'baseAttack': 510.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 41.3,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '忍冬之果',
    'weapon_id': 85,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 55.1,
    'specialEffect': {
      Refine.Refine1: {},
      Refine.Refine2: {},
      Refine.Refine3: {},
      Refine.Refine4: {},
      Refine.Refine5: {},
    },
    'specialEffectComent': '',
    'specialEffectDamageType': {},
  },
  {
    'name': '嘟嘟可故事集',
    'weapon_id': 86,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 55.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 8.0,
        Stats.DmgBonus: 16.0,
        Stats.PhyDmgBonus: 16.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 10.0,
        Stats.DmgBonus: 20.0,
        Stats.PhyDmgBonus: 20.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 12.0,
        Stats.DmgBonus: 24.0,
        Stats.PhyDmgBonus: 24.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 14.0,
        Stats.DmgBonus: 28.0,
        Stats.PhyDmgBonus: 28.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 16.0,
        Stats.DmgBonus: 32.0,
        Stats.PhyDmgBonus: 32.0,
      },
    },
    'specialEffectComent': '普通攻击命中后重击伤害提升，重击命中后攻击力提升',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.DmgBonus: [
        DamageType.Charged,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Charged,
      ],
    },
  },
  {
    'name': '白辰之环',
    'weapon_id': 87,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star4,
    'baseAttack': 565.0,
    'subStat': Stats.Recharge,
    'subStatValue': 30.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 10.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 12.5,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 15.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 17.5,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 20.0,
      },
    },
    'specialEffectComent': '触发雷元素相关反应后，增加相应类型元素伤害',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '四风原典',
    'weapon_id': 88,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.CritRate,
    'subStatValue': 33.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 32.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 40.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 48.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 56.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 64.0,
      },
    },
    'specialEffectComent': '在场上每4秒获得1层，最多4层',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '天空之卷',
    'weapon_id': 89,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star5,
    'baseAttack': 674.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 33.1,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DmgBonus: 12.0,
      },
      Refine.Refine2: {
        Stats.DmgBonus: 15.0,
      },
      Refine.Refine3: {
        Stats.DmgBonus: 18.0,
      },
      Refine.Refine4: {
        Stats.DmgBonus: 21.0,
      },
      Refine.Refine5: {
        Stats.DmgBonus: 24.0,
      },
    },
    'specialEffectComent': '元素伤害加成',
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '尘世之锁',
    'weapon_id': 90,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.AttackBonus,
    'subStatValue': 49.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.AttackBonus: 40.0,
        Stats.ShieldStrength: 20.0,
      },
      Refine.Refine2: {
        Stats.AttackBonus: 50.0,
        Stats.ShieldStrength: 25.0,
      },
      Refine.Refine3: {
        Stats.AttackBonus: 60.0,
        Stats.ShieldStrength: 30.0,
      },
      Refine.Refine4: {
        Stats.AttackBonus: 70.0,
        Stats.ShieldStrength: 35.0,
      },
      Refine.Refine5: {
        Stats.AttackBonus: 80.0,
        Stats.ShieldStrength: 40.0,
      },
    },
    'specialEffectComent': '攻击命中后叠1层，最多5层，每0.3秒触发一次，处于护盾庇护下时效果翻倍',
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.ShieldStrength: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
  },
  {
    'name': '不灭月华',
    'weapon_id': 91,
    'type': WeaponTypes.Catalyst,
    'rarity': Rarity.Star5,
    'baseAttack': 608.0,
    'subStat': Stats.HpBonus,
    'subStatValue': 49.6,
    'specialEffect': {
      Refine.Refine1: {
        Stats.HealingBonus: 10.0,
        Stats.ExtraDamageByHp: 1.0,
      },
      Refine.Refine2: {
        Stats.HealingBonus: 12.5,
        Stats.ExtraDamageByHp: 1.5,
      },
      Refine.Refine3: {
        Stats.HealingBonus: 15.0,
        Stats.ExtraDamageByHp: 2.0,
      },
      Refine.Refine4: {
        Stats.HealingBonus: 17.5,
        Stats.ExtraDamageByHp: 2.5,
      },
      Refine.Refine5: {
        Stats.HealingBonus: 20.0,
        Stats.ExtraDamageByHp: 3.0,
      },
    },
    'specialEffectComent': '治疗效果提升，普通攻击造成伤害增加，基于生命值上限',
    'specialEffectDamageType': {
      Stats.HealingBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.ExtraDamageByHp: [
        DamageType.Normal,
      ],
    },
  },
  {
    'name': '辰砂之纺锤',
    'weapon_id': 92,
    'type': WeaponTypes.Sword,
    'rarity': Rarity.Star4,
    'baseAttack': 454.0,
    'subStat': Stats.DefendBonus,
    'subStatValue': 69.0,
    'specialEffect': {
      Refine.Refine1: {
        Stats.ExtraDmageByDefend: 40.0,
      },
      Refine.Refine2: {
        Stats.ExtraDmageByDefend: 50.0,
      },
      Refine.Refine3: {
        Stats.ExtraDmageByDefend: 60.0,
      },
      Refine.Refine4: {
        Stats.ExtraDmageByDefend: 70.0,
      },
      Refine.Refine5: {
        Stats.ExtraDmageByDefend: 80.0,
      },
    },
    'specialEffectComent': '元素战技伤害提高，每1.5秒最多触发一次',
    'specialEffectDamageType': {
      Stats.ExtraDmageByDefend: [
        DamageType.SkillE,
      ],
    },
  },
  {
    'name': '赤角石溃杵',
    'weapon_id': 93,
    'type': WeaponTypes.Claymore,
    'rarity': Rarity.Star5,
    'baseAttack': 542.0,
    'subStat': Stats.CritDmg,
    'subStatValue': 88.2,
    'specialEffect': {
      Refine.Refine1: {
        Stats.DefendBonus: 28.0,
        Stats.ExtraDmageByDefend: 40.0,
      },
      Refine.Refine2: {
        Stats.DefendBonus: 35.0,
        Stats.ExtraDmageByDefend: 50.0,
      },
      Refine.Refine3: {
        Stats.DefendBonus: 42.0,
        Stats.ExtraDmageByDefend: 60.0,
      },
      Refine.Refine4: {
        Stats.DefendBonus: 49.0,
        Stats.ExtraDmageByDefend: 70.0,
      },
      Refine.Refine5: {
        Stats.DefendBonus: 56.0,
        Stats.ExtraDmageByDefend: 80.0,
      },
    },
    'specialEffectComent': '元素战技伤害提高，每1.5秒最多触发一次',
    'specialEffectDamageType': {
      Stats.DefendBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
      Stats.ExtraDmageByDefend: [
        DamageType.Normal,
        DamageType.Charged,
      ],
    },
  },
];
