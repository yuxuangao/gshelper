import 'data.dart';

const ARTIFACT = [
  {
    'name': '染血的骑士道',
    'artifact_id': 1,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '造成的物理伤害提高25%。',
        'effect': {
          Stats.PhyDmgBonus: 25.0,
        },
        'damageType': {
          Stats.PhyDmgBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.PhyDmgBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '击败敌人后的10秒内，施放重击时不消耗体力，且重击造成的伤害提升50%。',
        'effect': {
          Stats.DmgBonus: 50.0,
          Stats.PhyDmgBonus: 50.0,
        },
        'damageType': {
          Stats.PhyDmgBonus: [
            DamageType.Charged,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '角斗士的终幕礼',
    'artifact_id': 2,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '攻击力提高18%。',
        'effect': {
          Stats.AttackBonus: 18.0,
        },
        'damageType': {
          Stats.AttackBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.AttackBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '装备该圣遗物套装的角色为单手剑、双手剑、长柄武器角色时，角色普通攻击造成的伤害提高35%。',
        'effect': {
          Stats.DmgBonus: 35.0,
          Stats.PhyDmgBonus: 35.0,
        },
        'damageType': {
          Stats.PhyDmgBonus: [
            DamageType.Normal,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '流浪大地的乐团',
    'artifact_id': 3,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '元素精通提高80点。',
        'effect': {
          Stats.Mastery: 80.0,
        },
        'damageType': {
          Stats.Mastery: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.Mastery,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '装备该圣遗物套装的角色为法器、弓箭角色时，角色重击造成的伤害提高35%。',
        'effect': {
          Stats.DmgBonus: 35.0,
          Stats.PhyDmgBonus: 35.0,
        },
        'damageType': {
          Stats.PhyDmgBonus: [
            DamageType.Charged,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '苍白之火',
    'artifact_id': 4,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '造成的物理伤害提高25%。',
        'effect': {
          Stats.PhyDmgBonus: 25.0,
        },
        'damageType': {
          Stats.PhyDmgBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.PhyDmgBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '元素战技命中敌人后，攻击力提升9%。该效果持续7秒，至多叠加2层，每0.3秒至多触发一次。叠满2层时，2件套的效果提升100%。',
        'effect': {
          Stats.AttackBonus: 18.0,
          Stats.PhyDmgBonus: 25.0,
        },
        'damageType': {
          Stats.AttackBonus: [
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
        'effectAlways': [],
      },
    },
  },
  {
    'name': '如雷的盛怒',
    'artifact_id': 5,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '获得15%雷元素伤害加成。',
        'effect': {
          Stats.DmgBonus: 15.0,
        },
        'damageType': {
          Stats.DmgBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.DmgBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '超载、感电、超导反应造成的伤害提升40%。触发这些元素反应时，元素战技冷却时间减少1秒。该效果每0.8秒最多触发一次。',
        'effect': {},
        'damageType': {},
        'effectAlways': [],
      },
    },
  },
  {
    'name': '翠绿之影',
    'artifact_id': 6,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '获得15%风元素伤害加成。',
        'effect': {
          Stats.DmgBonus: 15.0,
        },
        'damageType': {
          Stats.DmgBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.DmgBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '扩散反应造成的伤害提升60%。根据扩散的元素类型，降低受到影响的敌人40%的对应元素抗性，持续10秒。',
        'effect': {
          Stats.ResistanceDecrease: 40.0,
        },
        'damageType': {
          Stats.ResistanceDecrease: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '悠古的磐岩',
    'artifact_id': 7,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '获得15%岩元素伤害加成。',
        'effect': {
          Stats.DmgBonus: 15.0,
        },
        'damageType': {
          Stats.DmgBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.DmgBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '获得结晶反应形成的晶片时，队伍中所有角色获得35%对应元素伤害加成，持续10秒。同时只能通过该效果获得一种元素伤害加成。',
        'effect': {
          Stats.DmgBonus: 35.0,
        },
        'damageType': {
          Stats.DmgBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '炽烈的炎之魔女',
    'artifact_id': 8,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '获得15%火元素伤害加成。',
        'effect': {
          Stats.DmgBonus: 15.0,
        },
        'damageType': {
          Stats.DmgBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.DmgBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '超载、燃烧反应造成的伤害提升40%，蒸发、融化反应的加成系数提高15%。施放元素战技后的10秒内，2件套的效果提高50%，该效果最多叠加3次。',
        'effect': {
          Stats.VaporizeBonus: 15.0,
          Stats.MeltBonus: 15.0,
          Stats.DmgBonus: 22.5,
        },
        'damageType': {
          Stats.VaporizeBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
          Stats.MeltBonus: [
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
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '昔日宗室之仪',
    'artifact_id': 9,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '元素爆发造成的伤害提升20%。',
        'effect': {
          Stats.DmgBonus: 20.0,
          Stats.PhyDmgBonus: 20.0,
        },
        'damageType': {
          Stats.DmgBonus: [
            DamageType.SkillQ,
          ],
          Stats.PhyDmgBonus: [
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [],
      },
      ArtifactSetType.Set4: {
        'description': '施放元素爆发后，队伍中所有角色攻击力提升20%，持续12秒。该效果不可叠加。',
        'effect': {
          Stats.AttackBonus: 20.0,
        },
        'damageType': {
          Stats.AttackBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '冰风迷途的勇士',
    'artifact_id': 10,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '获得15%冰元素伤害加成。',
        'effect': {
          Stats.DmgBonus: 15.0,
        },
        'damageType': {
          Stats.DmgBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.DmgBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '攻击处于冰元素影响下的敌人时，暴击率提高20%；若敌人处于冻结状态下，则暴击率额外提高20%。',
        'effect': {
          Stats.CritRate: 40.0,
        },
        'damageType': {
          Stats.CritRate: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '沉沦之心',
    'artifact_id': 11,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '获得15%水元素伤害加成。',
        'effect': {
          Stats.DmgBonus: 15.0,
        },
        'damageType': {
          Stats.DmgBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.DmgBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '施放元素战技后的15秒内，普通攻击与重击造成的伤害提高30%。',
        'effect': {
          Stats.DmgBonus: 30.0,
          Stats.PhyDmgBonus: 30.0,
        },
        'damageType': {
          Stats.DmgBonus: [
            DamageType.Normal,
            DamageType.Charged,
          ],
          Stats.PhyDmgBonus: [
            DamageType.Normal,
            DamageType.Charged,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '追忆之注连',
    'artifact_id': 12,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '攻击力提高18%。',
        'effect': {
          Stats.AttackBonus: 18.0,
        },
        'damageType': {
          Stats.AttackBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.AttackBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '施放元素战技时，如果角色的元素能量高于或等于15点，则会流失15点元素能量，使接下来的10秒内，普通攻击、重击、下落攻击造成的伤害提高50%，持续期间内该效果不会再次触发。',
        'effect': {
          Stats.DmgBonus: 50.0,
          Stats.PhyDmgBonus: 50.0,
        },
        'damageType': {
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
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '逆飞的流星',
    'artifact_id': 13,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '护盾强效提高35%。',
        'effect': {
          Stats.ShieldStrength: 35.0,
        },
        'damageType': {
          Stats.ShieldStrength: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.ShieldStrength,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '处于护盾庇护下时，额外获得40%普通攻击和重击伤害加成。',
        'effect': {
          Stats.DmgBonus: 40.0,
          Stats.PhyDmgBonus: 40.0,
        },
        'damageType': {
          Stats.DmgBonus: [
            DamageType.Normal,
            DamageType.Charged,
          ],
          Stats.PhyDmgBonus: [
            DamageType.Normal,
            DamageType.Charged,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '平息鸣雷的尊者',
    'artifact_id': 14,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '雷元素抗性提高40%。',
        'effect': {
          Stats.Resistance: 40.0,
        },
        'damageType': {
          Stats.Resistance: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [],
      },
      ArtifactSetType.Set4: {
        'description': '对处于雷元素影响下的敌人造成的伤害提升35%。',
        'effect': {
          Stats.DmgBonus: 35.0,
          Stats.PhyDmgBonus: 35.0,
        },
        'damageType': {
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
        'effectAlways': [],
      },
    },
  },
  {
    'name': '渡过烈火的贤人',
    'artifact_id': 15,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '火元素抗性提高40%。',
        'effect': {
          Stats.Resistance: 40.0,
        },
        'damageType': {
          Stats.Resistance: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [],
      },
      ArtifactSetType.Set4: {
        'description': '对处于火元素影响下的敌人造成的伤害提升35%。',
        'effect': {
          Stats.DmgBonus: 35.0,
          Stats.PhyDmgBonus: 35.0,
        },
        'damageType': {
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
        'effectAlways': [],
      },
    },
  },
  {
    'name': '被怜爱的少女',
    'artifact_id': 16,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '角色造成的治疗效果提升15%。',
        'effect': {
          Stats.HealingBonus: 15.0,
        },
        'damageType': {
          Stats.HealingBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [],
      },
      ArtifactSetType.Set4: {
        'description': '施放元素战技或元素爆发后的10秒内，队伍中所有角色受治疗效果加成提高20%。',
        'effect': {},
        'damageType': {},
        'effectAlways': [],
      },
    },
  },
  {
    'name': '千岩牢固',
    'artifact_id': 17,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '生命值提升20%。',
        'effect': {
          Stats.HpBonus: 15.0,
        },
        'damageType': {
          Stats.HpBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.HpBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '元素战技命中敌人后，使队伍中附近的所有角色攻击力提升20%，护盾强效提升30%，持续3秒。该效果每0.5秒至多触发一次。装备此圣遗物套装的角色处于队伍后台时，依然能触发该效果。',
        'effect': {
          Stats.AttackBonus: 20.0,
          Stats.ShieldStrength: 30.0,
        },
        'damageType': {
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
        'effectAlways': [],
      },
    },
  },
  {
    'name': '华馆梦醒形骸记',
    'artifact_id': 18,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '防御力提高30%。',
        'effect': {
          Stats.DefendBonus: 30.0,
        },
        'damageType': {
          Stats.DefendBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.DefendBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '装备此圣遗物套装的角色在以下情况下，将获得「问答」效果：在场上用岩元素攻击命中敌人后获得一层，每0.3秒至多触发一次；在队伍后台中，每3秒获得一层。问答至多叠加4层，每层能提供6%防御力与6%岩元素伤害加成。每6秒，若未获得问答效果，将损失一层。',
        'effect': {
          Stats.DefendBonus: 24.0,
          Stats.DmgBonus: 24.0,
        },
        'damageType': {
          Stats.DefendBonus: [
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
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '海染砗磲',
    'artifact_id': 19,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '治疗加成提高15%。',
        'effect': {
          Stats.HealingBonus: 30.0,
        },
        'damageType': {
          Stats.HealingBonus: [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
        'effectAlways': [
          Stats.HealingBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description':
            '装备此圣遗物套装的角色对队伍中的角色进行治疗时，将产生持续3秒的海染泡沫，记录治疗的生命值回复量（包括溢出值）。持续时间结束时，海染泡沫将会爆炸，对周围的敌人造成90%累计回复量的伤害（该伤害结算方式同感电、超导等元素反应，但不受元素精通、等级或反应伤害加成效果影响）。每3.5秒至多产生一个海染泡沫；海染泡沫至多记录30000点回复量，含溢出部分的治疗量；自己的队伍中同时至多存在一个海染泡沫。装备此圣遗物套装的角色处于队伍后台时，依然能触发该效果。',
        'effect': {},
        'damageType': {},
        'effectAlways': [],
      },
    },
  },
];
