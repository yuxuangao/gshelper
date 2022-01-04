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
    'specialEffectComent': {
      Refine.Refine1: '击败敌人后，攻击力提升12%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine2: '击败敌人后，攻击力提升15%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine3: '击败敌人后，攻击力提升18%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine4: '击败敌人后，攻击力提升21%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine5: '击败敌人后，攻击力提升24%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '攻击造成暴击时，有60%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每12秒只能触发一次。',
      Refine.Refine2: '攻击造成暴击时，有70%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每10.5秒只能触发一次。',
      Refine.Refine3: '攻击造成暴击时，有80%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每9秒只能触发一次。',
      Refine.Refine4: '攻击造成暴击时，有90%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每7.5秒只能触发一次。',
      Refine.Refine5: '攻击造成暴击时，有100%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每6秒只能触发一次。',
    },
    'specialEffectDamageType': [],
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '造成元素伤害后的6秒内，角色造成的伤害提高6%，该效果最多叠加2层。该效果每1秒可以触发一次。',
      Refine.Refine2: '造成元素伤害后的6秒内，角色造成的伤害提高7.5%，该效果最多叠加2层。该效果每1秒可以触发一次。',
      Refine.Refine3: '造成元素伤害后的6秒内，角色造成的伤害提高9%，该效果最多叠加2层。该效果每1秒可以触发一次。',
      Refine.Refine4: '造成元素伤害后的6秒内，角色造成的伤害提高10.5%，该效果最多叠加2层。该效果每1秒可以触发一次。',
      Refine.Refine5: '造成元素伤害后的6秒内，角色造成的伤害提高12%，该效果最多叠加2层。该效果每1秒可以触发一次。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '对处于火元素或雷元素影响下的敌人，造成的伤害提高20%。',
      Refine.Refine2: '对处于火元素或雷元素影响下的敌人，造成的伤害提高24%。',
      Refine.Refine3: '对处于火元素或雷元素影响下的敌人，造成的伤害提高28%。',
      Refine.Refine4: '对处于火元素或雷元素影响下的敌人，造成的伤害提高32%。',
      Refine.Refine5: '对处于火元素或雷元素影响下的敌人，造成的伤害提高36%。',
    },
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
    'specialEffectAlways': [],
  },
  {
    'name': '试做斩岩',
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
    'specialEffectComent': {
      Refine.Refine1: '普通攻击或重击命中时，攻击力和防御力提高4%，持续6秒，最多叠加4层。该效果每0.3秒只能触发一次。',
      Refine.Refine2: '普通攻击或重击命中时，攻击力和防御力提高5%，持续6秒，最多叠加4层。该效果每0.3秒只能触发一次。',
      Refine.Refine3: '普通攻击或重击命中时，攻击力和防御力提高6%，持续6秒，最多叠加4层。该效果每0.3秒只能触发一次。',
      Refine.Refine4: '普通攻击或重击命中时，攻击力和防御力提高7%，持续6秒，最多叠加4层。该效果每0.3秒只能触发一次。',
      Refine.Refine5: '普通攻击或重击命中时，攻击力和防御力提高8%，持续6秒，最多叠加4层。该效果每0.3秒只能触发一次。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '攻击造成伤害时，暴击率提升8%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine2: '攻击造成伤害时，暴击率提升10%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine3: '攻击造成伤害时，暴击率提升12%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine4: '攻击造成伤害时，暴击率提升14%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine5: '攻击造成伤害时，暴击率提升16%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
    },
    'specialEffectDamageType': {
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '元素战技造成伤害时，有40%的概率重置该技能的冷却时间，该效果每30秒只能触发一次。',
      Refine.Refine2: '元素战技造成伤害时，有50%的概率重置该技能的冷却时间，该效果每26秒只能触发一次。',
      Refine.Refine3: '元素战技造成伤害时，有60%的概率重置该技能的冷却时间，该效果每22秒只能触发一次。',
      Refine.Refine4: '元素战技造成伤害时，有70%的概率重置该技能的冷却时间，该效果每19秒只能触发一次。',
      Refine.Refine5: '元素战技造成伤害时，有80%的概率重置该技能的冷却时间，该效果每16秒只能触发一次。',
    },
    'specialEffectDamageType': [],
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '角色造成的伤害提升12%。受到伤害后，该伤害提升效果会失效5秒。',
      Refine.Refine2: '角色造成的伤害提升15%。受到伤害后，该伤害提升效果会失效5秒。',
      Refine.Refine3: '角色造成的伤害提升18%。受到伤害后，该伤害提升效果会失效5秒。',
      Refine.Refine4: '角色造成的伤害提升21%。受到伤害后，该伤害提升效果会失效5秒。',
      Refine.Refine5: '角色造成的伤害提升24%。受到伤害后，该伤害提升效果会失效5秒。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '普通攻击与重击的造成的伤害提升20%；此外，普通攻击与重击暴击时，回复等同于攻击力60%的生命值。该效果每5秒至多发动一次。',
      Refine.Refine2:
          '普通攻击与重击的造成的伤害提升25%；此外，普通攻击与重击暴击时，回复等同于攻击力70%的生命值。该效果每5秒至多发动一次。',
      Refine.Refine3:
          '普通攻击与重击的造成的伤害提升30%；此外，普通攻击与重击暴击时，回复等同于攻击力80%的生命值。该效果每5秒至多发动一次。',
      Refine.Refine4:
          '普通攻击与重击的造成的伤害提升35%；此外，普通攻击与重击暴击时，回复等同于攻击力90%的生命值。该效果每5秒至多发动一次。',
      Refine.Refine5:
          '普通攻击与重击的造成的伤害提升40%；此外，普通攻击与重击暴击时，回复等同于攻击力100%的生命值。该效果每5秒至多发动一次。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '普通攻击或重击命中时，会获得一个和音。积攒了5个和音后，释放音律的力量，对周围的敌人造成100%攻击力的伤害。和音最多存在30秒，每0.5秒至多获得1个和音。',
      Refine.Refine2:
          '普通攻击或重击命中时，会获得一个和音。积攒了5个和音后，释放音律的力量，对周围的敌人造成125%攻击力的伤害。和音最多存在30秒，每0.5秒至多获得1个和音。',
      Refine.Refine3:
          '普通攻击或重击命中时，会获得一个和音。积攒了5个和音后，释放音律的力量，对周围的敌人造成150%攻击力的伤害。和音最多存在30秒，每0.5秒至多获得1个和音。',
      Refine.Refine4:
          '普通攻击或重击命中时，会获得一个和音。积攒了5个和音后，释放音律的力量，对周围的敌人造成175%攻击力的伤害。和音最多存在30秒，每0.5秒至多获得1个和音。',
      Refine.Refine5:
          '普通攻击或重击命中时，会获得一个和音。积攒了5个和音后，释放音律的力量，对周围的敌人造成200%攻击力的伤害。和音最多存在30秒，每0.5秒至多获得1个和音。',
    },
    'specialEffectDamageType': [],
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '仅在以下平台生效：\n"PlayStation Network"\n普通攻击与重击命中敌人后有50%概率在小范围内造成200%攻击力的伤害。该效果每10秒只能触发一次；此外，旅行者装备降临之剑时，攻击力提升66点。',
      Refine.Refine2: '',
      Refine.Refine3: '',
      Refine.Refine4: '',
      Refine.Refine5: '',
    },
    'specialEffectDamageType': [],
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '元素战技造成的伤害增加16%，元素战技的暴击率提升6%。',
      Refine.Refine2: '元素战技造成的伤害增加20%，元素战技的暴击率提升7.5%。',
      Refine.Refine3: '元素战技造成的伤害增加24%，元素战技的暴击率提升9%。',
      Refine.Refine4: '元素战技造成的伤害增加28%，元素战技的暴击率提升10.5%。',
      Refine.Refine5: '元素战技造成的伤害增加32%，元素战技的暴击率提升12%。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '施放元素战技后，获得1个胤种，该效果每5秒至多触发一次。胤种持续30秒，至多同时存在3个。施放元素爆发后，会清除持有的所有胤种，并在2秒之后，基于消耗的胤种数量，每个为该角色恢复6点元素能量。',
      Refine.Refine2:
          '施放元素战技后，获得1个胤种，该效果每5秒至多触发一次。胤种持续30秒，至多同时存在3个。施放元素爆发后，会清除持有的所有胤种，并在2秒之后，基于消耗的胤种数量，每个为该角色恢复7.5点元素能量。',
      Refine.Refine3:
          '施放元素战技后，获得1个胤种，该效果每5秒至多触发一次。胤种持续30秒，至多同时存在3个。施放元素爆发后，会清除持有的所有胤种，并在2秒之后，基于消耗的胤种数量，每个为该角色恢复9点元素能量。',
      Refine.Refine4:
          '施放元素战技后，获得1个胤种，该效果每5秒至多触发一次。胤种持续30秒，至多同时存在3个。施放元素爆发后，会清除持有的所有胤种，并在2秒之后，基于消耗的胤种数量，每个为该角色恢复10.5点元素能量。',
      Refine.Refine5:
          '施放元素战技后，获得1个胤种，该效果每5秒至多触发一次。胤种持续30秒，至多同时存在3个。施放元素爆发后，会清除持有的所有胤种，并在2秒之后，基于消耗的胤种数量，每个为该角色恢复12点元素能量。',
    },
    'specialEffectDamageType': [],
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '攻击力提高20%；受到伤害时触发：高扬抗争旗号的西风鹰之魂苏醒，恢复等同于攻击力的100%的生命值，并对周围的敌人造成200%攻击力的伤害。该效果每15秒只能触发一次。',
      Refine.Refine2:
          '攻击力提高25%；受到伤害时触发：高扬抗争旗号的西风鹰之魂苏醒，恢复等同于攻击力的115%的生命值，并对周围的敌人造成230%攻击力的伤害。该效果每15秒只能触发一次。',
      Refine.Refine3:
          '攻击力提高30%；受到伤害时触发：高扬抗争旗号的西风鹰之魂苏醒，恢复等同于攻击力的130%的生命值，并对周围的敌人造成260%攻击力的伤害。该效果每15秒只能触发一次。',
      Refine.Refine4:
          '攻击力提高35%；受到伤害时触发：高扬抗争旗号的西风鹰之魂苏醒，恢复等同于攻击力的145%的生命值，并对周围的敌人造成290%攻击力的伤害。该效果每15秒只能触发一次。',
      Refine.Refine5:
          '攻击力提高40%；受到伤害时触发：高扬抗争旗号的西风鹰之魂苏醒，恢复等同于攻击力的160%的生命值，并对周围的敌人造成320%攻击力的伤害。该效果每15秒只能触发一次。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [
      Stats.AttackBonus,
    ],
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
    'specialEffectComent': {
      Refine.Refine1:
          '暴击率提升4%；施放元素爆发时，获得破空之势：移动速度提升10%，攻击速度提升10%，普通攻击与重击命中时，额外造成20%攻击力的伤害，持续12秒。',
      Refine.Refine2:
          '暴击率提升5%；施放元素爆发时，获得破空之势：移动速度提升10%，攻击速度提升10%，普通攻击与重击命中时，额外造成25%攻击力的伤害，持续12秒。',
      Refine.Refine3:
          '暴击率提升6%；施放元素爆发时，获得破空之势：移动速度提升10%，攻击速度提升10%，普通攻击与重击命中时，额外造成30%攻击力的伤害，持续12秒。',
      Refine.Refine4:
          '暴击率提升7%；施放元素爆发时，获得破空之势：移动速度提升10%，攻击速度提升10%，普通攻击与重击命中时，额外造成35%攻击力的伤害，持续12秒。',
      Refine.Refine5:
          '暴击率提升8%；施放元素爆发时，获得破空之势：移动速度提升10%，攻击速度提升10%，普通攻击与重击命中时，额外造成40%攻击力的伤害，持续12秒。',
    },
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
    'specialEffectAlways': [
      Stats.CritRate,
    ],
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
    'specialEffectComent': {
      Refine.Refine1:
          '护盾强效提升20%。攻击命中后的8秒内，攻击力提升4%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine2:
          '护盾强效提升25%。攻击命中后的8秒内，攻击力提升5%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine3:
          '护盾强效提升30%。攻击命中后的8秒内，攻击力提升6%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine4:
          '护盾强效提升35%。攻击命中后的8秒内，攻击力提升7%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine5:
          '护盾强效提升40%。攻击命中后的8秒内，攻击力提升8%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
    },
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
    'specialEffectAlways': [
      Stats.ShieldStrength,
    ],
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
    'specialEffectComent': {
      Refine.Refine1: '生命值提升20%。此外，基于装备该武器的角色生命值上限的1.2%，获得攻击力加成。',
      Refine.Refine2: '生命值提升25%。此外，基于装备该武器的角色生命值上限的1.5%，获得攻击力加成。',
      Refine.Refine3: '生命值提升30%。此外，基于装备该武器的角色生命值上限的1.8%，获得攻击力加成。',
      Refine.Refine4: '生命值提升35%。此外，基于装备该武器的角色生命值上限的2.1%，获得攻击力加成。',
      Refine.Refine5: '生命值提升40%。此外，基于装备该武器的角色生命值上限的2.4%，获得攻击力加成。',
    },
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
    'specialEffectAlways': [
      Stats.HpBonus,
      Stats.AttackBonusByHp,
    ],
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
    'specialEffectComent': {
      Refine.Refine1:
          '飘游风中的「千年的大乐章」的一部分。造成的伤害提高10%；触发元素反应时，角色获得一枚奋起之符，每0.5秒内至多触发一次，角色处于队伍后台也能触发。拥有2枚奋起之符时，将消耗所有奋起之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·抗争之歌」效果：普通攻击、重击、下落攻击造成的伤害提高16%，攻击力提升20%。触发后20秒内，无法再次获得奋起之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
      Refine.Refine2:
          '飘游风中的「千年的大乐章」的一部分。造成的伤害提高12.5%；触发元素反应时，角色获得一枚奋起之符，每0.5秒内至多触发一次，角色处于队伍后台也能触发。拥有2枚奋起之符时，将消耗所有奋起之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·抗争之歌」效果：普通攻击、重击、下落攻击造成的伤害提高20%，攻击力提升25%。触发后20秒内，无法再次获得奋起之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
      Refine.Refine3:
          '飘游风中的「千年的大乐章」的一部分。造成的伤害提高15%；触发元素反应时，角色获得一枚奋起之符，每0.5秒内至多触发一次，角色处于队伍后台也能触发。拥有2枚奋起之符时，将消耗所有奋起之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·抗争之歌」效果：普通攻击、重击、下落攻击造成的伤害提高24%，攻击力提升30%。触发后20秒内，无法再次获得奋起之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
      Refine.Refine4:
          '飘游风中的「千年的大乐章」的一部分。造成的伤害提高17.5%；触发元素反应时，角色获得一枚奋起之符，每0.5秒内至多触发一次，角色处于队伍后台也能触发。拥有2枚奋起之符时，将消耗所有奋起之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·抗争之歌」效果：普通攻击、重击、下落攻击造成的伤害提高28%，攻击力提升35%。触发后20秒内，无法再次获得奋起之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
      Refine.Refine5:
          '飘游风中的「千年的大乐章」的一部分。造成的伤害提高20%；触发元素反应时，角色获得一枚奋起之符，每0.5秒内至多触发一次，角色处于队伍后台也能触发。拥有2枚奋起之符时，将消耗所有奋起之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·抗争之歌」效果：普通攻击、重击、下落攻击造成的伤害提高32%，攻击力提升40%。触发后20秒内，无法再次获得奋起之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '获得12%所有元素伤害加成，并能获得「雾切之巴印」的威势。雾切之巴印：持有1/2/3层雾切之巴印时，获得8/16/28%自己的元素类型的元素伤害加成。在下列情况下，角色将各获得1层雾切之巴印：普通攻击造成元素伤害时，持续5秒；施放元素爆发时，持续10秒；此外，角色元素能量低于100%时，将获得1层雾切之巴印，此雾切之巴印会在角色的元素能量充满时消失。每层雾切之巴印的持续时间独立计算。',
      Refine.Refine2:
          '获得15%所有元素伤害加成，并能获得「雾切之巴印」的威势。雾切之巴印：持有1/2/3层雾切之巴印时，获得10/20/35%自己的元素类型的元素伤害加成。在下列情况下，角色将各获得1层雾切之巴印：普通攻击造成元素伤害时，持续5秒；施放元素爆发时，持续10秒；此外，角色元素能量低于100%时，将获得1层雾切之巴印，此雾切之巴印会在角色的元素能量充满时消失。每层雾切之巴印的持续时间独立计算。',
      Refine.Refine3:
          '获得18%所有元素伤害加成，并能获得「雾切之巴印」的威势。雾切之巴印：持有1/2/3层雾切之巴印时，获得12/24/42%自己的元素类型的元素伤害加成。在下列情况下，角色将各获得1层雾切之巴印：普通攻击造成元素伤害时，持续5秒；施放元素爆发时，持续10秒；此外，角色元素能量低于100%时，将获得1层雾切之巴印，此雾切之巴印会在角色的元素能量充满时消失。每层雾切之巴印的持续时间独立计算。',
      Refine.Refine4:
          '获得21%所有元素伤害加成，并能获得「雾切之巴印」的威势。雾切之巴印：持有1/2/3层雾切之巴印时，获得14/28/49%自己的元素类型的元素伤害加成。在下列情况下，角色将各获得1层雾切之巴印：普通攻击造成元素伤害时，持续5秒；施放元素爆发时，持续10秒；此外，角色元素能量低于100%时，将获得1层雾切之巴印，此雾切之巴印会在角色的元素能量充满时消失。每层雾切之巴印的持续时间独立计算。',
      Refine.Refine5:
          '获得24%所有元素伤害加成，并能获得「雾切之巴印」的威势。雾切之巴印：持有1/2/3层雾切之巴印时，获得16/32/56%自己的元素类型的元素伤害加成。在下列情况下，角色将各获得1层雾切之巴印：普通攻击造成元素伤害时，持续5秒；施放元素爆发时，持续10秒；此外，角色元素能量低于100%时，将获得1层雾切之巴印，此雾切之巴印会在角色的元素能量充满时消失。每层雾切之巴印的持续时间独立计算。',
    },
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '击败敌人后，攻击力提升12%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine2: '击败敌人后，攻击力提升15%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine3: '击败敌人后，攻击力提升18%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine4: '击败敌人后，攻击力提升21%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine5: '击败敌人后，攻击力提升24%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '攻击造成暴击时，有60%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每12秒只能触发一次。',
      Refine.Refine2: '攻击造成暴击时，有70%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每10.5秒只能触发一次。',
      Refine.Refine3: '攻击造成暴击时，有80%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每9秒只能触发一次。',
      Refine.Refine4: '攻击造成暴击时，有90%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每7.5秒只能触发一次。',
      Refine.Refine5: '攻击造成暴击时，有100%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每6秒只能触发一次。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '队伍中每有一位璃月角色，装备该武器的角色便获得7%攻击力提升与3%暴击率提升。至多获得4层提升效果。',
      Refine.Refine2: '队伍中每有一位璃月角色，装备该武器的角色便获得8%攻击力提升与4%暴击率提升。至多获得4层提升效果。',
      Refine.Refine3: '队伍中每有一位璃月角色，装备该武器的角色便获得9%攻击力提升与5%暴击率提升。至多获得4层提升效果。',
      Refine.Refine4: '队伍中每有一位璃月角色，装备该武器的角色便获得10%攻击力提升与6%暴击率提升。至多获得4层提升效果。',
      Refine.Refine5: '队伍中每有一位璃月角色，装备该武器的角色便获得11%攻击力提升与7%暴击率提升。至多获得4层提升效果。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '普通攻击和重击命中时，有50%的概率对小范围内的敌人造成240%攻击力的额外伤害。该效果每15秒只能触发一次。',
      Refine.Refine2: '普通攻击和重击命中时，有50%的概率对小范围内的敌人造成300%攻击力的额外伤害。该效果每15秒只能触发一次。',
      Refine.Refine3: '普通攻击和重击命中时，有50%的概率对小范围内的敌人造成360%攻击力的额外伤害。该效果每15秒只能触发一次。',
      Refine.Refine4: '普通攻击和重击命中时，有50%的概率对小范围内的敌人造成420%攻击力的额外伤害。该效果每15秒只能触发一次。',
      Refine.Refine5: '普通攻击和重击命中时，有50%的概率对小范围内的敌人造成480%攻击力的额外伤害。该效果每15秒只能触发一次。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '对处于水元素或雷元素影响下的敌人，造成的伤害提高20%。',
      Refine.Refine2: '对处于水元素或雷元素影响下的敌人，造成的伤害提高24%。',
      Refine.Refine3: '对处于水元素或雷元素影响下的敌人，造成的伤害提高28%。',
      Refine.Refine4: '对处于水元素或雷元素影响下的敌人，造成的伤害提高32%。',
      Refine.Refine5: '对处于水元素或雷元素影响下的敌人，造成的伤害提高36%。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '攻击造成伤害时，暴击率提升8%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine2: '攻击造成伤害时，暴击率提升10%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine3: '攻击造成伤害时，暴击率提升12%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine4: '攻击造成伤害时，暴击率提升14%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine5: '攻击造成伤害时，暴击率提升16%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
    },
    'specialEffectDamageType': {
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '角色在场上时，每4秒提升6%造成的伤害，3%受到的伤害。该效果最多叠加5层，不随角色退场重置，受到伤害后会减少1层效果。',
      Refine.Refine2:
          '角色在场上时，每4秒提升7%造成的伤害，2.7%受到的伤害。该效果最多叠加5层，不随角色退场重置，受到伤害后会减少1层效果。',
      Refine.Refine3:
          '角色在场上时，每4秒提升8%造成的伤害，2.4%受到的伤害。该效果最多叠加5层，不随角色退场重置，受到伤害后会减少1层效果。',
      Refine.Refine4:
          '角色在场上时，每4秒提升9%造成的伤害，2.2%受到的伤害。该效果最多叠加5层，不随角色退场重置，受到伤害后会减少1层效果。',
      Refine.Refine5:
          '角色在场上时，每4秒提升10%造成的伤害，2%受到的伤害。该效果最多叠加5层，不随角色退场重置，受到伤害后会减少1层效果。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '受到伤害时，生成一个伤害吸收量等同于生命值上限20%的护盾，持续10秒或直到护盾失效,每45秒只能触发一次。角色处于护盾庇护下时，造成的伤害提升12%。',
      Refine.Refine2:
          '受到伤害时，生成一个伤害吸收量等同于生命值上限23%的护盾，持续10秒或直到护盾失效,每45秒只能触发一次。角色处于护盾庇护下时，造成的伤害提升15%。',
      Refine.Refine3:
          '受到伤害时，生成一个伤害吸收量等同于生命值上限26%的护盾，持续10秒或直到护盾失效,每45秒只能触发一次。角色处于护盾庇护下时，造成的伤害提升18%。',
      Refine.Refine4:
          '受到伤害时，生成一个伤害吸收量等同于生命值上限29%的护盾，持续10秒或直到护盾失效,每45秒只能触发一次。角色处于护盾庇护下时，造成的伤害提升21%。',
      Refine.Refine5:
          '受到伤害时，生成一个伤害吸收量等同于生命值上限32%的护盾，持续10秒或直到护盾失效,每45秒只能触发一次。角色处于护盾庇护下时，造成的伤害提升24%。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '普通攻击和重击命中后，攻击力和防御力提高6%。该效果持续6秒，最多叠加4层，每0.5秒只能触发一次。',
      Refine.Refine2: '普通攻击和重击命中后，攻击力和防御力提高7.5%。该效果持续6秒，最多叠加4层，每0.5秒只能触发一次。',
      Refine.Refine3: '普通攻击和重击命中后，攻击力和防御力提高9%。该效果持续6秒，最多叠加4层，每0.5秒只能触发一次。',
      Refine.Refine4: '普通攻击和重击命中后，攻击力和防御力提高10.5%。该效果持续6秒，最多叠加4层，每0.5秒只能触发一次。',
      Refine.Refine5: '普通攻击和重击命中后，攻击力和防御力提高12%。该效果持续6秒，最多叠加4层，每0.5秒只能触发一次。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '元素战技造成伤害时，有40%的概率重置该技能的冷却时间，该效果每30秒只能触发一次。',
      Refine.Refine2: '元素战技造成伤害时，有50%的概率重置该技能的冷却时间，该效果每26秒只能触发一次。',
      Refine.Refine3: '元素战技造成伤害时，有60%的概率重置该技能的冷却时间，该效果每22秒只能触发一次。',
      Refine.Refine4: '元素战技造成伤害时，有70%的概率重置该技能的冷却时间，该效果每19秒只能触发一次。',
      Refine.Refine5: '元素战技造成伤害时，有80%的概率重置该技能的冷却时间，该效果每16秒只能触发一次。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '普通攻击与重击命中敌人时，有60%概率在敌人上方生成恒冰晶核并坠落，造成80%攻击力的范围伤害。若敌人处于冰元素影响下，则造成200%攻击力的伤害。该效果每10秒至多触发一次。',
      Refine.Refine2:
          '普通攻击与重击命中敌人时，有70%概率在敌人上方生成恒冰晶核并坠落，造成95%攻击力的范围伤害。若敌人处于冰元素影响下，则造成240%攻击力的伤害。该效果每10秒至多触发一次。',
      Refine.Refine3:
          '普通攻击与重击命中敌人时，有80%概率在敌人上方生成恒冰晶核并坠落，造成110%攻击力的范围伤害。若敌人处于冰元素影响下，则造成280%攻击力的伤害。该效果每10秒至多触发一次。',
      Refine.Refine4:
          '普通攻击与重击命中敌人时，有90%概率在敌人上方生成恒冰晶核并坠落，造成125%攻击力的范围伤害。若敌人处于冰元素影响下，则造成320%攻击力的伤害。该效果每10秒至多触发一次。',
      Refine.Refine5:
          '普通攻击与重击命中敌人时，有100%概率在敌人上方生成恒冰晶核并坠落，造成140%攻击力的范围伤害。若敌人处于冰元素影响下，则造成360%攻击力的伤害。该效果每10秒至多触发一次。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '元素战技造成的伤害提升6%。元素战技命中后，角色流失3点元素能量，并在此后的6秒内，每2秒恢复3点元素能量。该效果每10秒至多触发一次，角色处于队伍后台也能触发。',
      Refine.Refine2:
          '元素战技造成的伤害提升7.5%。元素战技命中后，角色流失3点元素能量，并在此后的6秒内，每2秒恢复3.5点元素能量。该效果每10秒至多触发一次，角色处于队伍后台也能触发。',
      Refine.Refine3:
          '元素战技造成的伤害提升9%。元素战技命中后，角色流失3点元素能量，并在此后的6秒内，每2秒恢复4点元素能量。该效果每10秒至多触发一次，角色处于队伍后台也能触发。',
      Refine.Refine4:
          '元素战技造成的伤害提升10.5%。元素战技命中后，角色流失3点元素能量，并在此后的6秒内，每2秒恢复4.5点元素能量。该效果每10秒至多触发一次，角色处于队伍后台也能触发。',
      Refine.Refine5:
          '元素战技造成的伤害提升12%。元素战技命中后，角色流失3点元素能量，并在此后的6秒内，每2秒恢复5点元素能量。该效果每10秒至多触发一次，角色处于队伍后台也能触发。',
    },
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillE,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillE,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '元素爆发造成的伤害提升12%。元素爆发命中敌人时，有100%概率召唤大鲔冲击，造成100%攻击力的范围伤害。该效果每15秒至多触发一次。',
      Refine.Refine2:
          '元素爆发造成的伤害提升15%。元素爆发命中敌人时，有100%概率召唤大鲔冲击，造成125%攻击力的范围伤害。该效果每15秒至多触发一次。',
      Refine.Refine3:
          '元素爆发造成的伤害提升18%。元素爆发命中敌人时，有100%概率召唤大鲔冲击，造成150%攻击力的范围伤害。该效果每15秒至多触发一次。',
      Refine.Refine4:
          '元素爆发造成的伤害提升21%。元素爆发命中敌人时，有100%概率召唤大鲔冲击，造成175%攻击力的范围伤害。该效果每15秒至多触发一次。',
      Refine.Refine5:
          '元素爆发造成的伤害提升24%。元素爆发命中敌人时，有100%概率召唤大鲔冲击，造成200%攻击力的范围伤害。该效果每15秒至多触发一次。',
    },
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.12%，通过这种方式，元素爆发造成的伤害至多提高40%。',
      Refine.Refine2:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.15%，通过这种方式，元素爆发造成的伤害至多提高50%。',
      Refine.Refine3:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.18%，通过这种方式，元素爆发造成的伤害至多提高60%。',
      Refine.Refine4:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.21%，通过这种方式，元素爆发造成的伤害至多提高70%。',
      Refine.Refine5:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.24%，通过这种方式，元素爆发造成的伤害至多提高80%。',
    },
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '造成的伤害提高8%；施放元素爆发后：普通攻击和重击命中时会发出真空刃，对路径上的敌人造成80%攻击力的伤害，持续20秒或直至发出8次真空刃。',
      Refine.Refine2:
          '造成的伤害提高10%；施放元素爆发后：普通攻击和重击命中时会发出真空刃，对路径上的敌人造成100%攻击力的伤害，持续20秒或直至发出8次真空刃。',
      Refine.Refine3:
          '造成的伤害提高12%；施放元素爆发后：普通攻击和重击命中时会发出真空刃，对路径上的敌人造成120%攻击力的伤害，持续20秒或直至发出8次真空刃。',
      Refine.Refine4:
          '造成的伤害提高14%；施放元素爆发后：普通攻击和重击命中时会发出真空刃，对路径上的敌人造成140%攻击力的伤害，持续20秒或直至发出8次真空刃。',
      Refine.Refine5:
          '造成的伤害提高16%；施放元素爆发后：普通攻击和重击命中时会发出真空刃，对路径上的敌人造成160%攻击力的伤害，持续20秒或直至发出8次真空刃。',
    },
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
    'specialEffectAlways': [
      Stats.DmgBonus,
      Stats.PhyDmgBonus,
    ],
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
    'specialEffectComent': {
      Refine.Refine1:
          '攻击力提高20%；攻击命中生命值低于30%的敌人时，队伍中所有成员的攻击力提高40%，持续12秒。该效果30秒只能触发一次。',
      Refine.Refine2:
          '攻击力提高25%；攻击命中生命值低于30%的敌人时，队伍中所有成员的攻击力提高50%，持续12秒。该效果30秒只能触发一次。',
      Refine.Refine3:
          '攻击力提高30%；攻击命中生命值低于30%的敌人时，队伍中所有成员的攻击力提高60%，持续12秒。该效果30秒只能触发一次。',
      Refine.Refine4:
          '攻击力提高35%；攻击命中生命值低于30%的敌人时，队伍中所有成员的攻击力提高70%，持续12秒。该效果30秒只能触发一次。',
      Refine.Refine5:
          '攻击力提高40%；攻击命中生命值低于30%的敌人时，队伍中所有成员的攻击力提高80%，持续12秒。该效果30秒只能触发一次。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '护盾强效提升20%。攻击命中后的8秒内，攻击力提升4%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine2:
          '护盾强效提升25%。攻击命中后的8秒内，攻击力提升5%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine3:
          '护盾强效提升30%。攻击命中后的8秒内，攻击力提升6%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine4:
          '护盾强效提升35%。攻击命中后的8秒内，攻击力提升7%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine5:
          '护盾强效提升40%。攻击命中后的8秒内，攻击力提升8%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
    },
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
    'specialEffectAlways': [
      Stats.ShieldStrength,
    ],
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
    'specialEffectComent': {
      Refine.Refine1:
          '飘游风中的「千年的大乐章」的一部分。攻击力提高16%；普通攻击或重击命中敌人时，角色获得一枚低语之符，每0.3秒内至多触发一次。拥有4枚低语之符时，将消耗所有低语之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·揭旗之歌」效果：普通攻击速度提高12%，攻击力提升20%。触发后20秒内，无法再次获得低语之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
      Refine.Refine2:
          '飘游风中的「千年的大乐章」的一部分。攻击力提高20%；普通攻击或重击命中敌人时，角色获得一枚低语之符，每0.3秒内至多触发一次。拥有4枚低语之符时，将消耗所有低语之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·揭旗之歌」效果：普通攻击速度提高15%，攻击力提升25%。触发后20秒内，无法再次获得低语之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
      Refine.Refine3:
          '飘游风中的「千年的大乐章」的一部分。攻击力提高24%；普通攻击或重击命中敌人时，角色获得一枚低语之符，每0.3秒内至多触发一次。拥有4枚低语之符时，将消耗所有低语之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·揭旗之歌」效果：普通攻击速度提高18%，攻击力提升30%。触发后20秒内，无法再次获得低语之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
      Refine.Refine4:
          '飘游风中的「千年的大乐章」的一部分。攻击力提高28%；普通攻击或重击命中敌人时，角色获得一枚低语之符，每0.3秒内至多触发一次。拥有4枚低语之符时，将消耗所有低语之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·揭旗之歌」效果：普通攻击速度提高21%，攻击力提升35%。触发后20秒内，无法再次获得低语之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
      Refine.Refine5:
          '飘游风中的「千年的大乐章」的一部分。攻击力提高32%；普通攻击或重击命中敌人时，角色获得一枚低语之符，每0.3秒内至多触发一次。拥有4枚低语之符时，将消耗所有低语之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·揭旗之歌」效果：普通攻击速度提高24%，攻击力提升40%。触发后20秒内，无法再次获得低语之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '击败敌人后，攻击力提升12%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine2: '击败敌人后，攻击力提升15%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine3: '击败敌人后，攻击力提升18%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine4: '击败敌人后，攻击力提升21%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine5: '击败敌人后，攻击力提升24%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '获得元素微粒或元素晶球后的5秒内，普通攻击和重击额外造成20%攻击力伤害。',
      Refine.Refine2: '获得元素微粒或元素晶球后的5秒内，普通攻击和重击额外造成25%攻击力伤害。',
      Refine.Refine3: '获得元素微粒或元素晶球后的5秒内，普通攻击和重击额外造成30%攻击力伤害。',
      Refine.Refine4: '获得元素微粒或元素晶球后的5秒内，普通攻击和重击额外造成35%攻击力伤害。',
      Refine.Refine5: '获得元素微粒或元素晶球后的5秒内，普通攻击和重击额外造成40%攻击力伤害。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '身边至少有2个敌人时，获得16%攻击力提升与16%防御力提升；身边的敌人少于2个时，获得24%攻击力提升。',
      Refine.Refine2: '身边至少有2个敌人时，获得20%攻击力提升与20%防御力提升；身边的敌人少于2个时，获得30%攻击力提升。',
      Refine.Refine3: '身边至少有2个敌人时，获得24%攻击力提升与24%防御力提升；身边的敌人少于2个时，获得36%攻击力提升。',
      Refine.Refine4: '身边至少有2个敌人时，获得28%攻击力提升与28%防御力提升；身边的敌人少于2个时，获得42%攻击力提升。',
      Refine.Refine5: '身边至少有2个敌人时，获得32%攻击力提升与32%防御力提升；身边的敌人少于2个时，获得48%攻击力提升。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [
      Stats.AttackBonus,
    ],
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
    'specialEffectComent': {
      Refine.Refine1: '对处于水元素或火元素影响下的敌人，造成的伤害提高20%。',
      Refine.Refine2: '对处于水元素或火元素影响下的敌人，造成的伤害提高24%。',
      Refine.Refine3: '对处于水元素或火元素影响下的敌人，造成的伤害提高28%。',
      Refine.Refine4: '对处于水元素或火元素影响下的敌人，造成的伤害提高32%。',
      Refine.Refine5: '对处于水元素或火元素影响下的敌人，造成的伤害提高36%。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '队伍中每有一位璃月角色，装备该武器的角色便获得7%攻击力提升与3%暴击率提升。至多获得4层提升效果。',
      Refine.Refine2: '队伍中每有一位璃月角色，装备该武器的角色便获得8%攻击力提升与4%暴击率提升。至多获得4层提升效果。',
      Refine.Refine3: '队伍中每有一位璃月角色，装备该武器的角色便获得9%攻击力提升与5%暴击率提升。至多获得4层提升效果。',
      Refine.Refine4: '队伍中每有一位璃月角色，装备该武器的角色便获得10%攻击力提升与6%暴击率提升。至多获得4层提升效果。',
      Refine.Refine5: '队伍中每有一位璃月角色，装备该武器的角色便获得11%攻击力提升与7%暴击率提升。至多获得4层提升效果。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '施放元素战技后，普通攻击和重击造成的伤害提高8%。该效果持续12秒，最多叠加2层。',
      Refine.Refine2: '施放元素战技后，普通攻击和重击造成的伤害提高10%。该效果持续12秒，最多叠加2层。',
      Refine.Refine3: '施放元素战技后，普通攻击和重击造成的伤害提高12%。该效果持续12秒，最多叠加2层。',
      Refine.Refine4: '施放元素战技后，普通攻击和重击造成的伤害提高14%。该效果持续12秒，最多叠加2层。',
      Refine.Refine5: '施放元素战技后，普通攻击和重击造成的伤害提高16%。该效果持续12秒，最多叠加2层。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '攻击造成暴击时，有60%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每12秒只能触发一次。',
      Refine.Refine2: '攻击造成暴击时，有70%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每10.5秒只能触发一次。',
      Refine.Refine3: '攻击造成暴击时，有80%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每9秒只能触发一次。',
      Refine.Refine4: '攻击造成暴击时，有90%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每7.5秒只能触发一次。',
      Refine.Refine5: '攻击造成暴击时，有100%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每6秒只能触发一次。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '攻击造成伤害时，暴击率提升8%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine2: '攻击造成伤害时，暴击率提升10%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine3: '攻击造成伤害时，暴击率提升12%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine4: '攻击造成伤害时，暴击率提升14%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine5: '攻击造成伤害时，暴击率提升16%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
    },
    'specialEffectDamageType': {
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '普通攻击与重击命中敌人时，有60%概率在敌人上方生成恒冰晶核并坠落，造成80%攻击力的范围伤害。若敌人处于冰元素影响下，则造成200%攻击力的伤害。该效果每10秒至多触发一次。',
      Refine.Refine2:
          '普通攻击与重击命中敌人时，有70%概率在敌人上方生成恒冰晶核并坠落，造成95%攻击力的范围伤害。若敌人处于冰元素影响下，则造成240%攻击力的伤害。该效果每10秒至多触发一次。',
      Refine.Refine3:
          '普通攻击与重击命中敌人时，有80%概率在敌人上方生成恒冰晶核并坠落，造成110%攻击力的范围伤害。若敌人处于冰元素影响下，则造成280%攻击力的伤害。该效果每10秒至多触发一次。',
      Refine.Refine4:
          '普通攻击与重击命中敌人时，有90%概率在敌人上方生成恒冰晶核并坠落，造成125%攻击力的范围伤害。若敌人处于冰元素影响下，则造成320%攻击力的伤害。该效果每10秒至多触发一次。',
      Refine.Refine5:
          '普通攻击与重击命中敌人时，有100%概率在敌人上方生成恒冰晶核并坠落，造成140%攻击力的范围伤害。若敌人处于冰元素影响下，则造成360%攻击力的伤害。该效果每10秒至多触发一次。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '元素战技造成的伤害提升6%。元素战技命中后，角色流失3点元素能量，并在此后的6秒内，每2秒恢复3点元素能量。该效果每10秒至多触发一次，角色处于队伍后台也能触发。',
      Refine.Refine2:
          '元素战技造成的伤害提升7.5%。元素战技命中后，角色流失3点元素能量，并在此后的6秒内，每2秒恢复3.5点元素能量。该效果每10秒至多触发一次，角色处于队伍后台也能触发。',
      Refine.Refine3:
          '元素战技造成的伤害提升9%。元素战技命中后，角色流失3点元素能量，并在此后的6秒内，每2秒恢复4点元素能量。该效果每10秒至多触发一次，角色处于队伍后台也能触发。',
      Refine.Refine4:
          '元素战技造成的伤害提升10.5%。元素战技命中后，角色流失3点元素能量，并在此后的6秒内，每2秒恢复4.5点元素能量。该效果每10秒至多触发一次，角色处于队伍后台也能触发。',
      Refine.Refine5:
          '元素战技造成的伤害提升12%。元素战技命中后，角色流失3点元素能量，并在此后的6秒内，每2秒恢复5点元素能量。该效果每10秒至多触发一次，角色处于队伍后台也能触发。',
    },
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillE,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillE,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '元素爆发造成的伤害提升16%，元素爆发的暴击率提升6%。',
      Refine.Refine2: '元素爆发造成的伤害提升20%，元素爆发的暴击率提升7.5%。',
      Refine.Refine3: '元素爆发造成的伤害提升24%，元素爆发的暴击率提升9%。',
      Refine.Refine4: '元素爆发造成的伤害提升28%，元素爆发的暴击率提升10.5%。',
      Refine.Refine5: '元素爆发造成的伤害提升32%，元素爆发的暴击率提升12%。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.12%，通过这种方式，元素爆发造成的伤害至多提高40%。',
      Refine.Refine2:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.15%，通过这种方式，元素爆发造成的伤害至多提高50%。',
      Refine.Refine3:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.18%，通过这种方式，元素爆发造成的伤害至多提高60%。',
      Refine.Refine4:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.21%，通过这种方式，元素爆发造成的伤害至多提高70%。',
      Refine.Refine5:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.24%，通过这种方式，元素爆发造成的伤害至多提高80%。',
    },
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '护盾强效提升20%。攻击命中后的8秒内，攻击力提升4%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine2:
          '护盾强效提升25%。攻击命中后的8秒内，攻击力提升5%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine3:
          '护盾强效提升30%。攻击命中后的8秒内，攻击力提升6%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine4:
          '护盾强效提升35%。攻击命中后的8秒内，攻击力提升7%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine5:
          '护盾强效提升40%。攻击命中后的8秒内，攻击力提升8%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
    },
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
    'specialEffectAlways': [
      Stats.ShieldStrength,
    ],
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
    'specialEffectComent': {
      Refine.Refine1:
          '命中敌人时自身攻击力提高3.2%，持续6秒，最高可以叠加7层。该效果每0.3秒最多触发一次。满层状态时伤害提升12%。',
      Refine.Refine2:
          '命中敌人时自身攻击力提高3.9%，持续6秒，最高可以叠加7层。该效果每0.3秒最多触发一次。满层状态时伤害提升15%。',
      Refine.Refine3:
          '命中敌人时自身攻击力提高4.6%，持续6秒，最高可以叠加7层。该效果每0.3秒最多触发一次。满层状态时伤害提升18%。',
      Refine.Refine4:
          '命中敌人时自身攻击力提高5.3%，持续6秒，最高可以叠加7层。该效果每0.3秒最多触发一次。满层状态时伤害提升21%。',
      Refine.Refine5:
          '命中敌人时自身攻击力提高6%，持续6秒，最高可以叠加7层。该效果每0.3秒最多触发一次。满层状态时伤害提升24%。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '暴击率提升8%，普通攻击速度提升12%。此外，普通攻击与重击命中敌人时，有50%概率触发真空刃，在小范围内造成额外40%攻击力的伤害。该效果每2秒至多触发一次。',
      Refine.Refine2:
          '暴击率提升10%，普通攻击速度提升12%。此外，普通攻击与重击命中敌人时，有50%概率触发真空刃，在小范围内造成额外55%攻击力的伤害。该效果每2秒至多触发一次。',
      Refine.Refine3:
          '暴击率提升12%，普通攻击速度提升12%。此外，普通攻击与重击命中敌人时，有50%概率触发真空刃，在小范围内造成额外70%攻击力的伤害。该效果每2秒至多触发一次。',
      Refine.Refine4:
          '暴击率提升14%，普通攻击速度提升12%。此外，普通攻击与重击命中敌人时，有50%概率触发真空刃，在小范围内造成额外85%攻击力的伤害。该效果每2秒至多触发一次。',
      Refine.Refine5:
          '暴击率提升16%，普通攻击速度提升12%。此外，普通攻击与重击命中敌人时，有50%概率触发真空刃，在小范围内造成额外100%攻击力的伤害。该效果每2秒至多触发一次。',
    },
    'specialEffectDamageType': {
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [
      Stats.CritRate,
    ],
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
    'specialEffectComent': {
      Refine.Refine1:
          '生命值提升20%。此外，基于装备该武器的角色生命值上限的0.8%，获得攻击力加成。当装备该武器的角色生命值低于50%时，进一步获得1%基于生命值上限的攻击力提升。',
      Refine.Refine2:
          '生命值提升25%。此外，基于装备该武器的角色生命值上限的1%，获得攻击力加成。当装备该武器的角色生命值低于50%时，进一步获得1.2%基于生命值上限的攻击力提升。',
      Refine.Refine3:
          '生命值提升30%。此外，基于装备该武器的角色生命值上限的1.2%，获得攻击力加成。当装备该武器的角色生命值低于50%时，进一步获得1.4%基于生命值上限的攻击力提升。',
      Refine.Refine4:
          '生命值提升35%。此外，基于装备该武器的角色生命值上限的1.4%，获得攻击力加成。当装备该武器的角色生命值低于50%时，进一步获得1.6%基于生命值上限的攻击力提升。',
      Refine.Refine5:
          '生命值提升40%。此外，基于装备该武器的角色生命值上限的1.6%，获得攻击力加成。当装备该武器的角色生命值低于50%时，进一步获得1.8%基于生命值上限的攻击力提升。',
    },
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
    'specialEffectAlways': [
      Stats.HpBonus,
    ],
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
    'specialEffectComent': {
      Refine.Refine1:
          '攻击力获得提升，提升程度相当于元素充能效率超出100%部分的28%，至多通过这种方式提升80%。施放元素爆发后的12秒内，元素充能效率提升30%。',
      Refine.Refine2:
          '攻击力获得提升，提升程度相当于元素充能效率超出100%部分的35%，至多通过这种方式提升90%。施放元素爆发后的12秒内，元素充能效率提升35%。',
      Refine.Refine3:
          '攻击力获得提升，提升程度相当于元素充能效率超出100%部分的42%，至多通过这种方式提升100%。施放元素爆发后的12秒内，元素充能效率提升40%。',
      Refine.Refine4:
          '攻击力获得提升，提升程度相当于元素充能效率超出100%部分的49%，至多通过这种方式提升110%。施放元素爆发后的12秒内，元素充能效率提升45%。',
      Refine.Refine5:
          '攻击力获得提升，提升程度相当于元素充能效率超出100%部分的56%，至多通过这种方式提升120%。施放元素爆发后的12秒内，元素充能效率提升50%。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '元素战技与元素爆发的伤害提高24%。',
      Refine.Refine2: '元素战技与元素爆发的伤害提高30%。',
      Refine.Refine3: '元素战技与元素爆发的伤害提高36%。',
      Refine.Refine4: '元素战技与元素爆发的伤害提高42%。',
      Refine.Refine5: '元素战技与元素爆发的伤害提高48%。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '装备该武器的角色处于队伍后台时，每1秒角色造成的伤害提升2%，最多通过这种方式获得20%的伤害提升；在场上超过4秒后，上述伤害提升效果每1秒会流失4%，直到降低至0%。',
      Refine.Refine2:
          '装备该武器的角色处于队伍后台时，每1秒角色造成的伤害提升2.5%，最多通过这种方式获得25%的伤害提升；在场上超过4秒后，上述伤害提升效果每1秒会流失5%，直到降低至0%。',
      Refine.Refine3:
          '装备该武器的角色处于队伍后台时，每1秒角色造成的伤害提升3%，最多通过这种方式获得30%的伤害提升；在场上超过4秒后，上述伤害提升效果每1秒会流失6%，直到降低至0%。',
      Refine.Refine4:
          '装备该武器的角色处于队伍后台时，每1秒角色造成的伤害提升3.5%，最多通过这种方式获得35%的伤害提升；在场上超过4秒后，上述伤害提升效果每1秒会流失7%，直到降低至0%。',
      Refine.Refine5:
          '装备该武器的角色处于队伍后台时，每1秒角色造成的伤害提升4%，最多通过这种方式获得40%的伤害提升；在场上超过4秒后，上述伤害提升效果每1秒会流失8%，直到降低至0%。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '击败敌人后，攻击力提升12%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine2: '击败敌人后，攻击力提升15%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine3: '击败敌人后，攻击力提升18%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine4: '击败敌人后，攻击力提升21%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine5: '击败敌人后，攻击力提升24%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '普通攻击与重击命中时，提升4%攻击力与1.2%普通攻击速度。该效果持续6秒，最多可以叠加4层，每0.3秒只能触发一次。',
      Refine.Refine2:
          '普通攻击与重击命中时，提升5%攻击力与1.5%普通攻击速度。该效果持续6秒，最多可以叠加4层，每0.3秒只能触发一次。',
      Refine.Refine3:
          '普通攻击与重击命中时，提升6%攻击力与1.8%普通攻击速度。该效果持续6秒，最多可以叠加4层，每0.3秒只能触发一次。',
      Refine.Refine4:
          '普通攻击与重击命中时，提升7%攻击力与2.1%普通攻击速度。该效果持续6秒，最多可以叠加4层，每0.3秒只能触发一次。',
      Refine.Refine5:
          '普通攻击与重击命中时，提升8%攻击力与2.4%普通攻击速度。该效果持续6秒，最多可以叠加4层，每0.3秒只能触发一次。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '攻击造成暴击时，有60%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每12秒只能触发一次。',
      Refine.Refine2: '攻击造成暴击时，有70%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每10.5秒只能触发一次。',
      Refine.Refine3: '攻击造成暴击时，有80%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每9秒只能触发一次。',
      Refine.Refine4: '攻击造成暴击时，有90%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每7.5秒只能触发一次。',
      Refine.Refine5: '攻击造成暴击时，有100%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每6秒只能触发一次。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '重击若命中要害，则提升10%移动速度与36%攻击力，持续10秒。',
      Refine.Refine2: '重击若命中要害，则提升10%移动速度与45%攻击力，持续10秒。',
      Refine.Refine3: '重击若命中要害，则提升10%移动速度与54%攻击力，持续10秒。',
      Refine.Refine4: '重击若命中要害，则提升10%移动速度与63%攻击力，持续10秒。',
      Refine.Refine5: '重击若命中要害，则提升10%移动速度与72%攻击力，持续10秒。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '攻击造成伤害时，暴击率提升8%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine2: '攻击造成伤害时，暴击率提升10%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine3: '攻击造成伤害时，暴击率提升12%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine4: '攻击造成伤害时，暴击率提升14%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine5: '攻击造成伤害时，暴击率提升16%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
    },
    'specialEffectDamageType': {
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '普通攻击造成的伤害提升40%，重击造成的伤害下降10%。',
      Refine.Refine2: '普通攻击造成的伤害提升50%，重击造成的伤害下降10%。',
      Refine.Refine3: '普通攻击造成的伤害提升60%，重击造成的伤害下降10%。',
      Refine.Refine4: '普通攻击造成的伤害提升70%，重击造成的伤害下降10%。',
      Refine.Refine5: '普通攻击造成的伤害提升80%，重击造成的伤害下降10%。',
    },
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
      ],
      Stats.PhyDmgBonus: [
        DamageType.Normal,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '元素战技造成伤害时，有40%的概率重置该技能的冷却时间，该效果每30秒只能触发一次。',
      Refine.Refine2: '元素战技造成伤害时，有50%的概率重置该技能的冷却时间，该效果每26秒只能触发一次。',
      Refine.Refine3: '元素战技造成伤害时，有60%的概率重置该技能的冷却时间，该效果每22秒只能触发一次。',
      Refine.Refine4: '元素战技造成伤害时，有70%的概率重置该技能的冷却时间，该效果每19秒只能触发一次。',
      Refine.Refine5: '元素战技造成伤害时，有80%的概率重置该技能的冷却时间，该效果每16秒只能触发一次。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '普通攻击与重击命中时，有50%几率生成一个风之眼，持续吸引周围敌人，并对其中的敌人每0.5秒造成40%攻击的伤害。该效果持续4秒，每14秒至多触发一次。',
      Refine.Refine2:
          '普通攻击与重击命中时，有50%几率生成一个风之眼，持续吸引周围敌人，并对其中的敌人每0.5秒造成50%攻击的伤害。该效果持续4秒，每13秒至多触发一次。',
      Refine.Refine3:
          '普通攻击与重击命中时，有50%几率生成一个风之眼，持续吸引周围敌人，并对其中的敌人每0.5秒造成60%攻击的伤害。该效果持续4秒，每12秒至多触发一次。',
      Refine.Refine4:
          '普通攻击与重击命中时，有50%几率生成一个风之眼，持续吸引周围敌人，并对其中的敌人每0.5秒造成70%攻击的伤害。该效果持续4秒，每11秒至多触发一次。',
      Refine.Refine5:
          '普通攻击与重击命中时，有50%几率生成一个风之眼，持续吸引周围敌人，并对其中的敌人每0.5秒造成80%攻击的伤害。该效果持续4秒，每10秒至多触发一次。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '施放元素战技时，获得风之花的悠古愿望加持，攻击力提升16%，持续6秒。',
      Refine.Refine2: '施放元素战技时，获得风之花的悠古愿望加持，攻击力提升20%，持续6秒。',
      Refine.Refine3: '施放元素战技时，获得风之花的悠古愿望加持，攻击力提升24%，持续6秒。',
      Refine.Refine4: '施放元素战技时，获得风之花的悠古愿望加持，攻击力提升28%，持续6秒。',
      Refine.Refine5: '施放元素战技时，获得风之花的悠古愿望加持，攻击力提升32%，持续6秒。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '普通攻击命中敌人后的5秒内，元素战技造成的伤害提升20%；元素战技命中敌人后的5秒内，普通攻击造成的伤害提升20%。',
      Refine.Refine2:
          '普通攻击命中敌人后的5秒内，元素战技造成的伤害提升25%；元素战技命中敌人后的5秒内，普通攻击造成的伤害提升25%。',
      Refine.Refine3:
          '普通攻击命中敌人后的5秒内，元素战技造成的伤害提升30%；元素战技命中敌人后的5秒内，普通攻击造成的伤害提升30%。',
      Refine.Refine4:
          '普通攻击命中敌人后的5秒内，元素战技造成的伤害提升35%；元素战技命中敌人后的5秒内，普通攻击造成的伤害提升35%。',
      Refine.Refine5:
          '普通攻击命中敌人后的5秒内，元素战技造成的伤害提升40%；元素战技命中敌人后的5秒内，普通攻击造成的伤害提升40%。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '普通攻击造成的伤害提升16%，重击造成的伤害提升12%。当装备该武器的角色元素能量等于100%时，这个效果提升100%。',
      Refine.Refine2:
          '普通攻击造成的伤害提升20%，重击造成的伤害提升15%。当装备该武器的角色元素能量等于100%时，这个效果提升100%。',
      Refine.Refine3:
          '普通攻击造成的伤害提升24%，重击造成的伤害提升18%。当装备该武器的角色元素能量等于100%时，这个效果提升100%。',
      Refine.Refine4:
          '普通攻击造成的伤害提升28%，重击造成的伤害提升21%。当装备该武器的角色元素能量等于100%时，这个效果提升100%。',
      Refine.Refine5:
          '普通攻击造成的伤害提升32%，重击造成的伤害提升24%。当装备该武器的角色元素能量等于100%时，这个效果提升100%。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '仅在以下平台生效：\n"PlayStation Network"\n对敌人造成冰元素伤害后，普通攻击与重击造成的伤害提高10%，该效果持续6秒，至多叠加2次；此外，埃洛伊装备掠食者时，攻击力提升66点。',
      Refine.Refine2: '',
      Refine.Refine3: '',
      Refine.Refine4: '',
      Refine.Refine5: '',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.12%，通过这种方式，元素爆发造成的伤害至多提高40%。',
      Refine.Refine2:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.15%，通过这种方式，元素爆发造成的伤害至多提高50%。',
      Refine.Refine3:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.18%，通过这种方式，元素爆发造成的伤害至多提高60%。',
      Refine.Refine4:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.21%，通过这种方式，元素爆发造成的伤害至多提高70%。',
      Refine.Refine5:
          '队伍中所有角色的元素能量上限的总和，每1点能使装备此武器的角色的元素爆发造成的伤害提高0.24%，通过这种方式，元素爆发造成的伤害至多提高80%。',
    },
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.SkillQ,
      ],
      Stats.PhyDmgBonus: [
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '暴击伤害提高20%；攻击命中时有60%概率造成125%攻击力的小范围物理伤害，该效果每4秒只能触发一次。',
      Refine.Refine2: '暴击伤害提高25%；攻击命中时有70%概率造成125%攻击力的小范围物理伤害，该效果每3.5秒只能触发一次。',
      Refine.Refine3: '暴击伤害提高30%；攻击命中时有80%概率造成125%攻击力的小范围物理伤害，该效果每3秒只能触发一次。',
      Refine.Refine4: '暴击伤害提高35%；攻击命中时有90%概率造成125%攻击力的小范围物理伤害，该效果每2.5秒只能触发一次。',
      Refine.Refine5: '暴击伤害提高40%；攻击命中时有100%概率造成125%攻击力的小范围物理伤害，该效果每2秒只能触发一次。',
    },
    'specialEffectDamageType': {
      Stats.CritDmg: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [
      Stats.CritDmg,
    ],
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
    'specialEffectComent': {
      Refine.Refine1: '普通攻击和重击造成的伤害提升12%;箭矢发射后每经过0.1秒，伤害还会提升8%。至多提升5次。',
      Refine.Refine2: '普通攻击和重击造成的伤害提升15%;箭矢发射后每经过0.1秒，伤害还会提升10%。至多提升5次。',
      Refine.Refine3: '普通攻击和重击造成的伤害提升18%;箭矢发射后每经过0.1秒，伤害还会提升12%。至多提升5次。',
      Refine.Refine4: '普通攻击和重击造成的伤害提升21%;箭矢发射后每经过0.1秒，伤害还会提升14%。至多提升5次。',
      Refine.Refine5: '普通攻击和重击造成的伤害提升24%;箭矢发射后每经过0.1秒，伤害还会提升16%。至多提升5次。',
    },
    'specialEffectDamageType': {
      Stats.CritDmg: [
        DamageType.Normal,
        DamageType.Charged,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '飘游风中的「千年的大乐章」的一部分。元素精通提高60点；元素战技或元素爆发命中敌人时，角色获得一枚追思之符，每0.2秒内至多触发一次，角色处于队伍后台也能触发。拥有4枚追思之符时，将消耗所有追思之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·别离之歌」效果：元素精通提高100点，攻击力提升20%。触发后20秒内，无法再次获得追思之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
      Refine.Refine2:
          '飘游风中的「千年的大乐章」的一部分。元素精通提高75点；元素战技或元素爆发命中敌人时，角色获得一枚追思之符，每0.2秒内至多触发一次，角色处于队伍后台也能触发。拥有4枚追思之符时，将消耗所有追思之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·别离之歌」效果：元素精通提高125点，攻击力提升25%。触发后20秒内，无法再次获得追思之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
      Refine.Refine3:
          '飘游风中的「千年的大乐章」的一部分。元素精通提高90点；元素战技或元素爆发命中敌人时，角色获得一枚追思之符，每0.2秒内至多触发一次，角色处于队伍后台也能触发。拥有4枚追思之符时，将消耗所有追思之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·别离之歌」效果：元素精通提高150点，攻击力提升30%。触发后20秒内，无法再次获得追思之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
      Refine.Refine4:
          '飘游风中的「千年的大乐章」的一部分。元素精通提高105点；元素战技或元素爆发命中敌人时，角色获得一枚追思之符，每0.2秒内至多触发一次，角色处于队伍后台也能触发。拥有4枚追思之符时，将消耗所有追思之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·别离之歌」效果：元素精通提高175点，攻击力提升35%。触发后20秒内，无法再次获得追思之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
      Refine.Refine5:
          '飘游风中的「千年的大乐章」的一部分。元素精通提高120点；元素战技或元素爆发命中敌人时，角色获得一枚追思之符，每0.2秒内至多触发一次，角色处于队伍后台也能触发。拥有4枚追思之符时，将消耗所有追思之符，使附近的队伍中所有角色获得持续12秒的「千年的大乐章·别离之歌」效果：元素精通提高200点，攻击力提升40%。触发后20秒内，无法再次获得追思之符。「千年的大乐章」触发的多种数值效果中，同类数值效果不可叠加。',
    },
    'specialEffectDamageType': {
      Stats.CritDmg: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '攻击力提高20%，并能获得「飞雷之巴印」的威势。飞雷之巴印：持有1/2/3层飞雷之巴印时，普通攻击造成的伤害提高12/24/40%。在下列情况下，角色将各获得1层飞雷之巴印：普通攻击造成伤害时，持续5秒；施放元素战技时，持续10秒；此外，角色元素能量低于100%时，将获得1层飞雷之巴印，此飞雷之巴印会在角色的元素能量充满时消失。每层飞雷之巴印的持续时间独立计算。',
      Refine.Refine2:
          '攻击力提高25%，并能获得「飞雷之巴印」的威势。飞雷之巴印：持有1/2/3层飞雷之巴印时，普通攻击造成的伤害提高15/30/50%。在下列情况下，角色将各获得1层飞雷之巴印：普通攻击造成伤害时，持续5秒；施放元素战技时，持续10秒；此外，角色元素能量低于100%时，将获得1层飞雷之巴印，此飞雷之巴印会在角色的元素能量充满时消失。每层飞雷之巴印的持续时间独立计算。',
      Refine.Refine3:
          '攻击力提高30%，并能获得「飞雷之巴印」的威势。飞雷之巴印：持有1/2/3层飞雷之巴印时，普通攻击造成的伤害提高18/36/60%。在下列情况下，角色将各获得1层飞雷之巴印：普通攻击造成伤害时，持续5秒；施放元素战技时，持续10秒；此外，角色元素能量低于100%时，将获得1层飞雷之巴印，此飞雷之巴印会在角色的元素能量充满时消失。每层飞雷之巴印的持续时间独立计算。',
      Refine.Refine4:
          '攻击力提高35%，并能获得「飞雷之巴印」的威势。飞雷之巴印：持有1/2/3层飞雷之巴印时，普通攻击造成的伤害提高21/42/70%。在下列情况下，角色将各获得1层飞雷之巴印：普通攻击造成伤害时，持续5秒；施放元素战技时，持续10秒；此外，角色元素能量低于100%时，将获得1层飞雷之巴印，此飞雷之巴印会在角色的元素能量充满时消失。每层飞雷之巴印的持续时间独立计算。',
      Refine.Refine5:
          '攻击力提高40%，并能获得「飞雷之巴印」的威势。飞雷之巴印：持有1/2/3层飞雷之巴印时，普通攻击造成的伤害提高24/48/80%。在下列情况下，角色将各获得1层飞雷之巴印：普通攻击造成伤害时，持续5秒；施放元素战技时，持续10秒；此外，角色元素能量低于100%时，将获得1层飞雷之巴印，此飞雷之巴印会在角色的元素能量充满时消失。每层飞雷之巴印的持续时间独立计算。',
    },
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
    'specialEffectAlways': [
      Stats.AttackBonus,
    ],
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
    'specialEffectComent': {
      Refine.Refine1:
          '元素战技和元素爆发造成的伤害提高12%；普通攻击、重击、元素战技或元素爆发命中敌人后，将产生1层持续12秒的「白夜极星」效果。处于1/2/3/4层「白夜极星」效果下时，攻击力将提高10/20/30/48%。由普通攻击、重击、元素战技或元素爆发产生的「白夜极星」将分别独立存在。',
      Refine.Refine2:
          '元素战技和元素爆发造成的伤害提高15%；普通攻击、重击、元素战技或元素爆发命中敌人后，将产生1层持续12秒的「白夜极星」效果。处于1/2/3/4层「白夜极星」效果下时，攻击力将提高12.5/25/37.5/60%。由普通攻击、重击、元素战技或元素爆发产生的「白夜极星」将分别独立存在。',
      Refine.Refine3:
          '元素战技和元素爆发造成的伤害提高18%；普通攻击、重击、元素战技或元素爆发命中敌人后，将产生1层持续12秒的「白夜极星」效果。处于1/2/3/4层「白夜极星」效果下时，攻击力将提高15/30/45/72%。由普通攻击、重击、元素战技或元素爆发产生的「白夜极星」将分别独立存在。',
      Refine.Refine4:
          '元素战技和元素爆发造成的伤害提高21%；普通攻击、重击、元素战技或元素爆发命中敌人后，将产生1层持续12秒的「白夜极星」效果。处于1/2/3/4层「白夜极星」效果下时，攻击力将提高17.5/35/52.5/84%。由普通攻击、重击、元素战技或元素爆发产生的「白夜极星」将分别独立存在。',
      Refine.Refine5:
          '元素战技和元素爆发造成的伤害提高24%；普通攻击、重击、元素战技或元素爆发命中敌人后，将产生1层持续12秒的「白夜极星」效果。处于1/2/3/4层「白夜极星」效果下时，攻击力将提高20/40/60/96%。由普通攻击、重击、元素战技或元素爆发产生的「白夜极星」将分别独立存在。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '击败敌人后，攻击力提升12%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine2: '击败敌人后，攻击力提升15%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine3: '击败敌人后，攻击力提升18%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine4: '击败敌人后，攻击力提升21%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
      Refine.Refine5: '击败敌人后，攻击力提升24%，持续30秒。该效果至多叠加3层，每层持续时间独立。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '攻击造成暴击时，有60%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每12秒只能触发一次。',
      Refine.Refine2: '攻击造成暴击时，有70%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每10.5秒只能触发一次。',
      Refine.Refine3: '攻击造成暴击时，有80%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每9秒只能触发一次。',
      Refine.Refine4: '攻击造成暴击时，有90%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每7.5秒只能触发一次。',
      Refine.Refine5: '攻击造成暴击时，有100%的几率产生少量元素微粒，能为角色恢复6点元素能量。该效果每6秒只能触发一次。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '触发元素反应后的10秒内，获得8%元素伤害加成，该效果最多可以叠加2层。',
      Refine.Refine2: '触发元素反应后的10秒内，获得10%元素伤害加成，该效果最多可以叠加2层。',
      Refine.Refine3: '触发元素反应后的10秒内，获得12%元素伤害加成，该效果最多可以叠加2层。',
      Refine.Refine4: '触发元素反应后的10秒内，获得14%元素伤害加成，该效果最多可以叠加2层。',
      Refine.Refine5: '触发元素反应后的10秒内，获得16%元素伤害加成，该效果最多可以叠加2层。',
    },
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '施放元素爆发后6秒内，每2秒恢复4点元素能量，队伍中的所有角色每2秒恢复4%生命值。',
      Refine.Refine2: '施放元素爆发后6秒内，每2秒恢复4.5点元素能量，队伍中的所有角色每2秒恢复4.5%生命值。',
      Refine.Refine3: '施放元素爆发后6秒内，每2秒恢复5点元素能量，队伍中的所有角色每2秒恢复5%生命值。',
      Refine.Refine4: '施放元素爆发后6秒内，每2秒恢复5.5点元素能量，队伍中的所有角色每2秒恢复5.5%生命值。',
      Refine.Refine5: '施放元素爆发后6秒内，每2秒恢复6点元素能量，队伍中的所有角色每2秒恢复6%生命值。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '攻击造成伤害时，暴击率提升8%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine2: '攻击造成伤害时，暴击率提升10%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine3: '攻击造成伤害时，暴击率提升12%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine4: '攻击造成伤害时，暴击率提升14%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
      Refine.Refine5: '攻击造成伤害时，暴击率提升16%，最多堆叠5次。攻击造成暴击后，移除已有的专注效果。',
    },
    'specialEffectDamageType': {
      Stats.CritRate: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '元素战技造成伤害时，有40%的概率重置该技能的冷却时间，该效果每30秒只能触发一次。',
      Refine.Refine2: '元素战技造成伤害时，有50%的概率重置该技能的冷却时间，该效果每26秒只能触发一次。',
      Refine.Refine3: '元素战技造成伤害时，有60%的概率重置该技能的冷却时间，该效果每22秒只能触发一次。',
      Refine.Refine4: '元素战技造成伤害时，有70%的概率重置该技能的冷却时间，该效果每19秒只能触发一次。',
      Refine.Refine5: '元素战技造成伤害时，有80%的概率重置该技能的冷却时间，该效果每16秒只能触发一次。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '普通攻击命中后的6秒内，元素战技与元素爆发的伤害提高20%；元素战技与元素爆发命中后的6秒内，普通攻击的伤害提高20%。',
      Refine.Refine2:
          '普通攻击命中后的6秒内，元素战技与元素爆发的伤害提高25%；元素战技与元素爆发命中后的6秒内，普通攻击的伤害提高25%。',
      Refine.Refine3:
          '普通攻击命中后的6秒内，元素战技与元素爆发的伤害提高30%；元素战技与元素爆发命中后的6秒内，普通攻击的伤害提高30%。',
      Refine.Refine4:
          '普通攻击命中后的6秒内，元素战技与元素爆发的伤害提高35%；元素战技与元素爆发命中后的6秒内，普通攻击的伤害提高35%。',
      Refine.Refine5:
          '普通攻击命中后的6秒内，元素战技与元素爆发的伤害提高40%；元素战技与元素爆发命中后的6秒内，普通攻击的伤害提高40%。',
    },
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
    'specialEffectAlways': [],
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
      Refine.Refine1: {
        Stats.Attack: 60.0,
        Stats.DmgBonus: 48.0,
        Stats.Mastery: 240.0,
      },
      Refine.Refine2: {
        Stats.Attack: 75.0,
        Stats.DmgBonus: 60.0,
        Stats.Mastery: 300.0,
      },
      Refine.Refine3: {
        Stats.Attack: 90.0,
        Stats.DmgBonus: 72.0,
        Stats.Mastery: 360.0,
      },
      Refine.Refine4: {
        Stats.Attack: 105.0,
        Stats.DmgBonus: 84.0,
        Stats.Mastery: 420.0,
      },
      Refine.Refine5: {
        Stats.Attack: 120.0,
        Stats.DmgBonus: 96.0,
        Stats.Mastery: 480.0,
      },
    },
    'specialEffectComent': {
      Refine.Refine1:
          '角色登场时，随机获得一个主题曲，持续10秒。每30秒只能触发一次。宣叙调：攻击力提升60%；咏叹调：全元素伤害提升48%;间奏曲：元素精通提升240。',
      Refine.Refine2:
          '角色登场时，随机获得一个主题曲，持续10秒。每30秒只能触发一次。宣叙调：攻击力提升75%；咏叹调：全元素伤害提升60%;间奏曲：元素精通提升300。',
      Refine.Refine3:
          '角色登场时，随机获得一个主题曲，持续10秒。每30秒只能触发一次。宣叙调：攻击力提升90%；咏叹调：全元素伤害提升72%;间奏曲：元素精通提升360。',
      Refine.Refine4:
          '角色登场时，随机获得一个主题曲，持续10秒。每30秒只能触发一次。宣叙调：攻击力提升105%；咏叹调：全元素伤害提升84%;间奏曲：元素精通提升420。',
      Refine.Refine5:
          '角色登场时，随机获得一个主题曲，持续10秒。每30秒只能触发一次。宣叙调：攻击力提升120%；咏叹调：全元素伤害提升96%;间奏曲：元素精通提升480。',
    },
    'specialEffectDamageType': {
      Stats.Attack: [
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
      Stats.Mastery: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '普通攻击命中敌人后，冲刺或替代冲刺的能力消耗的体力降低14%，持续5秒。此外，使用冲刺或替代冲刺的能力后，攻击力提升20%，持续5秒。',
      Refine.Refine2:
          '普通攻击命中敌人后，冲刺或替代冲刺的能力消耗的体力降低16%，持续5秒。此外，使用冲刺或替代冲刺的能力后，攻击力提升25%，持续5秒。',
      Refine.Refine3:
          '普通攻击命中敌人后，冲刺或替代冲刺的能力消耗的体力降低18%，持续5秒。此外，使用冲刺或替代冲刺的能力后，攻击力提升30%，持续5秒。',
      Refine.Refine4:
          '普通攻击命中敌人后，冲刺或替代冲刺的能力消耗的体力降低20%，持续5秒。此外，使用冲刺或替代冲刺的能力后，攻击力提升35%，持续5秒。',
      Refine.Refine5:
          '普通攻击命中敌人后，冲刺或替代冲刺的能力消耗的体力降低22%，持续5秒。此外，使用冲刺或替代冲刺的能力后，攻击力提升40%，持续5秒。',
    },
    'specialEffectDamageType': {
      Stats.AttackBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '普通攻击与重击命中时，有50%几率发射一枚昭心法球，造成240%攻击力伤害，至多在敌人之间弹射四次。该效果每12秒至多触发一次。',
      Refine.Refine2:
          '普通攻击与重击命中时，有50%几率发射一枚昭心法球，造成270%攻击力伤害，至多在敌人之间弹射四次。该效果每11秒至多触发一次。',
      Refine.Refine3:
          '普通攻击与重击命中时，有50%几率发射一枚昭心法球，造成300%攻击力伤害，至多在敌人之间弹射四次。该效果每10秒至多触发一次。',
      Refine.Refine4:
          '普通攻击与重击命中时，有50%几率发射一枚昭心法球，造成330%攻击力伤害，至多在敌人之间弹射四次。该效果每9秒至多触发一次。',
      Refine.Refine5:
          '普通攻击与重击命中时，有50%几率发射一枚昭心法球，造成360%攻击力伤害，至多在敌人之间弹射四次。该效果每8秒至多触发一次。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '普通攻击与重击命中敌人时，有60%概率在敌人上方生成恒冰晶核并坠落，造成80%攻击力的范围伤害。若敌人处于冰元素影响下，则造成200%攻击力的伤害。该效果每10秒至多触发一次。',
      Refine.Refine2:
          '普通攻击与重击命中敌人时，有70%概率在敌人上方生成恒冰晶核并坠落，造成95%攻击力的范围伤害。若敌人处于冰元素影响下，则造成240%攻击力的伤害。该效果每10秒至多触发一次。',
      Refine.Refine3:
          '普通攻击与重击命中敌人时，有80%概率在敌人上方生成恒冰晶核并坠落，造成110%攻击力的范围伤害。若敌人处于冰元素影响下，则造成280%攻击力的伤害。该效果每10秒至多触发一次。',
      Refine.Refine4:
          '普通攻击与重击命中敌人时，有90%概率在敌人上方生成恒冰晶核并坠落，造成125%攻击力的范围伤害。若敌人处于冰元素影响下，则造成320%攻击力的伤害。该效果每10秒至多触发一次。',
      Refine.Refine5:
          '普通攻击与重击命中敌人时，有100%概率在敌人上方生成恒冰晶核并坠落，造成140%攻击力的范围伤害。若敌人处于冰元素影响下，则造成360%攻击力的伤害。该效果每10秒至多触发一次。',
    },
    'specialEffectDamageType': {},
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '普通攻击命中敌人后的6秒内，重击造成的伤害提升16%；重击命中敌人后的6秒内，攻击力提升8%。',
      Refine.Refine2: '普通攻击命中敌人后的6秒内，重击造成的伤害提升20%；重击命中敌人后的6秒内，攻击力提升10%。',
      Refine.Refine3: '普通攻击命中敌人后的6秒内，重击造成的伤害提升24%；重击命中敌人后的6秒内，攻击力提升12%。',
      Refine.Refine4: '普通攻击命中敌人后的6秒内，重击造成的伤害提升28%；重击命中敌人后的6秒内，攻击力提升14%。',
      Refine.Refine5: '普通攻击命中敌人后的6秒内，重击造成的伤害提升32%；重击命中敌人后的6秒内，攻击力提升16%。',
    },
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
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '装备该武器的角色触发雷元素相关反应后，队伍中附近的与该元素反应相关的元素类型的角色，获得10%对应元素的元素伤害加成，持续6秒。通过这种方式，角色获得的元素伤害加成无法叠加。',
      Refine.Refine2:
          '装备该武器的角色触发雷元素相关反应后，队伍中附近的与该元素反应相关的元素类型的角色，获得12.5%对应元素的元素伤害加成，持续6秒。通过这种方式，角色获得的元素伤害加成无法叠加。',
      Refine.Refine3:
          '装备该武器的角色触发雷元素相关反应后，队伍中附近的与该元素反应相关的元素类型的角色，获得15%对应元素的元素伤害加成，持续6秒。通过这种方式，角色获得的元素伤害加成无法叠加。',
      Refine.Refine4:
          '装备该武器的角色触发雷元素相关反应后，队伍中附近的与该元素反应相关的元素类型的角色，获得17.5%对应元素的元素伤害加成，持续6秒。通过这种方式，角色获得的元素伤害加成无法叠加。',
      Refine.Refine5:
          '装备该武器的角色触发雷元素相关反应后，队伍中附近的与该元素反应相关的元素类型的角色，获得20%对应元素的元素伤害加成，持续6秒。通过这种方式，角色获得的元素伤害加成无法叠加。',
    },
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '移动速度提高10%；在场上每4秒获得8%元素伤害加成。该效果最多叠加4层，持续直到角色倒下或离场。',
      Refine.Refine2: '移动速度提高10%；在场上每4秒获得10%元素伤害加成。该效果最多叠加4层，持续直到角色倒下或离场。',
      Refine.Refine3: '移动速度提高10%；在场上每4秒获得12%元素伤害加成。该效果最多叠加4层，持续直到角色倒下或离场。',
      Refine.Refine4: '移动速度提高10%；在场上每4秒获得14%元素伤害加成。该效果最多叠加4层，持续直到角色倒下或离场。',
      Refine.Refine5: '移动速度提高10%；在场上每4秒获得16%元素伤害加成。该效果最多叠加4层，持续直到角色倒下或离场。',
    },
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1:
          '元素伤害加成提升12%；普通攻击命中时，有50%的概率获得高天流云的青睐，在15秒内主动攻击附近的敌人，造成等同于160%攻击力的伤害。该效果每30秒只能触发一次。',
      Refine.Refine2:
          '元素伤害加成提升15%；普通攻击命中时，有50%的概率获得高天流云的青睐，在15秒内主动攻击附近的敌人，造成等同于200%攻击力的伤害。该效果每30秒只能触发一次。',
      Refine.Refine3:
          '元素伤害加成提升18%；普通攻击命中时，有50%的概率获得高天流云的青睐，在15秒内主动攻击附近的敌人，造成等同于240%攻击力的伤害。该效果每30秒只能触发一次。',
      Refine.Refine4:
          '元素伤害加成提升21%；普通攻击命中时，有50%的概率获得高天流云的青睐，在15秒内主动攻击附近的敌人，造成等同于280%攻击力的伤害。该效果每30秒只能触发一次。',
      Refine.Refine5:
          '元素伤害加成提升24%；普通攻击命中时，有50%的概率获得高天流云的青睐，在15秒内主动攻击附近的敌人，造成等同于320%攻击力的伤害。该效果每30秒只能触发一次。',
    },
    'specialEffectDamageType': {
      Stats.DmgBonus: [
        DamageType.Normal,
        DamageType.Charged,
        DamageType.Plunging,
        DamageType.SkillE,
        DamageType.SkillQ,
      ],
    },
    'specialEffectAlways': [
      Stats.DmgBonus,
    ],
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
    'specialEffectComent': {
      Refine.Refine1:
          '护盾强效提升20%。攻击命中后的8秒内，攻击力提升4%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine2:
          '护盾强效提升25%。攻击命中后的8秒内，攻击力提升5%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine3:
          '护盾强效提升30%。攻击命中后的8秒内，攻击力提升6%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine4:
          '护盾强效提升35%。攻击命中后的8秒内，攻击力提升7%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
      Refine.Refine5:
          '护盾强效提升40%。攻击命中后的8秒内，攻击力提升8%。该效果至多可叠加5层，每0.3秒只能触发一次。此外，处于护盾庇护下时，该效果的攻击力提升效果提高100%。',
    },
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
    'specialEffectAlways': [
      Stats.ShieldStrength,
    ],
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
    'specialEffectComent': {
      Refine.Refine1:
          '治疗加成提升10%；普通攻击造成的伤害增加，增加值为装备该武器的角色生命值上限的1%。在施放元素爆发后的12秒内，普通攻击命中敌人时恢复0.6点元素能量，每0.1秒至多通过这种方式恢复一次元素能量。',
      Refine.Refine2:
          '治疗加成提升12.5%；普通攻击造成的伤害增加，增加值为装备该武器的角色生命值上限的1.5%。在施放元素爆发后的12秒内，普通攻击命中敌人时恢复0.6点元素能量，每0.1秒至多通过这种方式恢复一次元素能量。',
      Refine.Refine3:
          '治疗加成提升15%；普通攻击造成的伤害增加，增加值为装备该武器的角色生命值上限的2%。在施放元素爆发后的12秒内，普通攻击命中敌人时恢复0.6点元素能量，每0.1秒至多通过这种方式恢复一次元素能量。',
      Refine.Refine4:
          '治疗加成提升17.5%；普通攻击造成的伤害增加，增加值为装备该武器的角色生命值上限的2.5%。在施放元素爆发后的12秒内，普通攻击命中敌人时恢复0.6点元素能量，每0.1秒至多通过这种方式恢复一次元素能量。',
      Refine.Refine5:
          '治疗加成提升20%；普通攻击造成的伤害增加，增加值为装备该武器的角色生命值上限的3%。在施放元素爆发后的12秒内，普通攻击命中敌人时恢复0.6点元素能量，每0.1秒至多通过这种方式恢复一次元素能量。',
    },
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
    'specialEffectAlways': [
      Stats.HealingBonus,
    ],
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
    'specialEffectComent': {
      Refine.Refine1:
          '元素战技造成的伤害值提高，提高数值相当于防御力的40%。该效果每1.5秒最多触发一次，并将在元素战技造成伤害后的0.1秒后清除效果。',
      Refine.Refine2:
          '元素战技造成的伤害值提高，提高数值相当于防御力的50%。该效果每1.5秒最多触发一次，并将在元素战技造成伤害后的0.1秒后清除效果。',
      Refine.Refine3:
          '元素战技造成的伤害值提高，提高数值相当于防御力的60%。该效果每1.5秒最多触发一次，并将在元素战技造成伤害后的0.1秒后清除效果。',
      Refine.Refine4:
          '元素战技造成的伤害值提高，提高数值相当于防御力的70%。该效果每1.5秒最多触发一次，并将在元素战技造成伤害后的0.1秒后清除效果。',
      Refine.Refine5:
          '元素战技造成的伤害值提高，提高数值相当于防御力的80%。该效果每1.5秒最多触发一次，并将在元素战技造成伤害后的0.1秒后清除效果。',
    },
    'specialEffectDamageType': {
      Stats.ExtraDmageByDefend: [
        DamageType.SkillE,
      ],
    },
    'specialEffectAlways': [],
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
    'specialEffectComent': {
      Refine.Refine1: '防御力提高28%；普通攻击与重击造成的伤害值提高，提高数值相当于防御力的40%。',
      Refine.Refine2: '防御力提高35%；普通攻击与重击造成的伤害值提高，提高数值相当于防御力的50%。',
      Refine.Refine3: '防御力提高42%；普通攻击与重击造成的伤害值提高，提高数值相当于防御力的60%。',
      Refine.Refine4: '防御力提高49%；普通攻击与重击造成的伤害值提高，提高数值相当于防御力的70%。',
      Refine.Refine5: '防御力提高56%；普通攻击与重击造成的伤害值提高，提高数值相当于防御力的80%。',
    },
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
    'specialEffectAlways': [
      Stats.DefendBonus,
    ],
  },
];
