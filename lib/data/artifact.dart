import 'data.dart';

const ARTIFACT = [
  {
    'name': '染血的骑士道',
    'piece_name': {
      ArtifactPosition.Flower: '染血的铁之心',
      ArtifactPosition.Plume: '染血的黑之羽',
      ArtifactPosition.Sands: '骑士染血之时',
      ArtifactPosition.Goblet: '染血骑士之杯',
      ArtifactPosition.Circlet: '染血的铁假面',
    },
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
            DamageType.All,
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
    'piece_name': {
      ArtifactPosition.Flower: '角斗士的留恋',
      ArtifactPosition.Plume: '角斗士的归宿',
      ArtifactPosition.Sands: '角斗士的希冀',
      ArtifactPosition.Goblet: '角斗士的酣醉',
      ArtifactPosition.Circlet: '角斗士的凯旋',
    },
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
            DamageType.All,
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
    'piece_name': {
      ArtifactPosition.Flower: '乐团的晨光',
      ArtifactPosition.Plume: '琴师的箭羽',
      ArtifactPosition.Sands: '终幕的时计',
      ArtifactPosition.Goblet: '吟游者之壶',
      ArtifactPosition.Circlet: '指挥的礼帽',
    },
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
            DamageType.All,
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
    'piece_name': {
      ArtifactPosition.Flower: '无垢之花',
      ArtifactPosition.Plume: '贤医之羽',
      ArtifactPosition.Sands: '停摆之刻',
      ArtifactPosition.Goblet: '超越之盏',
      ArtifactPosition.Circlet: '嗤笑之面',
    },
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
            DamageType.All,
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
            DamageType.All,
          ],
          Stats.PhyDmgBonus: [
            DamageType.All,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '如雷的盛怒',
    'piece_name': {
      ArtifactPosition.Flower: '雷鸟的怜悯',
      ArtifactPosition.Plume: '雷灾的孑遗',
      ArtifactPosition.Sands: '雷霆的时计',
      ArtifactPosition.Goblet: '降雷的凶兆',
      ArtifactPosition.Circlet: '唤雷的头冠',
    },
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
            DamageType.All,
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
    'piece_name': {
      ArtifactPosition.Flower: '野花记忆的绿野',
      ArtifactPosition.Plume: '猎人青翠的箭羽',
      ArtifactPosition.Sands: '翠绿猎人的笃定',
      ArtifactPosition.Goblet: '翠绿猎人的容器',
      ArtifactPosition.Circlet: '翠绿的猎人之冠',
    },
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
            DamageType.All,
          ],
        },
        'effectAlways': [
          Stats.DmgBonus,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '扩散反应造成的伤害提升60%。根据扩散的元素类型，降低受到影响的敌人40%的对应元素抗性，持续10秒。',
        'effect': {
          Stats.ResistanceDecreaseElement: 40.0,
        },
        'damageType': {
          Stats.ResistanceDecreaseElement: [
            DamageType.All,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '悠古的磐岩',
    'piece_name': {
      ArtifactPosition.Flower: '磐陀裂生之花',
      ArtifactPosition.Plume: '嵯峨群峰之翼',
      ArtifactPosition.Sands: '星罗圭璧之晷',
      ArtifactPosition.Goblet: '巉岩琢塑之樽',
      ArtifactPosition.Circlet: '不动玄石之相',
    },
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
            DamageType.All,
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
            DamageType.All,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '炽烈的炎之魔女',
    'piece_name': {
      ArtifactPosition.Flower: '魔女的炎之花',
      ArtifactPosition.Plume: '魔女常燃之羽',
      ArtifactPosition.Sands: '魔女破灭之时',
      ArtifactPosition.Goblet: '魔女的心之火',
      ArtifactPosition.Circlet: '焦灼的魔女帽',
    },
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
            DamageType.All,
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
            DamageType.All,
          ],
          Stats.MeltBonus: [
            DamageType.All,
          ],
          Stats.DmgBonus: [
            DamageType.All,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '昔日宗室之仪',
    'piece_name': {
      ArtifactPosition.Flower: '宗室之花',
      ArtifactPosition.Plume: '宗室之翎',
      ArtifactPosition.Sands: '宗室时计',
      ArtifactPosition.Goblet: '宗室银瓮',
      ArtifactPosition.Circlet: '宗室面具',
    },
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
            DamageType.SkillQSpecial,
          ],
          Stats.PhyDmgBonus: [
            DamageType.SkillQ,
            DamageType.SkillQSpecial,
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
            DamageType.All,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '冰风迷途的勇士',
    'piece_name': {
      ArtifactPosition.Flower: '历经风雪的思念',
      ArtifactPosition.Plume: '摧冰而行的执望',
      ArtifactPosition.Sands: '冰雪故园的终期',
      ArtifactPosition.Goblet: '遍结寒霜的傲骨',
      ArtifactPosition.Circlet: '破冰踏雪的回音',
    },
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
            DamageType.All,
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
            DamageType.All,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '沉沦之心',
    'piece_name': {
      ArtifactPosition.Flower: '饰金胸花',
      ArtifactPosition.Plume: '追忆之风',
      ArtifactPosition.Sands: '坚铜罗盘',
      ArtifactPosition.Goblet: '沉波之盏',
      ArtifactPosition.Circlet: '酒渍船帽',
    },
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
            DamageType.All,
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
    'piece_name': {
      ArtifactPosition.Flower: '羁缠之花',
      ArtifactPosition.Plume: '思忆之矢',
      ArtifactPosition.Sands: '朝露之时',
      ArtifactPosition.Goblet: '祈望之心',
      ArtifactPosition.Circlet: '无常之面',
    },
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
            DamageType.All,
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
    'piece_name': {
      ArtifactPosition.Flower: '夏祭之花',
      ArtifactPosition.Plume: '夏祭终末',
      ArtifactPosition.Sands: '夏祭之刻',
      ArtifactPosition.Goblet: '夏祭水玉',
      ArtifactPosition.Circlet: '夏祭之面',
    },
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
            DamageType.All,
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
    'piece_name': {
      ArtifactPosition.Flower: '平雷之心',
      ArtifactPosition.Plume: '平雷之羽',
      ArtifactPosition.Sands: '平雷之刻',
      ArtifactPosition.Goblet: '平雷之器',
      ArtifactPosition.Circlet: '平雷之冠',
    },
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
            DamageType.All,
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
            DamageType.All,
          ],
          Stats.PhyDmgBonus: [
            DamageType.All,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '渡过烈火的贤人',
    'piece_name': {
      ArtifactPosition.Flower: '渡火者的决绝',
      ArtifactPosition.Plume: '渡火者的解脱',
      ArtifactPosition.Sands: '渡火者的煎熬',
      ArtifactPosition.Goblet: '渡火者的醒悟',
      ArtifactPosition.Circlet: '渡火者的智慧',
    },
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
            DamageType.All,
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
            DamageType.All,
          ],
          Stats.PhyDmgBonus: [
            DamageType.All,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '被怜爱的少女',
    'piece_name': {
      ArtifactPosition.Flower: '远方的少女之心',
      ArtifactPosition.Plume: '少女飘摇的思念',
      ArtifactPosition.Sands: '少女苦短的良辰',
      ArtifactPosition.Goblet: '少女片刻的闲暇',
      ArtifactPosition.Circlet: '少女易逝的芳颜',
    },
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
            DamageType.All,
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
    'piece_name': {
      ArtifactPosition.Flower: '勋绩之花',
      ArtifactPosition.Plume: '昭武翎羽',
      ArtifactPosition.Sands: '金铜时晷',
      ArtifactPosition.Goblet: '盟誓金爵',
      ArtifactPosition.Circlet: '将帅兜鍪',
    },
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
            DamageType.All,
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
            DamageType.All,
          ],
          Stats.ShieldStrength: [
            DamageType.All,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '绝缘之旗印',
    'piece_name': {
      ArtifactPosition.Flower: '明威之镡',
      ArtifactPosition.Plume: '切落之羽',
      ArtifactPosition.Sands: '雷云之笼',
      ArtifactPosition.Goblet: '绯花之壶',
      ArtifactPosition.Circlet: '华饰之兜',
    },
    'artifact_id': 18,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '元素充能效率提高20%。',
        'effect': {
          Stats.Recharge: 20.0,
        },
        'damageType': {
          Stats.Recharge: [
            DamageType.All,
          ],
        },
        'effectAlways': [
          Stats.Recharge,
        ],
      },
      ArtifactSetType.Set4: {
        'description': '基于元素充能效率的25%，提高元素爆发造成的伤害。至多通过这种方式获得75%提升。',
        'effect': {
          Stats.DmgBonusByRecharge: 25.0,
        },
        'damageType': {
          Stats.DmgBonusByRecharge: [
            DamageType.SkillQ,
            DamageType.SkillQSpecial,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '华馆梦醒形骸记',
    'piece_name': {
      ArtifactPosition.Flower: '荣花之期',
      ArtifactPosition.Plume: '华馆之羽',
      ArtifactPosition.Sands: '众生之谣',
      ArtifactPosition.Goblet: '梦醒之瓢',
      ArtifactPosition.Circlet: '形骸之笠',
    },
    'artifact_id': 19,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '防御力提高30%。',
        'effect': {
          Stats.DefendBonus: 30.0,
        },
        'damageType': {
          Stats.DefendBonus: [
            DamageType.All,
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
            DamageType.All,
          ],
          Stats.DmgBonus: [
            DamageType.All,
          ],
        },
        'effectAlways': [],
      },
    },
  },
  {
    'name': '海染砗磲',
    'piece_name': {
      ArtifactPosition.Flower: '海染之花',
      ArtifactPosition.Plume: '渊宫之羽',
      ArtifactPosition.Sands: '离别之贝',
      ArtifactPosition.Goblet: '真珠之笼',
      ArtifactPosition.Circlet: '海祇之冠',
    },
    'artifact_id': 20,
    'rarity': Rarity.Star5,
    'setEffect': {
      ArtifactSetType.Set2: {
        'description': '治疗加成提高15%。',
        'effect': {
          Stats.HealingBonus: 15.0,
        },
        'damageType': {
          Stats.HealingBonus: [
            DamageType.All,
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
