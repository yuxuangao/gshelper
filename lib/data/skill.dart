import 'data.dart';

const SKILLS = {
  1: {
    SkillType.Passive: [
      {
        'name': '恒风随行',
        'description': '队伍中自己的角色滑翔消耗的体力降低20%。\n无法与效果完全相同的固有天赋叠加。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '绪风之拥',
        'description': '长按高天之歌后，会产生上升气流，持续20秒。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '暴风之眼',
        'description': '风神之诗效果结束后，会为温迪恢复15点元素能量；\n若产生了元素转化，则同样为队伍中所有对应元素的角色恢复15点元素能量。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·神代射术',
      'description': '普通攻击\n进行至多六段的连续弓箭射击。\n重击\n进行伤害更高、更为精准的瞄准射击。\n瞄准时，眷顾天地的风会在箭矢上持续积聚。聚满了风之力的箭矢会造成风元素伤害。\n下落攻击\n从空中射出箭雨，并迅速下坠冲击地面，在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [20.38, 22.04, 23.7, 26.07, 27.73, 29.63, 32.23, 34.84, 37.45, 40.29, 43.55, 47.38, 51.21, 55.05, 59.23],
              'extra': {},
            },
            {
              'value': [20.38, 22.04, 23.7, 26.07, 27.73, 29.63, 32.23, 34.84, 37.45, 40.29, 43.55, 47.38, 51.21, 55.05, 59.23],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [44.38, 47.99, 51.6, 56.76, 60.37, 64.5, 70.18, 75.85, 81.53, 87.72, 94.82, 103.16, 111.5, 119.85, 128.95],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [52.37, 56.64, 60.9, 66.99, 71.25, 76.13, 82.82, 89.52, 96.22, 103.53, 111.9, 121.75, 131.6, 141.45, 152.19],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [26.06, 28.18, 30.3, 33.33, 35.45, 37.87, 41.21, 44.54, 47.87, 51.51, 55.68, 60.58, 65.48, 70.37, 75.72],
              'extra': {},
            },
            {
              'value': [26.06, 28.18, 30.3, 33.33, 35.45, 37.87, 41.21, 44.54, 47.87, 51.51, 55.68, 60.58, 65.48, 70.37, 75.72],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [50.65, 54.78, 58.9, 64.79, 68.91, 73.63, 80.1, 86.58, 93.06, 100.13, 108.23, 117.75, 127.28, 136.8, 147.19],
              'extra': {},
            },
          ],
        },
        {
          'name': '六段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [70.95, 76.73, 82.5, 90.75, 96.53, 103.13, 112.2, 121.28, 130.35, 140.25, 151.59, 164.93, 178.27, 191.61, 206.17],
              'extra': {},
            },
          ],
        },
        {
          'name': '瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 93.71, 101.96, 110.21, 118.45, 127.45],
              'extra': {},
            },
          ],
        },
        {
          'name': '满蓄力瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [124.0, 133.3, 142.6, 155.0, 164.3, 173.6, 186.0, 198.4, 210.8, 223.2, 236.1, 252.96, 269.82, 286.69, 303.55],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'othrt': [],
    },
    SkillType.SkillE: {
      'name': '高天之歌',
      'description':
          '呼唤与诗和乐协鸣的风，将在尘泥中行走的事物送上高空吧。\n点按\n在敌人所在的位置唤出风域，造成风元素范围伤害，并击飞其中的敌人。\n长按\n以自身为中心，唤出更大的风域，造成风元素范围伤害，并击飞其中的敌人。\n长按施放后，温迪会乘风飞到空中。n被高天之歌击飞的敌人，在短时间内会缓慢坠落。',
      'buff': [],
      'hit': [
        {
          'name': '点按伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [276.0, 296.7, 317.4, 345.0, 365.7, 386.4, 414.0, 441.6, 469.2, 496.8, 524.4, 552.0, 586.5, 621.0, 655.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '长按伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [380.0, 408.5, 437.0, 475.0, 503.5, 532.0, 570.0, 608.0, 646.0, 684.0, 722.0, 760.0, 807.5, 855.0, 902.5],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '点按冷却时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '长按冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '风神之诗',
      'description': '射出千风汇聚而成的箭矢，在前方造出巨大的暴风之眼，将敌人卷入，持续造成风元素伤害。\n元素转化\n若暴风之眼在技能持续期间接触了水元素/火元素/冰元素/雷元素，则会获得对应元素属性，额外造成该元素的附加伤害。n元素转化在技能持续期间仅会发生一次。',
      'buff': [],
      'hit': [
        {
          'name': '持续伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [37.6, 40.42, 43.24, 47.0, 49.82, 52.64, 56.4, 60.16, 63.92, 67.68, 71.44, 75.2, 79.9, 84.6, 89.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '附加元素伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [18.8, 20.21, 21.62, 23.5, 24.91, 26.32, 28.2, 30.08, 31.96, 33.84, 35.72, 37.6, 39.95, 42.3, 44.65],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  2: {
    SkillType.Passive: [
      {
        'name': '引领之风',
        'description': '完美烹饪恢复类食物时，有12%概率获得2倍产出。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '顺风而行',
        'description': '琴的普通攻击命中时，有50%的几率为队伍中所有角色恢复等同于琴攻击力15%的生命值。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '听凭风引',
        'description': '使用蒲公英之风后，恢复20%元素能量。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·西风剑术',
      'description': '普通攻击\n进行至多五段的连续剑击。\n重击\n消耗一定体力，进行饱含风之力的挑击。\n被挑飞的敌人，在短时间内会缓慢坠落。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [48.33, 52.27, 56.2, 61.82, 65.75, 70.25, 76.43, 82.61, 88.8, 95.54, 103.27, 112.36, 121.44, 130.53, 140.44],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [45.58, 49.29, 53.0, 58.3, 62.01, 66.25, 72.08, 77.91, 83.74, 90.1, 97.39, 105.96, 114.53, 123.1, 132.45],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [60.29, 65.19, 70.1, 77.11, 82.02, 87.63, 95.34, 103.05, 110.76, 119.17, 128.81, 140.14, 151.48, 162.81, 175.18],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [65.88, 71.24, 76.6, 84.26, 89.62, 95.75, 104.18, 112.6, 121.03, 130.22, 140.75, 153.14, 165.52, 177.91, 191.42],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [79.21, 85.65, 92.1, 101.31, 107.76, 115.13, 125.26, 135.39, 145.52, 156.57, 169.23, 184.13, 199.02, 213.91, 230.16],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 93.71, 101.96, 110.21, 118.45, 127.45],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '风压剑',
      'description': '将无形的风之力汇聚在剑上，释放微型的风暴，将敌人向瞄准的方向击飞，造成大量风元素伤害。\n长按\n以持续消耗体力为代价，令旋风将周围的敌人与物体牵引至面前。可以调整方向。期间无法移动。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [292.0, 313.9, 335.8, 365.0, 386.9, 408.8, 438.0, 467.2, 496.4, 525.6, 554.8, 584.0, 620.5, 657.0, 693.5],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '体力消耗',
          'value': ['20/秒', '20/秒', '20/秒', '20/秒', '20/秒', '20/秒', '20/秒', '20/秒', '20/秒', '20/秒', '20/秒', '20/秒', '20/秒', '20/秒', '20/秒'],
        },
        {
          'name': '最大持续时间',
          'value': ['5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒'],
        },
        {
          'name': '冷却时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '蒲公英之风',
      'description': '呼唤风的护佑，创造千风涌动的蒲公英领域，击退周围的敌人并造成风元素伤害。\n同时，为队伍中的所有角色瞬间恢复大量生命值，回复量受益于琴的攻击力。',
      'buff': [],
      'hit': [
        {
          'name': '爆发伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [424.8, 456.66, 488.52, 531.0, 562.86, 594.72, 637.2, 679.68, 722.16, 764.64, 807.12, 849.6, 902.7, 955.8, 1008.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '出入领域伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [78.4, 84.28, 90.16, 98.0, 103.88, 109.76, 117.6, 125.44, 133.28, 141.12, 148.96, 156.8, 166.6, 176.4, 186.2],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '领域发动治疗量',
          'value': [
            '251.2%攻击力+1540',
            '270.04%攻击力+1694',
            '288.88%攻击力+1861',
            '314%攻击力+2041',
            '332.84%攻击力+2234',
            '351.68%攻击力+2439',
            '376.8%攻击力+2657',
            '401.92%攻击力+2888',
            '427.04%攻击力+3132',
            '452.16%攻击力+3389',
            '477.28%攻击力+3659',
            '502.4%攻击力+3941',
            '533.8%攻击力+4236',
            '565.2%攻击力+4544',
            '596.6%攻击力+4865'
          ],
        },
        {
          'name': '持续治疗',
          'value': [
            '25.12%攻击力+154',
            '27%攻击力+169',
            '28.89%攻击力+186',
            '31.4%攻击力+204',
            '33.28%攻击力+223',
            '35.17%攻击力+244',
            '37.68%攻击力+266',
            '40.19%攻击力+289',
            '42.7%攻击力+313',
            '45.22%攻击力+339',
            '47.73%攻击力+366',
            '50.24%攻击力+394',
            '53.38%攻击力+424',
            '56.52%攻击力+454',
            '59.66%攻击力+487'
          ],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  3: {
    SkillType.Passive: [
      {
        'name': '神通·空中自在法',
        'description': '队伍中自己的角色攀爬消耗的体力降低20%。\n无法与效果完全相同的固有天赋叠加。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '降魔·平妖大圣',
        'description': '在靖妖傩舞状态下，魈造成的所有伤害提高5%。此后，在技能持续时间内，每经过3秒，造成的伤害再额外提高5%。\n至多获得25%伤害加成。',
        'buff': [
          {
            'stat': Stats.DmgBonus,
            'value': 25.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '坏劫·国土碾尘',
        'description': '施放风轮两立会使之后7秒内的风轮两立造成的伤害提高15%。\n该效果持续7秒，最多叠加3次，叠加时刷新持续时间。',
        'buff': [
          {
            'stat': Stats.DmgBonus,
            'value': 15.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.SkillE,
            ],
          },
          {
            'stat': Stats.DmgBonus,
            'value': 15.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.SkillE,
            ],
          },
          {
            'stat': Stats.DmgBonus,
            'value': 15.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.SkillE,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·卷积微尘',
      'description': '普通攻击\n进行至多六段的连续枪击。\n重击\n消耗一定体力，进行上挑攻击。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。\n魈进行下落攻击时，不会承受坠落伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [27.54, 29.42, 31.3, 33.8, 35.68, 37.87, 40.69, 43.51, 46.32, 49.14, 51.96, 54.78, 57.59, 60.41, 63.23],
              'extra': {},
            },
            {
              'value': [27.54, 29.42, 31.3, 33.8, 35.68, 37.87, 40.69, 43.51, 46.32, 49.14, 51.96, 54.78, 57.59, 60.41, 63.23],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [56.94, 60.82, 64.7, 69.88, 73.76, 78.29, 84.11, 89.93, 95.76, 101.58, 107.4, 113.23, 119.05, 124.87, 130.69],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [68.55, 73.23, 77.9, 84.13, 88.81, 94.26, 101.27, 108.28, 115.29, 122.3, 129.31, 136.33, 143.34, 150.35, 157.36],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [37.66, 40.23, 42.8, 46.22, 48.79, 51.79, 55.64, 59.49, 63.34, 67.2, 71.05, 74.9, 78.75, 82.6, 86.46],
              'extra': {},
            },
            {
              'value': [37.66, 40.23, 42.8, 46.22, 48.79, 51.79, 55.64, 59.49, 63.34, 67.2, 71.05, 74.9, 78.75, 82.6, 86.46],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [71.54, 76.42, 81.3, 87.8, 92.68, 98.37, 105.69, 113.01, 120.32, 127.64, 134.96, 142.28, 149.59, 156.91, 164.23],
              'extra': {},
            },
          ],
        },
        {
          'name': '六段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [95.83, 102.37, 108.9, 117.61, 124.15, 131.77, 141.57, 151.37, 161.17, 170.97, 180.77, 190.58, 200.38, 210.18, 219.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [121.09, 129.34, 137.6, 148.61, 156.86, 166.5, 178.88, 191.26, 203.65, 216.03, 228.42, 240.8, 253.18, 265.57, 277.95],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [81.83, 88.49, 95.16, 104.67, 111.33, 118.94, 129.41, 139.88, 150.35, 161.76, 173.18, 184.6, 196.02, 207.44, 218.86],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [163.63, 176.95, 190.27, 209.3, 222.62, 237.84, 258.77, 279.7, 300.63, 323.46, 346.29, 369.12, 391.96, 414.79, 437.62],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [204.39, 221.02, 237.66, 261.42, 278.06, 297.07, 323.21, 349.36, 375.5, 404.02, 432.54, 461.06, 489.57, 518.09, 546.61],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '风轮两立',
      'description': '疾速突进，对路径上的敌人造成风元素伤害。\n可以在空中施放。\n初始拥有2次可使用次数。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [252.8, 271.76, 290.72, 316.0, 334.96, 353.92, 379.2, 404.48, 429.76, 455.04, 480.32, 505.6, 537.2, 568.8, 600.4],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '靖妖傩舞',
      'description': '展现数千年前令神魔精妖睹之胆颤的夜叉傩面。\n夜叉傩面\n• 大幅提升魈的跳跃能力；\n• 提高攻击范围与攻击伤害；\n• 将攻击伤害转为风元素伤害，该元素转化无法被附魔覆盖。\n在这个状态下，魈会持续损失生命值。\n效果将在魈退场时解除。',
      'buff': [
        {
          'name': '伤害提升',
          'stat': Stats.EleDmgBonus,
          'value': [58.45, 61.95, 65.45, 70.0, 73.5, 77.0, 81.55, 86.1, 90.65, 95.2, 99.75, 104.3, 108.85, 113.4, 117.95],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
      'other': [
        {
          'name': '生命流失',
          'value': [
            '3%当前生命值/秒',
            '3%当前生命值/秒',
            '3%当前生命值/秒',
            '2.5%当前生命值/秒',
            '2.5%当前生命值/秒',
            '2.5%当前生命值/秒',
            '2%当前生命值/秒',
            '2%当前生命值/秒',
            '2%当前生命值/秒',
            '2%当前生命值/秒',
            '2%当前生命值/秒',
            '2%当前生命值/秒',
            '2%当前生命值/秒',
            '2%当前生命值/秒',
            '2%当前生命值/秒'
          ],
        },
        {
          'name': '持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒'],
        },
      ],
      'energy': 70,
    },
  },
  4: {
    SkillType.Passive: [
      {
        'name': '裂空之风',
        'description': '普通攻击的最后一击会打出一道风刃，对沿途敌人造成60%攻击力的风元素伤害。',
        'buff': [],
        'hit': [
          {
            'name': '风元素伤害',
            'damageType': DamageType.Normal,
            'elementType': SkillElementType.Element,
            'value': [
              {
                'value': 60.0,
                'extra': {},
              },
            ],
          },
        ],
      },
      {
        'name': '复苏之风',
        'description': '用风涡剑打败敌人后的5秒内，每秒恢复2%生命值。\n该效果每5秒只能触发一次。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·异邦铁风',
      'description': '普通攻击\n进行至多五段的连续剑击。\n重击\n消耗一定体力，瞬间向前方挥出两剑。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [44.46, 48.08, 51.7, 56.87, 60.49, 64.63, 70.31, 76.0, 81.69, 87.89, 94.09, 100.3, 106.5, 112.71, 118.91],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.43, 46.97, 50.5, 55.55, 59.09, 63.13, 68.68, 74.23, 79.79, 85.85, 91.91, 97.97, 104.03, 110.09, 116.15],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [52.98, 57.29, 61.6, 67.76, 72.07, 77.0, 83.78, 90.55, 97.33, 104.72, 112.11, 119.5, 126.9, 134.29, 141.68],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [58.31, 63.05, 67.8, 74.58, 79.33, 84.75, 92.21, 99.67, 107.12, 115.26, 123.4, 131.53, 139.67, 147.8, 155.94],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [70.78, 76.54, 82.3, 90.53, 96.29, 102.88, 111.93, 120.98, 130.03, 139.91, 149.79, 159.66, 169.54, 179.41, 189.29],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [55.9, 60.45, 65.0, 71.5, 76.05, 81.25, 88.4, 95.55, 102.7, 110.5, 118.3, 126.1, 133.9, 141.7, 149.5],
              'extra': {},
            },
            {
              'value': [72.24, 78.12, 84.0, 92.4, 98.28, 105.0, 114.24, 123.48, 132.72, 142.8, 152.88, 162.96, 173.04, 183.12, 193.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '风涡剑',
      'description':
          '紧握风的力量，在掌中汇聚真空涡流，对前方的敌人持续造成风元素伤害。\n技能结束时真空涡流会炸裂，造成范围更大、威力更强的风元素伤害。\n长按\n伤害与影响范围会逐渐提升。\n元素转化\n若真空涡流在技能持续期间接触了水元素/火元素/冰元素/雷元素，则会获得对应元素属性，额外造成该元素的附加伤害。\n元素转化在技能持续期间仅会发生一次。',
      'buff': [],
      'hit': [
        {
          'name': '初始切割伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [12.0, 12.9, 13.8, 15.0, 15.9, 16.8, 18.0, 19.2, 20.4, 21.6, 22.8, 24.0, 25.5, 27.0, 28.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '最大切割伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [16.8, 18.06, 19.32, 21.0, 22.26, 23.52, 25.2, 26.88, 28.56, 30.24, 31.92, 33.6, 35.7, 37.8, 39.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '初始爆风伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [176.0, 189.2, 202.4, 220.0, 233.2, 246.4, 264.0, 281.6, 299.2, 316.8, 334.4, 352.0, 374.0, 396.0, 418.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '最大爆风伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [192.0, 206.4, 220.8, 240.0, 254.4, 268.8, 288.0, 307.2, 326.4, 345.6, 364.8, 384.0, 408.0, 432.0, 456.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '基础冷却时间',
          'value': ['5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒'],
        },
        {
          'name': '最大蓄力冷却时间',
          'value': ['8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '风息激荡',
      'description': '导引风行进的路途，唤出持续前进的龙卷风，将沿途的物体与敌人卷入，持续造成风元素伤害。\n元素转化\n若龙卷风在技能持续期间接触了水元素/火元素/冰元素/雷元素，则会获得对应元素属性，额外造成该元素附加伤害。\n这种转化在技能持续期间仅会发生一次。',
      'buff': [],
      'hit': [
        {
          'name': '龙卷风伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [80.8, 86.86, 92.92, 101.0, 107.06, 113.12, 121.2, 129.28, 137.36, 145.44, 153.52, 161.6, 171.7, 181.8, 191.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '附加元素伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [24.8, 26.66, 28.52, 31.0, 32.86, 34.72, 37.2, 39.68, 42.16, 44.64, 47.12, 49.6, 52.7, 55.8, 58.9],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  5: {
    SkillType.Passive: [
      {
        'name': '不稳定发现',
        'description': '合成角色与武器培养素材时，有10%概率获得2倍产出。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '触媒置换术',
        'description': '砂糖触发扩散反应时，使队伍中所有对应元素类型的角色（不包括砂糖自己）元素精通提升50，持续8秒。',
        'buff': [
          {
            'stat': Stats.Mastery,
            'value': 50.0,
            'buffType': BuffType.BuffForTeamWithoutMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '小小的慧风',
        'description': '风灵作成 • 陆叁零捌或禁 • 风灵作成 • 柒伍同构贰型命中敌人时，基于砂糖元素精通的20%，为队伍中所有角色（不包括砂糖自己）提供元素精通加成，持续8秒。',
        'buff': [
          {
            'stat': Stats.MasteryByMastery,
            'value': 20.0,
            'buffType': BuffType.BuffForTeamWithoutMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·简式风灵作成',
      'description': '普通攻击\n进行至多四段的风灵攻击，造成风元素伤害。\n重击\n消耗一定体力，短暂咏唱后，造成风元素范围伤害。\n下落攻击\n凝聚风灵的力量，从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成风元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [33.46, 35.97, 38.48, 41.83, 44.34, 46.85, 50.2, 53.54, 56.89, 60.24, 63.58, 66.93, 71.11, 75.29, 79.48],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [30.62, 32.91, 35.21, 38.27, 40.57, 42.86, 45.92, 48.99, 52.05, 55.11, 58.17, 61.23, 65.06, 68.89, 72.71],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [38.45, 41.33, 44.22, 48.06, 50.94, 53.83, 57.67, 61.52, 65.36, 69.21, 73.05, 76.9, 81.7, 86.51, 91.31],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [47.92, 51.51, 55.11, 59.9, 63.49, 67.08, 71.88, 76.67, 81.46, 86.25, 91.04, 95.84, 101.82, 107.81, 113.8],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [120.16, 129.17, 138.18, 150.2, 159.21, 168.22, 180.24, 192.26, 204.27, 216.29, 228.3, 240.32, 255.34, 270.36, 285.38],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '风灵作成·陆叁零捌',
      'description': '召唤出小型风灵，将敌人与物体牵引至风灵所在位置，击飞范围内的敌人，并造成风元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [211.2, 227.04, 242.88, 264.0, 279.84, 295.68, 316.8, 337.92, 359.04, 380.16, 401.28, 422.4, 448.8, 475.2, 501.6],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '禁·风灵作成·柒伍同构贰型',
      'description':
          '砂糖抛出不稳定的烧瓶，生成大型风灵。\n存在期间，大型风灵会持续牵引附近的敌人与物体，击飞附近的敌人，并造成风元素伤害。\n元素转化\n若风灵在技能持续期间接触了水元素/火元素/冰元素/雷元素，则会获得对应元素属性，额外造成该元素的附加伤害。\n元素转化在技能持续期间仅会发生一次。',
      'buff': [],
      'hit': [
        {
          'name': '持续伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [148.0, 159.1, 170.2, 185.0, 196.1, 207.2, 222.0, 236.8, 251.6, 266.4, 281.2, 296.0, 314.5, 333.0, 351.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '附加元素伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [44.0, 47.3, 50.6, 55.0, 58.3, 61.6, 66.0, 70.4, 74.8, 79.2, 83.6, 88.0, 93.5, 99.0, 104.5],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  6: {
    SkillType.Passive: [
      {
        'name': '松风霞立',
        'description': '队伍中自己的角色冲刺消耗的体力降低20%。\n无法与效果完全相同的固有天赋叠加。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '相闻之剑法',
        'description': '千早振在施放时，如果接触了水元素/火元素/冰元素/雷元素，则会使这次千早振的下落攻击 • 乱岚拨止，发生元素转化，将附加200%攻击力的对应元素伤害，该伤害视为下落攻击伤害。每次千早振的技能效果中，元素转化仅会发生一次。',
        'buff': [],
        'hit': [
          {
            'name': '元素转化伤害',
            'damageType': DamageType.Plunging,
            'elementType': SkillElementType.Element,
            'value': [
              {
                'value': 200.0,
                'extra': {},
              },
            ],
          },
        ],
      },
      {
        'name': '风物之诗咏',
        'description': '枫原万叶触发扩散反应后，枫原万叶的每点元素精通，会为队伍中所有角色提供0.04%对应元素伤害加成，持续8秒。通过这种方式获得的不同元素伤害加成可以共存。',
        'buff': [
          {
            'stat': Stats.DmgBonusByMastery,
            'value': 0.04,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·我流剑术',
      'description':
          '普通攻击\n进行至多五段的连续剑击。\n重击\n消耗一定体力，瞬间向前方挥出两剑。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。若这次下落攻击经由千早振施放，则会转为施放下落攻击 • 乱岚拨止。\n下落攻击 • 乱岚拨止\n通过元素战技 • 千早振施放的下落攻击，造成的伤害将转化为风元素伤害，并在落地时施展秘剑产生小型的风穴，牵引附近的物体与敌人。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [44.98, 48.64, 52.3, 57.53, 61.19, 65.38, 71.13, 76.88, 82.63, 88.91, 96.1, 104.56, 113.02, 121.47, 130.7],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [45.24, 48.92, 52.6, 57.86, 61.54, 65.75, 71.54, 77.32, 83.11, 89.42, 96.65, 105.16, 113.66, 122.17, 131.45],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [25.8, 27.9, 30.0, 33.0, 35.1, 37.5, 40.8, 44.1, 47.4, 51.0, 55.13, 59.98, 64.83, 69.68, 74.97],
              'extra': {},
            },
            {
              'value': [30.96, 33.48, 36.0, 39.6, 42.12, 45.0, 48.96, 52.92, 56.88, 61.2, 66.15, 71.97, 77.79, 83.61, 89.96],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [60.72, 65.66, 70.6, 77.66, 82.6, 88.25, 96.02, 103.78, 111.55, 120.02, 129.73, 141.14, 152.56, 163.98, 176.43],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [25.37, 27.44, 29.5, 32.45, 34.52, 36.88, 40.12, 43.37, 46.61, 50.15, 54.21, 58.98, 63.75, 68.52, 73.72],
              'extra': {},
            },
            {
              'value': [25.37, 27.44, 29.5, 32.45, 34.52, 36.88, 40.12, 43.37, 46.61, 50.15, 54.21, 58.98, 63.75, 68.52, 73.72],
              'extra': {},
            },
            {
              'value': [25.37, 27.44, 29.5, 32.45, 34.52, 36.88, 40.12, 43.37, 46.61, 50.15, 54.21, 58.98, 63.75, 68.52, 73.72],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [43.0, 46.5, 50.0, 55.0, 58.5, 62.5, 68.0, 73.5, 79.0, 85.0, 91.88, 99.96, 108.05, 116.13, 124.95],
              'extra': {},
            },
            {
              'value': [74.65, 80.72, 86.8, 95.48, 101.56, 108.5, 118.05, 127.6, 137.14, 147.56, 159.5, 173.53, 187.57, 201.6, 216.91],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [81.83, 88.49, 95.16, 104.67, 111.33, 118.94, 129.41, 139.88, 150.35, 161.76, 173.18, 184.6, 196.02, 207.44, 218.86],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [163.63, 176.95, 190.27, 209.3, 222.62, 237.84, 258.77, 279.7, 300.63, 323.46, 346.29, 369.12, 391.96, 414.79, 437.62],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [204.39, 221.02, 237.66, 261.42, 278.06, 297.07, 323.21, 349.36, 375.5, 404.02, 432.54, 461.06, 489.57, 518.09, 546.61],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '千早振',
      'description':
          '施展如同冲风般激昂的秘剑，将敌人与物体牵引至所在位置，击飞范围内的敌人，造成风元素伤害，并借由喷薄的气流如登泷般腾空而起。\n枫原万叶因元素战技 • 千早振而升空后的10秒内并持续处于空中时，若进行下落攻击，则会施展格外强劲的下落攻击 • 乱岚拨止。\n点按\n可以在空中施放。\n长按\n积蓄力量后施展，相对于点按，在更大的范围内造成更高的风元素伤害。\n下落攻击 • 乱岚拨止\n通过元素战技 • 千早振施放的下落攻击，造成的伤害将转化为风元素伤害，并在落地时施展秘剑产生小型的风穴，牵引附近的物体与敌人。\n乱岚拨止造成的伤害视为下落攻击伤害。',
      'buff': [],
      'hit': [
        {
          'name': '点按技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [192.0, 206.4, 220.8, 240.0, 254.4, 268.8, 288.0, 307.2, 326.4, 345.6, 364.8, 384.0, 408.0, 432.0, 456.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '长按技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [260.8, 280.36, 299.92, 326.0, 345.56, 365.12, 391.2, 417.28, 443.36, 469.44, 495.52, 521.6, 554.2, 586.8, 619.4],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '点按冷却时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '长按冷却时间',
          'value': ['9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '万叶之一刀',
      'description':
          '施展我流的奥义，斩出初岚般的一刀，造成风元素范围伤害。\n刀风会留下名为「流风秋野」的领域，对其中的敌人造成间歇的风元素伤害。\n元素转化\n若流风秋野在持续期间接触了水元素/火元素/冰元素/雷元素，则会获得对应元素属性，额外造成该元素附加伤害。\n这种转化在技能持续期间仅会发生一次。',
      'buff': [],
      'hit': [
        {
          'name': '斩击伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [262.4, 282.08, 301.76, 328.0, 347.68, 367.36, 393.6, 419.84, 446.08, 472.32, 498.56, 524.8, 557.6, 590.4, 623.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '持续伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [120.0, 129.0, 138.0, 150.0, 159.0, 168.0, 180.0, 192.0, 204.0, 216.0, 228.0, 240.0, 255.0, 270.0, 285.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '附加元素伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [36.0, 38.7, 41.4, 45.0, 47.7, 50.4, 54.0, 57.6, 61.2, 64.8, 68.4, 72.0, 76.5, 81.0, 85.5],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  7: {
    SkillType.Passive: [
      {
        'name': '呜呼流·屏息秘传',
        'description': '早柚在队伍中时，队伍中自己的角色接近晶蝶等部分生物时，不会惊动它们。\n有效对象可参考图鉴中「生物志 / 野生动物」的「其他」分类。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '更加合适的人选',
        'description': '早柚在场上触发扩散反应时，为队伍中自己的角色以及附近的友方角色恢复300点生命值。除此之外，早柚的每点元素精通将额外恢复1.2点生命值。\n该效果每2秒只能触发一次。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '早柚不用工作啦',
        'description': '呜呼流 • 影貉缭乱的不倒貉貉获得如下效果：\n• 为角色恢复生命值时，将为该角色身边的其他场上角色恢复相当于回复量20%的生命值；\n• 攻击敌人时，扩大造成伤害的范围。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·忍刀·终末番',
      'description': '普通攻击\n进行至多四段的连续挥砍。\n重击\n持续消耗体力，旋转大剑攻击周围的敌人。\n停止旋转时，会进行一次格外有力的挥砍。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [72.24, 78.12, 84.0, 92.4, 98.28, 105.0, 114.24, 123.48, 132.72, 142.8, 154.35, 167.93, 181.52, 195.1, 209.92],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [71.38, 77.19, 83.0, 91.3, 97.11, 103.75, 112.88, 122.01, 131.14, 141.1, 152.51, 165.93, 179.35, 192.78, 207.42],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.43, 46.97, 50.5, 55.55, 59.09, 63.13, 68.68, 74.23, 79.79, 85.85, 92.79, 100.96, 109.13, 117.29, 126.2],
              'extra': {},
            },
            {
              'value': [43.43, 46.97, 50.5, 55.55, 59.09, 63.13, 68.68, 74.23, 79.79, 85.85, 92.79, 100.96, 109.13, 117.29, 126.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [98.13, 106.11, 114.1, 125.51, 133.5, 142.63, 155.18, 167.73, 180.28, 193.97, 209.66, 228.11, 246.56, 265.01, 285.14],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击循环伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [62.55, 67.64, 72.73, 80.0, 85.09, 90.91, 98.91, 106.91, 114.91, 123.64, 133.64, 145.4, 157.16, 168.92, 181.75],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击终结伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.09, 122.3, 131.5, 144.65, 153.86, 164.38, 178.84, 193.31, 207.77, 223.55, 241.63, 262.89, 284.16, 305.42, 328.62],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [74.59, 80.66, 86.73, 95.4, 101.47, 108.41, 117.95, 127.49, 137.03, 147.44, 157.85, 168.26, 178.66, 189.07, 199.48],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [149.14, 161.28, 173.42, 190.77, 202.91, 216.78, 235.86, 254.93, 274.01, 294.82, 315.63, 336.44, 357.25, 378.06, 398.87],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [186.29, 201.45, 216.62, 238.28, 253.44, 270.77, 294.6, 318.42, 342.25, 368.25, 394.24, 420.23, 446.23, 472.22, 498.21],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒'],
        },
        {
          'name': '最大持续时间',
          'value': ['5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '呜呼流·风隐急进',
      'description':
          '忍法 • 呜呼流的独创奥义！以风驰电掣之势席卷战场的绝技！\n蜷缩成高速滚动的风风轮，冲撞触及的敌人造成风元素伤害，并在结束时使出风风轮舞踢，造成风元素范围伤害。\n点按\n进入风风轮状态，向前滚动一小段距离，并使出风风轮舞踢。\n长按\n以风风轮之姿持续滚动，并在该状态下提高早柚的抗打断能力。\n期间，早柚可以控制滚动的方向，并能通过再次施放技能，提前结束状态使出相比点按更为强大的风风轮舞踢。\n该技能通过长按施放时，能发生元素转化。\n持续至多10秒。效果结束时，技能将进入冷却。在风风轮状态下持续的时间越长，冷却时间越长。\n元素转化\n若早柚在风风轮状态下，接触了水元素/火元素/冰元素/雷元素，则会获得对应元素属性，使风风轮与风风轮舞踢额外造成该元素的附加伤害。\n元素转化在技能持续期间仅会发生一次。',
      'buff': [],
      'hit': [
        {
          'name': '风风轮伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [36.0, 38.7, 41.4, 45.0, 47.7, 50.4, 54.0, 57.6, 61.2, 64.8, 68.4, 72.0, 76.5, 81.0, 85.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '风风轮舞踢点按伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [158.4, 170.28, 182.16, 198.0, 209.88, 221.76, 237.6, 253.44, 269.28, 285.12, 300.96, 316.8, 336.6, 356.4, 376.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '风风轮舞踢长按伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [217.6, 233.92, 250.24, 272.0, 288.32, 304.64, 326.4, 348.16, 369.92, 391.68, 413.44, 435.2, 462.4, 489.6, 516.8],
              'extra': {},
            },
          ],
        },
        {
          'name': '风风轮附带元素伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [16.8, 18.06, 19.32, 21.0, 22.26, 23.52, 25.2, 26.88, 28.56, 30.24, 31.92, 33.6, 35.7, 37.8, 39.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '风风轮舞踢长按附带元素伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [76.16, 81.87, 87.58, 95.2, 100.91, 106.62, 114.24, 121.86, 129.47, 137.09, 144.7, 152.32, 161.84, 171.36, 180.88],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '长按最大持续时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
        {
          'name': '冷却时间',
          'value': ['6~11秒', '6~11秒', '6~11秒', '6~11秒', '6~11秒', '6~11秒', '6~11秒', '6~11秒', '6~11秒', '6~11秒', '6~11秒', '6~11秒', '6~11秒', '6~11秒', '6~11秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '呜呼流·影貉缭乱',
      'description':
          '忍法 • 呜呼流的另一个独创奥义！能创造出替早柚干活的帮手！\n对身边的敌人造成风元素伤害，为队伍中附近的所有角色恢复生命值，回复量受益于早柚的攻击力，并召唤出「不倒貉貉」。\n不倒貉貉\n周期性地根据附近的状况，采取其中一种行动：\n• 附近的角色如果生命值均高于70%，不倒貉貉会攻击附近的一名敌人，造成风元素伤害；\n• 附近场上如果存在生命值低于或等于70%的角色，会为附近场上生命值百分比最低的角色恢复生命值，回复量受益于早柚的攻击力。若附近不存在敌人，即使角色的生命值均高于70%，也会为角色恢复生命值。',
      'buff': [],
      'hit': [
        {
          'name': '技能发动伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [116.8, 125.56, 134.32, 146.0, 154.76, 163.52, 175.2, 186.88, 198.56, 210.24, 221.92, 233.6, 248.2, 262.8, 277.4],
              'extra': {},
            },
          ],
        },
        {
          'name': '不倒貉貉伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [52.0, 55.9, 59.8, 65.0, 68.9, 72.8, 78.0, 83.2, 88.4, 93.6, 98.8, 104.0, 110.5, 117.0, 123.5],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '技能发动治疗量',
          'value': [
            '92.16%攻击力+577',
            '99.07%攻击力+635',
            '105.98%攻击力+698',
            '115.2%攻击力+765',
            '122.11%攻击力+837',
            '129.02%攻击力+914',
            '138.24%攻击力+996',
            '147.46%攻击力+1083',
            '156.67%攻击力+1174',
            '165.89%攻击力+1270',
            '175.1%攻击力+1371',
            '184.32%攻击力+1477',
            '195.84%攻击力+1588',
            '207.36%攻击力+1703',
            '218.88%攻击力+1824'
          ],
        },
        {
          'name': '不倒貉貉治疗量',
          'value': [
            '79.87%攻击力+500',
            '85.86%攻击力+550',
            '91.85%攻击力+605',
            '99.84%攻击力+663',
            '105.83%攻击力+726',
            '111.82%攻击力+792',
            '119.81%攻击力+863',
            '127.8%攻击力+938',
            '135.78%攻击力+1017',
            '143.77%攻击力+1101',
            '151.76%攻击力+1188',
            '159.74%攻击力+1280',
            '169.73%攻击力+1376',
            '179.71%攻击力+1476',
            '189.7%攻击力+1580'
          ],
        },
        {
          'name': '持续时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  8: {
    SkillType.Passive: [
      {
        'name': '诸武精通',
        'description': '队伍中自己的角色普通攻击等级提高1级。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '永无谢幕',
        'description': '断流效果的持续时间延长8秒。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '水形剑',
        'description': '处于魔王武装 • 狂澜的近战状态时，普通攻击与重击在造成暴击时，会为命中的敌人施加断流效果。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·断雨',
      'description':
          '普通攻击\n进行至多六段的连续弓箭射击。\n重击\n进行伤害更高、更为精准的瞄准射击。\n瞄准时，水元素之力会在箭矢上持续积聚。聚满了激流的箭矢会在命中敌人时造成水元素伤害，并施加断流效果。\n断流\n处于断流影响下的敌人受到达达利亚的各种攻击时，将产生水元素范围伤害效果。这些效果造成的伤害视为普通攻击伤害。\n• 断流 • 闪：满蓄力瞄准射击命中处于断流影响下的敌人时，会引发连续范围伤害。断流 • 闪每0.7秒至多触发一次。\n• 断流 • 破：击败处于断流影响下的敌人时会引发水之绽放，对附近的敌人施加断流效果。\n下落攻击\n从空中射出箭雨，并迅速下坠冲击地面，在落地时造成范围伤害。\n处于魔王武装 • 狂澜的近战状态下时，无法施展下落攻击。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [41.28, 44.64, 48.0, 52.8, 56.16, 60.0, 65.28, 70.56, 75.84, 81.6, 87.36, 93.12, 98.88, 104.64, 110.4],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [46.27, 50.03, 53.8, 59.18, 62.95, 67.25, 73.17, 79.09, 85.0, 91.46, 97.92, 104.37, 110.83, 117.28, 123.74],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [55.38, 59.89, 64.4, 70.84, 75.35, 80.5, 87.58, 94.67, 101.75, 109.48, 117.21, 124.94, 132.66, 140.39, 148.12],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [57.02, 61.66, 66.3, 72.93, 77.57, 82.88, 90.17, 97.46, 104.75, 112.71, 120.67, 128.62, 136.58, 144.53, 152.49],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [60.89, 65.84, 70.8, 77.88, 82.84, 88.5, 96.29, 104.08, 111.86, 120.36, 128.86, 137.35, 145.85, 154.34, 162.84],
              'extra': {},
            },
          ],
        },
        {
          'name': '六段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [72.76, 78.68, 84.6, 93.06, 98.98, 105.75, 115.06, 124.36, 133.67, 143.82, 153.97, 164.12, 174.28, 184.43, 194.58],
              'extra': {},
            },
          ],
        },
        {
          'name': '瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 92.82, 98.94, 105.06, 111.18, 117.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '满蓄力瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [124.0, 133.3, 142.6, 155.0, 164.3, 173.6, 186.0, 198.4, 210.8, 223.2, 235.6, 248.0, 263.5, 279.0, 294.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '断流·闪 伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [12.4, 13.33, 14.26, 15.5, 16.43, 17.36, 18.6, 19.84, 21.08, 22.32, 23.56, 24.8, 26.35, 27.9, 29.45],
              'extra': {},
            },
            {
              'value': [12.4, 13.33, 14.26, 15.5, 16.43, 17.36, 18.6, 19.84, 21.08, 22.32, 23.56, 24.8, 26.35, 27.9, 29.45],
              'extra': {},
            },
            {
              'value': [12.4, 13.33, 14.26, 15.5, 16.43, 17.36, 18.6, 19.84, 21.08, 22.32, 23.56, 24.8, 26.35, 27.9, 29.45],
              'extra': {},
            },
          ],
        },
        {
          'name': '断流·破 伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [62.0, 66.65, 71.3, 77.5, 82.15, 86.8, 93.0, 99.2, 105.4, 111.6, 117.8, 124.0, 131.75, 139.5, 147.25],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '断流持续时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '魔王武装·狂澜',
      'description':
          '解放纯水构成的武装，对周围的敌人造成水元素伤害，并进入近战状态。\n在此状态下，达达利亚的普通攻击与重击将转为无法被附魔覆盖的水元素伤害，并发生以下变化：\n普通攻击\n进行至多六段的连续水元素斩击。\n重击\n消耗体力，瞬间向前方挥出两剑，造成水元素伤害。\n断流 • 斩\n近战攻击命中处于断流影响下的敌人时，将引发一次断流 • 斩，造成水元素范围伤害。断流 • 斩造成的伤害视为元素战技伤害，每1.5秒至多触发一次。\n30秒后或再次施放时效果将会解除，回到远程状态，并使技能进入冷却。近战状态下持续的时间越长，冷却时间越长。\n若持续30秒后自动回到远程状态，技能将进入更长的冷却周期。',
      'buff': [],
      'hit': [
        {
          'name': '状态激发伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [72.0, 77.4, 82.8, 90.0, 95.4, 100.8, 108.0, 115.2, 122.4, 129.6, 136.8, 144.0, 153.0, 162.0, 171.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [38.87, 42.04, 45.2, 49.72, 52.88, 56.5, 61.47, 66.44, 71.42, 76.84, 82.26, 87.69, 93.11, 98.54, 103.96],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [41.62, 45.01, 48.4, 53.24, 56.63, 60.5, 65.82, 71.15, 76.47, 82.28, 88.09, 93.9, 99.7, 105.51, 111.32],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [56.33, 60.92, 65.5, 72.05, 76.64, 81.88, 89.08, 96.29, 103.49, 111.35, 119.21, 127.07, 134.93, 142.79, 150.65],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [59.94, 64.82, 69.7, 76.67, 81.55, 87.13, 94.79, 102.46, 110.13, 118.49, 126.85, 135.22, 143.58, 151.95, 160.31],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [55.3, 59.8, 64.3, 70.73, 75.23, 80.38, 87.45, 94.52, 101.59, 109.31, 117.03, 124.74, 132.46, 140.17, 147.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '六段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [35.43, 38.32, 41.2, 45.32, 48.2, 51.5, 56.03, 60.56, 65.1, 70.04, 74.98, 79.93, 84.87, 89.82, 94.76],
              'extra': {},
            },
            {
              'value': [37.67, 40.73, 43.8, 48.18, 51.25, 54.75, 59.57, 64.39, 69.2, 74.46, 79.72, 84.97, 90.23, 95.48, 100.74],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [60.2, 65.1, 70.0, 77.0, 81.9, 87.5, 95.2, 102.9, 110.6, 119.0, 127.4, 135.8, 144.2, 152.6, 161.0],
              'extra': {},
            },
            {
              'value': [71.98, 77.84, 83.7, 92.07, 97.93, 104.62, 113.83, 123.04, 132.25, 142.29, 152.33, 162.38, 172.42, 182.47, 192.51],
              'extra': {},
            },
          ],
        },
        {
          'name': '断流·斩 伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [60.2, 65.1, 70.0, 77.0, 81.9, 87.5, 95.2, 102.9, 110.6, 119.0, 127.4, 135.8, 144.2, 152.6, 161.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
        {
          'name': '最大持续时间',
          'value': ['30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒'],
        },
        {
          'name': '冷却时间',
          'value': ['6~36秒', '6~36秒', '6~36秒', '6~36秒', '6~36秒', '6~36秒', '6~36秒', '6~36秒', '6~36秒', '6~36秒', '6~36秒', '6~36秒', '6~36秒', '6~36秒', '6~36秒'],
        },
        {
          'name': '持续时间耗尽冷却时间',
          'value': ['45秒', '45秒', '45秒', '45秒', '45秒', '45秒', '45秒', '45秒', '45秒', '45秒', '45秒', '45秒', '45秒', '45秒', '45秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '极恶技·尽灭闪',
      'description':
          '依据达达利亚当前所处的状态，进行不同的攻击：\n远程状态 • 魔弹一闪\n向前方快速射出一发饱含水元素的魔箭，造成水元素范围伤害，并施加断流效果。\n施放后，返还部分元素能量。\n近战状态 • 尽灭水光\n进行一次大范围斩击，对附近所有敌人造成大量水元素伤害，并能引发断流 • 爆。\n断流 • 爆\n尽灭水光命中处于断流状态下的敌人时，会消耗断流效果并引发水爆，造成水元素范围伤害。断流 • 爆造成的伤害视为元素爆发伤害。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害·近战',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [464.0, 498.8, 533.6, 580.0, 614.8, 649.6, 696.0, 742.4, 788.8, 835.2, 881.6, 928.0, 986.0, 1044.0, 1102.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '技能伤害·远程',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [378.4, 406.78, 435.16, 473.0, 501.38, 529.76, 567.6, 605.44, 643.28, 681.12, 718.96, 756.8, 804.1, 851.4, 898.7],
              'extra': {},
            },
          ],
        },
        {
          'name': '断流·爆 伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [120.0, 129.0, 138.0, 150.0, 159.0, 168.0, 180.0, 192.0, 204.0, 216.0, 228.0, 240.0, 255.0, 270.0, 285.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '技能返还元素能量（远程）',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  9: {
    SkillType.Passive: [
      {
        'name': '虚实流动',
        'description': '替代冲刺\n隐入流水，以消耗体力为代价，化为激流快速移动。\n在虚实流动状态下，莫娜可以在水面上高速移动。\n结束虚实流动现身时，对周围的敌人施加潮湿状态。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '运行原理',
        'description': '合成武器突破素材时，有25%概率返还部分合成材料。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '「老太婆来抓我啊！」',
        'description': '进入虚实流动状态2秒后，如果周围存在敌人，则自动凝聚一个虚影。\n通过这种方式产生的虚影持续2秒，造成的破裂伤害相当于水中幻愿伤害的50%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '「托付于命运吧！」',
        'description': '莫娜的水元素伤害加成获得额外提升，提升程度相当于她的元素充能效率的20%。',
        'buff': [
          {
            'stat': Stats.DmgBonusByRecharge,
            'value': 20.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·因果点破',
      'description': '普通攻击\n进行至多四段的水花攻击，造成水元素伤害。\n重击\n消耗一定体力，短暂咏唱后，造成水元素范围伤害。\n下落攻击\n凝聚水元素的力量，从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成水元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [37.6, 40.42, 43.24, 47.0, 49.82, 52.64, 56.4, 60.16, 63.92, 67.68, 71.44, 75.2, 79.9, 84.6, 89.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [36.0, 38.7, 41.4, 45.0, 47.7, 50.4, 54.0, 57.6, 61.2, 64.8, 68.4, 72.0, 76.5, 81.0, 85.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [44.8, 48.16, 51.52, 56.0, 59.36, 62.72, 67.2, 71.68, 76.16, 80.64, 85.12, 89.6, 95.2, 100.8, 106.4],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [56.16, 60.37, 64.58, 70.2, 74.41, 78.62, 84.24, 89.86, 95.47, 101.09, 106.7, 112.32, 119.34, 126.36, 133.38],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [149.72, 160.95, 172.18, 187.15, 198.38, 209.61, 224.58, 239.55, 254.52, 269.5, 285.07, 305.43, 325.79, 346.15, 366.51],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '水中幻愿',
      'description':
          '聚集水花汇成命运的虚影。\n虚影\n具有如下特性：\n• 持续嘲讽周围的敌人，吸引火力；\n• 持续对附近的敌人造成水元素伤害；\n• 持续时间结束时，虚影破裂，造成水元素范围伤害。\n长按\n借助水流之势迅速后退，并唤出虚影。\n场上同时只能存在一个通过水中幻愿创造的虚影。',
      'buff': [],
      'hit': [
        {
          'name': '持续伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [32.0, 34.4, 36.8, 40.0, 42.4, 44.8, 48.0, 51.2, 54.4, 57.6, 60.8, 64.0, 68.0, 72.0, 76.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '爆裂伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [132.8, 142.76, 152.72, 166.0, 175.96, 185.92, 199.2, 212.48, 225.76, 239.04, 252.32, 265.6, 282.2, 298.8, 315.4],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '星命定轨',
      'description':
          '凝聚粼粼的水波，倒映出虚幻星空，对大范围内的敌人施加泡影状态。\n泡影\n以星相的气泡包裹敌人，施加潮湿状态。较弱的敌人会被禁锢在泡影中，无法行动。\n处于泡影影响下的敌人受到伤害时，会产生以下效果：\n• 对敌人施加星异的伤害加成效果，并以此提高这一次造成的伤害；\n• 解除泡影效果，并额外造成一次水元素伤害。\n星异\n持续时间内，提高受到的伤害。',
      'buff': [
        {
          'name': '伤害加成',
          'stat': Stats.DmgBonusExtra,
          'value': [42.0, 44.0, 46.0, 48.0, 50.0, 52.0, 54.0, 56.0, 58.0, 60.0, 60.0, 60.0, 60.0, 60.0, 60.0],
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [
        {
          'name': '泡影破裂伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [442.4, 475.58, 508.76, 553.0, 586.18, 619.36, 663.6, 707.84, 752.08, 796.32, 840.56, 884.8, 940.1, 995.4, 1050.7],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '星异持续时间',
          'value': ['4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  10: {
    SkillType.Passive: [
      {
        'name': '灵光乍现',
        'description': '合成角色天赋素材时，有25%概率返还部分合成材料。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '生水要诀',
        'description': '雨帘剑受击破碎时或持续时间结束时，基于行秋最大生命值的6%，恢复当前角色的生命值。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '虚实工笔',
        'description': '行秋获得20%水元素伤害加成。',
        'buff': [
          {
            'stat': Stats.EleDmgBonus,
            'value': 20.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·古华剑法',
      'description': '普通攻击\n进行至多五段的连续剑击。\n重击\n消耗一定体力，瞬间向前方挥出两剑。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [46.61, 50.41, 54.2, 59.62, 63.41, 67.75, 73.71, 79.67, 85.64, 92.14, 99.59, 108.36, 117.12, 125.88, 135.45],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [47.64, 51.52, 55.4, 60.94, 64.82, 69.25, 75.34, 81.44, 87.53, 94.18, 101.8, 110.76, 119.71, 128.67, 138.44],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [28.55, 30.88, 33.2, 36.52, 38.84, 41.5, 45.15, 48.8, 52.46, 56.44, 61.01, 66.37, 71.74, 77.11, 82.97],
              'extra': {},
            },
            {
              'value': [28.55, 30.88, 33.2, 36.52, 38.84, 41.5, 45.15, 48.8, 52.46, 56.44, 61.01, 66.37, 71.74, 77.11, 82.97],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [55.99, 60.54, 65.1, 71.61, 76.17, 81.38, 88.54, 95.7, 102.86, 110.67, 119.62, 130.15, 140.67, 151.2, 162.68],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [35.86, 38.78, 41.7, 45.87, 48.79, 52.13, 56.71, 61.3, 65.89, 70.89, 76.62, 83.37, 90.11, 96.85, 104.21],
              'extra': {},
            },
            {
              'value': [35.86, 38.78, 41.7, 45.87, 48.79, 52.13, 56.71, 61.3, 65.89, 70.89, 76.62, 83.37, 90.11, 96.85, 104.21],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [47.3, 51.15, 55.0, 60.5, 64.35, 68.75, 74.8, 80.85, 86.9, 93.5, 101.06, 109.96, 118.85, 127.74, 137.45],
              'extra': {},
            },
            {
              'value': [56.16, 60.73, 65.3, 71.83, 76.4, 81.63, 88.81, 95.99, 103.17, 111.01, 119.99, 130.55, 141.11, 151.67, 163.18],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '古华剑·画雨笼山',
      'description':
          '使出连续两段的剑技，对前方的敌人造成水元素伤害。同时，生成最大数量的雨帘剑围绕在当前场上自己的角色身边。\n具有如下特性：\n• 角色受到伤害时会破碎，降低受到的伤害；\n• 提高角色的抗打断能力。\n行秋水元素伤害加成的20%将转换为雨帘剑的额外伤害减免。\n最多通过这种方式获得24%额外伤害减免。\n初始雨帘剑的最大数量为3柄。\n施放的瞬间，为角色施加潮湿状态。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [168.0, 180.6, 193.2, 210.0, 222.6, 235.2, 252.0, 268.8, 285.6, 302.4, 319.2, 336.0, 357.0, 378.0, 399.0],
              'extra': {},
            },
            {
              'value': [191.2, 205.54, 219.88, 239.0, 253.34, 267.68, 286.8, 305.92, 325.04, 344.16, 363.28, 382.4, 406.3, 430.2, 454.1],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '减伤比例',
          'value': ['20%', '21%', '22%', '23%', '24%', '25%', '26%', '27%', '28%', '29%', '29%', '29%', '29%', '29%', '29%'],
        },
        {
          'name': '持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['21秒', '21秒', '21秒', '21秒', '21秒', '21秒', '21秒', '21秒', '21秒', '21秒', '21秒', '21秒', '21秒', '21秒', '21秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '古华剑·裁雨留虹',
      'description': '展开虹剑势，驾御幻影剑雨战斗，并生成最大数量的雨帘剑。\n虹剑势\n• 当前场上自己的角色进行普通攻击时，会产生剑雨连携攻击，造成水元素伤害；\n• 雨帘剑的数量将始终维持在最大数量。',
      'buff': [],
      'hit': [
        {
          'name': '剑雨伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [54.27, 58.34, 62.41, 67.84, 71.91, 75.98, 81.41, 86.84, 92.26, 97.69, 103.12, 108.54, 115.33, 122.11, 128.9],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  11: {
    SkillType.Passive: [
      {
        'name': '心意♪注入',
        'description': '完美烹饪恢复类食物时，有12%概率获得2倍产出。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '光辉的季节',
        'description': '角色在演唱，开始♪的歌声之环中时，体力消耗降低12%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '安可',
        'description': '当前场上自己的角色获得元素晶球或元素微粒时，延长演唱，开始♪歌声之环持续时间1秒。\n通过这种方式，至多延长5秒。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·水之浅唱',
      'description': '普通攻击\n进行至多四段的水花攻击，造成水元素伤害。\n重击\n消耗一定体力，短暂咏唱后，造成水元素范围伤害。\n下落攻击\n凝聚水元素的力量，从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成水元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [37.84, 40.68, 43.52, 47.3, 50.14, 52.98, 56.76, 60.54, 64.33, 68.11, 72.05, 77.19, 82.34, 87.49, 92.63],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [35.52, 38.18, 40.85, 44.4, 47.06, 49.73, 53.28, 56.83, 60.38, 63.94, 67.63, 72.46, 77.29, 82.12, 86.95],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [41.04, 44.12, 47.2, 51.3, 54.38, 57.46, 61.56, 65.66, 69.77, 73.87, 78.14, 83.72, 89.3, 94.88, 100.47],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [55.2, 59.34, 63.48, 69.0, 73.14, 77.28, 82.8, 88.32, 93.84, 99.36, 105.1, 112.61, 120.12, 127.62, 135.13],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [166.24, 178.71, 191.18, 207.8, 220.27, 232.74, 249.36, 265.98, 282.61, 299.23, 316.52, 339.13, 361.74, 384.35, 406.96],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '演唱，开始♪',
      'description':
          '唤出歌声般跃动的水珠，形成歌声之环，对周围的敌人造成水元素伤害，并施加潮湿状态。\n歌声之环\n• 芭芭拉的普通攻击命中时，为队伍中自己的角色，以及附近的友方角色恢复生命值，回复量受益于芭芭拉的生命值上限；\n• 重击命中时，能产生4倍回复量；\n• 每隔一段时间，为当前场上自己的角色恢复生命值；\n• 对角色与触及的敌人施加潮湿状态。',
      'buff': [],
      'hit': [
        {
          'name': '水珠伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [58.4, 62.78, 67.16, 73.0, 77.38, 81.76, 87.6, 93.44, 99.28, 105.12, 110.96, 116.8, 124.1, 131.4, 138.7],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '命中治疗量',
          'value': [
            '0.75%最大生命值+72',
            '0.81%最大生命值+79',
            '0.86%最大生命值+87',
            '0.94%最大生命值+96',
            '0.99%最大生命值+105',
            '1.05%最大生命值+114',
            '1.13%最大生命值+125',
            '1.2%最大生命值+135',
            '1.27%最大生命值+147',
            '1.35%最大生命值+159',
            '1.43%最大生命值+172',
            '1.5%最大生命值+185',
            '1.59%最大生命值+199',
            '1.69%最大生命值+213',
            '1.78%最大生命值+228'
          ],
        },
        {
          'name': '持续治疗量',
          'value': [
            '4%最大生命值+385',
            '4.3%最大生命值+424',
            '4.6%最大生命值+465',
            '5%最大生命值+510',
            '5.3%最大生命值+559',
            '5.6%最大生命值+610',
            '6%最大生命值+664',
            '6.4%最大生命值+722',
            '6.8%最大生命值+783',
            '7.2%最大生命值+847',
            '7.6%最大生命值+915',
            '8%最大生命值+986',
            '8.5%最大生命值+1059',
            '9%最大生命值+1136',
            '9.5%最大生命值+1217'
          ],
        },
        {
          'name': '持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['32秒', '32秒', '32秒', '32秒', '32秒', '32秒', '32秒', '32秒', '32秒', '32秒', '32秒', '32秒', '32秒', '32秒', '32秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '闪耀奇迹♪',
      'description': '为附近的友方角色及队伍中自己的角色恢复大量生命值，回复量受益于芭芭拉的生命值上限。',
      'buff': [],
      'hit': [],
      'other': [
        {
          'name': '治疗量',
          'value': [
            '17.6%最大生命值+1694',
            '18.92%最大生命值+1864',
            '20.24%最大生命值+2047',
            '22%最大生命值+2245',
            '23.32%最大生命值+2457',
            '24.64%最大生命值+2683',
            '26.4%最大生命值+2923',
            '28.16%最大生命值+3177',
            '29.92%最大生命值+3445',
            '31.68%最大生命值+3728',
            '33.44%最大生命值+4024',
            '35.2%最大生命值+4335',
            '37.4%最大生命值+4660',
            '39.6%最大生命值+4999',
            '41.8%最大生命值+5352'
          ],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  12: {
    SkillType.Passive: [
      {
        'name': '匣中玉栉',
        'description': '施放海人化羽时，若场上有珊瑚宫心海自己的化海月，则重置化海月的存在时间。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '真珠御呗',
        'description': '处于海人化羽的仪来羽衣状态下时，珊瑚宫心海的普通攻击与重击基于生命值上限造成的伤害获得额外提升，提升程度相当于她的治疗加成的15%。',
        'buff': [
          {
            'stat': Stats.DmgBonusByHealingForHpExtraDamage,
            'value': 15.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.Normal,
              DamageType.Charged,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '海祇姬君',
        'description': '队伍中自己的角色游泳消耗的体力降低20%。\n无法与效果完全相同的固有天赋叠加。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '庙算无遗',
        'description': '珊瑚宫心海的治疗加成提升25%，暴击率降低100%。',
        'buff': [
          {
            'stat': Stats.HealingBonus,
            'value': 25.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
          {
            'stat': Stats.CritRate,
            'value': 100.0,
            'buffType': BuffType.DebuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·水有常形',
      'description': '普通攻击\n以水元素幻造成的游鱼进行至多三段的攻击，造成水元素伤害。\n重击\n消耗一定体力，短暂咏唱后，造成水元素范围伤害。\n下落攻击\n凝聚水元素的力量，从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成水元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [68.38, 73.5, 78.63, 85.47, 90.6, 95.73, 102.56, 109.4, 116.24, 123.08, 129.91, 136.75, 145.3, 153.85, 162.39],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [61.54, 66.15, 70.77, 76.92, 81.54, 86.15, 92.31, 98.46, 104.62, 110.77, 116.92, 123.08, 130.77, 138.46, 146.15],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [94.31, 101.38, 108.45, 117.88, 124.95, 132.03, 141.46, 150.89, 160.32, 169.75, 179.18, 188.61, 200.4, 212.19, 223.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [148.32, 159.44, 170.57, 185.4, 196.52, 207.65, 222.48, 237.31, 252.14, 266.98, 281.81, 296.64, 315.18, 333.72, 352.26],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '海月之誓',
      'description': '召唤能够治愈同伴的幻造水之生命「化海月」。\n施放的瞬间，为珊瑚宫心海施加潮湿状态。\n化海月\n每隔一段时间，对周围的敌人造成水元素伤害，并为周围的当前场上角色恢复生命值，回复量受益于珊瑚宫心海的生命值上限。',
      'buff': [],
      'hit': [
        {
          'name': '波纹伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [109.19, 117.38, 125.57, 136.49, 144.68, 152.87, 163.79, 174.7, 185.62, 196.54, 207.46, 218.38, 232.03, 245.68, 259.33],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '治疗量',
          'value': [
            '4.4%最大生命值+424',
            '4.73%最大生命值+466',
            '5.06%最大生命值+512',
            '5.5%最大生命值+561',
            '5.83%最大生命值+614',
            '6.16%最大生命值+671',
            '6.6%最大生命值+731',
            '7.04%最大生命值+795',
            '7.48%最大生命值+862',
            '7.92%最大生命值+932',
            '8.36%最大生命值+1006',
            '8.8%最大生命值+1084',
            '9.35%最大生命值+1165',
            '9.9%最大生命值+1250',
            '10.45%最大生命值+1338'
          ],
        },
        {
          'name': '存在时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '海人化羽',
      'description':
          '请降海祇的力量，对周围的敌人造成水元素伤害，并披上珊瑚宫之水汇聚而成的「仪来羽衣」。\n仪来羽衣\n• 增加珊瑚宫心海的普通攻击，重击以及元素战技的「化海月」造成的伤害，增加值基于珊瑚宫心海的生命值上限；\n• 普通攻击和重击命中敌人时，为队伍中附近的所有角色恢复生命值，回复量受益于珊瑚宫心海的生命值上限；\n• 提升珊瑚宫心海的抗打断能力，并使她能在水面上移动。\n效果将在珊瑚宫心海退场时解除。',
      'buff': [
        {
          'name': '普通攻击伤害提升',
          'stat': Stats.ExtraDamageByHp,
          'value': [4.84, 5.2, 5.57, 6.05, 6.41, 6.78, 7.26, 7.74, 8.23, 8.71, 9.2, 9.68, 10.29, 10.89, 11.5],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
        {
          'name': '重击伤害提升',
          'stat': Stats.ExtraDamageByHp,
          'value': [6.78, 7.28, 7.79, 8.47, 8.98, 9.49, 10.16, 10.84, 11.52, 12.2, 12.87, 13.55, 14.4, 15.25, 16.09],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Charged,
          ],
        },
        {
          'name': '化海月伤害提升',
          'stat': Stats.ExtraDamageByHp,
          'value': [7.1, 7.63, 8.16, 8.87, 9.4, 9.93, 10.64, 11.35, 12.06, 12.77, 13.48, 14.19, 15.08, 15.97, 16.85],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
      ],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByHp: [10.42, 11.2, 11.98, 13.02, 13.8, 14.58, 15.62, 16.67, 17.71, 18.75, 19.79, 20.83, 22.13, 23.44, 24.74],
              },
            },
          ],
        },
      ],
      'other': [
        {
          'name': '命中治疗量',
          'value': [
            '0.81%最大生命值+77',
            '0.87%最大生命值+85',
            '0.93%最大生命值+93',
            '1.01%最大生命值+102',
            '1.07%最大生命值+112',
            '1.13%最大生命值+122',
            '1.21%最大生命值+133',
            '1.29%最大生命值+144',
            '1.37%最大生命值+157',
            '1.45%最大生命值+169',
            '1.54%最大生命值+183',
            '1.62%最大生命值+197',
            '1.72%最大生命值+212',
            '1.82%最大生命值+227',
            '1.92%最大生命值+243'
          ],
        },
        {
          'name': '持续时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
        {
          'name': '冷却时间',
          'value': ['18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒'],
        },
      ],
      'energy': 70,
    },
  },
  13: {
    SkillType.Passive: [
      {
        'name': '晨曦的传统',
        'description': '锻造双手剑类武器时，返还15%消耗的矿石。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '永不休止',
        'description': '迪卢克的重击体力消耗降低50%，最大持续时间增加3秒。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '熔毁之翼',
        'description': '黎明提供的火元素附魔持续时间延长4秒；此外，在效果持续期间，迪卢克获得20%火元素伤害加成。',
        'buff': [
          {
            'stat': Stats.EleDmgBonus,
            'value': 20.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·淬炼之剑',
      'description': '普通攻击\n进行至多四段的连续挥砍。\n重击\n持续消耗体力，快速进行连续的斩击。\n重击结束时，会进行一次格外有力的挥砍。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [89.7, 97.0, 104.3, 114.73, 122.03, 130.38, 141.85, 153.32, 164.79, 177.31, 191.65, 208.52, 225.38, 242.25, 260.65],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [87.63, 94.77, 101.9, 112.09, 119.22, 127.38, 138.58, 149.79, 161.0, 173.23, 187.24, 203.72, 220.2, 236.67, 254.65],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [98.81, 106.86, 114.9, 126.39, 134.43, 143.63, 156.26, 168.9, 181.54, 195.33, 211.13, 229.71, 248.29, 266.87, 287.14],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [133.99, 144.89, 155.8, 171.38, 182.29, 194.75, 211.89, 229.03, 246.16, 264.86, 286.28, 311.48, 336.67, 361.86, 389.34],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击循环伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [68.8, 74.4, 80.0, 88.0, 93.6, 100.0, 108.8, 117.6, 126.4, 136.0, 147.0, 159.94, 172.87, 185.81, 199.92],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击终结伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [124.7, 134.85, 145.0, 159.5, 169.65, 181.25, 197.2, 213.15, 229.1, 246.5, 266.44, 289.88, 313.33, 336.78, 362.36],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [89.51, 96.79, 104.08, 114.48, 121.77, 130.1, 141.54, 152.99, 164.44, 176.93, 189.42, 201.91, 214.4, 226.89, 239.37],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [178.97, 193.54, 208.11, 228.92, 243.49, 260.13, 283.03, 305.92, 328.81, 353.78, 378.76, 403.73, 428.7, 453.68, 478.65],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [223.55, 241.74, 259.94, 285.93, 304.13, 324.92, 353.52, 382.11, 410.7, 441.89, 473.09, 504.28, 535.47, 566.66, 597.86],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒'],
        },
        {
          'name': '最大持续时间',
          'value': ['5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '逆焰之刃',
      'description': '挥舞大剑向前劈砍，造成火元素伤害。\n可以连续施放3次。\n若在短时间内没有施放，则会进入冷却。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [94.4, 101.48, 108.56, 118.0, 125.08, 132.16, 141.6, 151.04, 160.48, 169.92, 179.36, 188.8, 200.6, 212.4, 224.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [97.6, 104.92, 112.24, 122.0, 129.32, 136.64, 146.4, 156.16, 165.92, 175.68, 185.44, 195.2, 207.4, 219.6, 231.8],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [128.8, 138.46, 148.12, 161.0, 170.66, 180.32, 193.2, 206.08, 218.96, 231.84, 244.72, 257.6, 273.7, 289.8, 305.9],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '黎明',
      'description': '爆发出烈焰的力量，击退周围的敌人，造成火元素伤害。随后，将烈焰凝聚在武器上，挥出向前飞行的火之鸟，对路径上的敌人造成高额火元素伤害，并在火之鸟行进的终点爆裂造成大量的火元素范围伤害。\n武器上凝聚的烈焰会使迪卢克获得火元素附魔。',
      'buff': [],
      'hit': [
        {
          'name': '斩击伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [204.0, 219.3, 234.6, 255.0, 270.3, 285.6, 306.0, 326.4, 346.8, 367.2, 387.6, 408.0, 433.5, 459.0, 484.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '持续伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [60.0, 64.5, 69.0, 75.0, 79.5, 84.0, 90.0, 96.0, 102.0, 108.0, 114.0, 120.0, 127.5, 135.0, 142.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '爆裂伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [204.0, 219.3, 234.6, 255.0, 270.3, 285.6, 306.0, 326.4, 346.8, 367.2, 387.6, 408.0, 433.5, 459.0, 484.5],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
        {
          'name': '附魔持续时间',
          'value': ['8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒'],
        },
      ],
      'energy': 40,
    },
  },
  14: {
    SkillType.Passive: [
      {
        'name': '全是宝藏',
        'description': '在小地图上显示周围的蒙德区域特产的位置。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '砰砰礼物',
        'description': '蹦蹦炸弹与普通攻击造成伤害时，有50%的几率赋予可莉一朵爆裂火花。\n施放重击时将消耗爆裂火花，使本次重击不消耗体力，造成的伤害提升50%。',
        'buff': [
          {
            'stat': Stats.DmgBonus,
            'value': 50.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.Charged,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '火花无限',
        'description': '可莉的重击造成暴击后，为队伍中所有角色恢复2点元素能量。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·砰砰',
      'description': '普通攻击\n投掷在碰撞后会爆炸的好东西！进行至多三段的炸弹攻击，造成火元素范围伤害。\n重击\n消耗一定体力，短暂咏唱后，轰击敌人，造成火元素范围伤害。\n下落攻击\n凝聚烈焰的力量，从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成火元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [72.16, 77.57, 82.98, 90.2, 95.61, 101.02, 108.24, 115.46, 122.67, 129.89, 137.39, 147.21, 157.02, 166.83, 176.65],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [62.4, 67.08, 71.76, 78.0, 82.68, 87.36, 93.6, 99.84, 106.08, 112.32, 118.81, 127.3, 135.78, 144.27, 152.76],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [89.92, 96.66, 103.41, 112.4, 119.14, 125.89, 134.88, 143.87, 152.86, 161.86, 171.21, 183.44, 195.67, 207.9, 220.12],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [157.36, 169.16, 180.96, 196.7, 208.5, 220.3, 236.04, 251.78, 267.51, 283.25, 299.61, 321.01, 342.42, 363.82, 385.22],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '蹦蹦炸弹',
      'description': '投出带来无限快乐的蹦蹦炸弹！\n蹦蹦炸弹会连续弹跳三次，每次弹跳都会引发爆炸，造成火元素范围伤害。\n第三次弹跳后，将分裂成许多诡雷。\n诡雷会在接触到敌人或一段时间后爆炸，造成火元素范围伤害。\n初始拥有2次可使用次数。',
      'buff': [],
      'hit': [
        {
          'name': '蹦蹦炸弹伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [95.2, 102.34, 109.48, 119.0, 126.14, 133.28, 142.8, 152.32, 161.84, 171.36, 180.88, 190.4, 202.3, 214.2, 226.1],
              'extra': {},
            },
          ],
        },
        {
          'name': '诡雷伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [32.8, 35.26, 37.72, 41.0, 43.46, 45.92, 49.2, 52.48, 55.76, 59.04, 62.32, 65.6, 69.7, 73.8, 77.9],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '诡雷持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '轰轰火花',
      'description': '可莉火力全开！在技能持续时间内，不停召唤轰轰火花攻击附近的敌人，造成火元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '轰轰火花伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [42.64, 45.84, 49.04, 53.3, 56.5, 59.7, 63.96, 68.22, 72.49, 76.75, 81.02, 85.28, 90.61, 95.94, 101.27],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  15: {
    SkillType.Passive: [
      {
        'name': '多多益善',
        'description': '完美烹饪食物时，有18%概率额外获得一个「奇怪的」品质的同种料理。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '蝶隐之时',
        'description': '蝶引来生施加的彼岸蝶舞状态结束后，队伍中所有角色（不包括胡桃自己）的暴击率提高12%，持续8秒。',
        'buff': [
          {
            'stat': Stats.CritRate,
            'value': 12.0,
            'buffType': BuffType.BuffForTeamWithoutMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '血之灶火',
        'description': '胡桃的生命值低于或等于50%时，获得33%火元素伤害加成。',
        'buff': [
          {
            'stat': Stats.EleDmgBonus,
            'value': 33.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·往生秘传枪法',
      'description': '普通攻击\n进行至多六段的连续枪击。\n重击\n消耗一定体力，向前方突进，对路径上的敌人造成伤害。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [46.89, 50.08, 53.28, 57.54, 60.74, 64.47, 69.26, 740.6, 78.85, 83.65, 88.44, 93.24, 98.04, 102.83, 107.63],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [48.25, 51.54, 54.83, 59.22, 62.51, 66.35, 71.28, 76.22, 81.15, 86.09, 91.02, 95.96, 100.89, 105.83, 110.76],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [61.05, 65.21, 69.38, 74.93, 79.09, 83.94, 90.19, 96.43, 102.68, 108.92, 151.16, 121.41, 127.65, 133.89, 140.14],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [65.64, 70.12, 74.59, 80.56, 85.03, 90.26, 96.97, 103.68, 110.4, 117.11, 123.82, 130.54, 137.25, 143.96, 150.68],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [33.27, 35.54, 37.81, 40.84, 43.1, 45.75, 49.15, 52.26, 55.96, 59.36, 62.77, 66.17, 69.57, 72.98, 76.38],
              'extra': {},
            },
            {
              'value': [35.2, 37.6, 40.0, 43.2, 45.6, 48.4, 52.0, 55.6, 59.2, 62.8, 66.4, 70.0, 73.6, 77.2, 80.8],
              'extra': {},
            },
          ],
        },
        {
          'name': '六段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [85.96, 91.82, 97.68, 105.49, 111.36, 118.19, 126.98, 135.78, 144.57, 153.36, 162.15, 170.94, 179.73, 188.52, 197.31],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [135.96, 145.23, 154.5, 166.86, 176.13, 186.95, 200.85, 214.76, 228.66, 242.57, 256.47, 270.38, 284.28, 298.19, 312.09],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [65.42, 69.88, 74.34, 80.29, 84.75, 89.55, 96.64, 103.33, 110.02, 116.71, 123.4, 130.1, 136.79, 143.48, 150.17],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [130.81, 139.73, 148.65, 160.54, 169.46, 179.86, 193.24, 206.62, 220.0, 233.38, 246.76, 260.13, 273.51, 286.89, 300.27],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [163.39, 174.53, 185.67, 200.52, 211.66, 224.66, 241.37, 258.08, 274.79, 291.5, 308.21, 324.92, 341.63, 358.34, 375.05],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '蝶引来生',
      'description':
          '只有永不间断的烈焰可以洗净世间的不净之物。\n胡桃消耗一部分生命值，击退周围敌人，进入彼岸蝶舞状态。\n彼岸蝶舞\n• 基于进入该状态时胡桃的生命值上限，提高胡桃的攻击力。通过这种方式获得的攻击力提升，不能超过胡桃基础攻击力的400%；\n• 将攻击伤害转为火元素伤害，该元素转化无法被附魔覆盖；\n• 重击会为命中的敌人施加血梅香效果；\n• 提高胡桃的抗打断能力。\n血梅香\n处于血梅香状态下的敌人，每4秒会受到一次火元素伤害。这个伤害视为元素战技伤害。\n同一个目标身上只能存在一个血梅香效果，且只能被胡桃自己刷新持续时间。\n彼岸蝶舞将在持续时间结束、胡桃下场或倒下时解除。',
      'buff': [
        {
          'name': '攻击力提高',
          'stat': Stats.AttackBonusByHp,
          'value': [3.84, 4.07, 4.3, 4.6, 4.83, 5.06, 5.36, 5.66, 5.96, 6.26, 6.56, 6.85, 7.15, 7.45, 7.75],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [
        {
          'name': '血梅香伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [64.0, 68.8, 73.6, 80.0, 84.8, 89.6, 96.0, 102.4, 108.8, 115.2, 121.6, 128.0, 136.0, 144.0, 152.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '技能消耗',
          'value': [
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值'
          ],
        },
        {
          'name': '血梅香持续时间',
          'value': ['8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒'],
        },
        {
          'name': '持续时间',
          'value': ['9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒'],
        },
        {
          'name': '冷却时间',
          'value': ['16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '安神秘法',
      'description': '挥动炽热的魂灵，造成大范围火元素伤害。\n命中敌人时，基于胡桃的生命值上限，恢复胡桃的生命值。这个效果最多对5个命中的敌人生效。\n如果技能命中时胡桃的生命值低于或等于50%，则造成更高的伤害与治疗量。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [303.27, 321.43, 339.59, 363.2, 381.36, 399.52, 423.13, 446.74, 470.34, 493.95, 517.56, 541.17, 564.78, 588.38, 611.99],
              'extra': {},
            },
          ],
        },
        {
          'name': '低血量时技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [379.09, 401.79, 424.49, 454.0, 476.7, 499.4, 528.91, 558.42, 587.93, 617.44, 646.95, 676.46, 705.97, 735.48, 764.99],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '治疗量',
          'value': [
            '6.26%最大生命值',
            '6.64%最大生命值',
            '7.01%最大生命值',
            '7.5%最大生命值',
            '7.88%最大生命值',
            '8.25%最大生命值',
            '8.74%最大生命值',
            '9.23%最大生命值',
            '9.71%最大生命值',
            '10.2%最大生命值',
            '10.69%最大生命值',
            '11.18%最大生命值',
            '11.66%最大生命值',
            '12.15%最大生命值',
            '12.64%最大生命值'
          ],
        },
        {
          'name': '低血量时治疗量',
          'value': [
            '8.35%最大生命值',
            '8.85%最大生命值',
            '9.33%最大生命值',
            '10%最大生命值',
            '10.5%最大生命值',
            '11%最大生命值',
            '11.65%最大生命值',
            '12.3%最大生命值',
            '12.95%最大生命值',
            '13.6%最大生命值',
            '14.25%最大生命值',
            '14.9%最大生命值',
            '15.55%最大生命值',
            '16.2%最大生命值',
            '16.85%最大生命值'
          ],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  16: {
    SkillType.Passive: [
      {
        'name': '应该安全',
        'description': '在蒙德执行探索派遣任务时，消耗的时间缩短25%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '热情复燃',
        'description': '热情过载的冷却时间减少20%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '无畏的热血',
        'description': '在美妙旅程领域内，热情过载具有如下效果：\n• 冷却时间减少50%；\n• 二段蓄力不会将班尼特自身击飞。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·好运剑',
      'description': '普通攻击\n进行至多五段的连续剑击。\n重击\n消耗一定体力，瞬间向前方挥出两剑。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [44.55, 48.17, 51.8, 56.98, 60.61, 64.75, 70.45, 76.15, 81.84, 88.06, 94.28, 100.49, 106.71, 112.92, 119.14],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [42.74, 46.22, 49.7, 54.67, 58.15, 62.13, 67.59, 73.06, 78.53, 84.49, 90.45, 96.42, 102.38, 108.35, 114.31],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [54.61, 59.06, 63.5, 69.85, 74.3, 79.38, 86.36, 93.35, 100.33, 107.95, 115.57, 123.19, 130.81, 138.43, 146.05],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [59.68, 64.54, 69.4, 76.34, 81.2, 86.75, 94.38, 102.02, 109.65, 117.98, 126.31, 134.64, 142.96, 151.29, 159.62],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [71.9, 77.75, 83.6, 91.96, 97.81, 104.5, 113.7, 122.89, 132.09, 142.12, 152.15, 162.18, 172.22, 182.25, 192.28],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [55.9, 60.45, 65.0, 71.5, 76.05, 81.25, 88.4, 95.55, 102.7, 110.5, 118.3, 126.1, 133.9, 141.7, 149.5],
              'extra': {},
            },
            {
              'value': [60.72, 65.66, 70.6, 77.66, 82.6, 88.25, 96.02, 103.78, 111.55, 120.02, 128.49, 136.96, 145.44, 153.91, 162.38],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '热情过载',
      'description':
          '班尼特将火元素与冒险的热情凝聚在剑上。根据热情凝聚的程度，可能会发生不同的事情…\n点按\n快速向前挥出火焰一击，造成火元素伤害。\n长按\n根据长按时间进行蓄力，释放时依照蓄力段数造成不同的效果。\n• 一段蓄力：发动二段攻击，造成火元素伤害并将敌人击飞；\n• 二段蓄力：发动三段连续攻击，造成可观的火元素伤害。最后一击会发生爆炸，将班尼特与敌人同时击飞。被击飞时，班尼特不会受到伤害。',
      'buff': [],
      'hit': [
        {
          'name': '点按伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [137.6, 147.92, 158.24, 172.0, 182.32, 192.64, 206.4, 220.16, 233.92, 247.68, 261.44, 275.2, 292.4, 309.6, 326.8],
              'extra': {},
            },
          ],
        },
        {
          'name': '一段蓄力伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [84.0, 90.3, 96.6, 105.0, 111.3, 117.6, 126.0, 134.4, 142.8, 151.2, 159.6, 168.0, 178.5, 189.0, 199.5],
              'extra': {},
            },
            {
              'value': [92.0, 98.9, 105.8, 115.0, 121.9, 128.8, 138.0, 147.2, 156.4, 165.6, 174.8, 184.0, 195.5, 207.0, 218.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段蓄力伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [88.0, 94.6, 101.2, 110.0, 116.6, 123.2, 132.0, 140.8, 149.6, 158.4, 167.2, 176.0, 187.0, 198.0, 209.0],
              'extra': {},
            },
            {
              'value': [96.0, 103.2, 110.4, 120.0, 127.2, 134.4, 144.0, 153.6, 163.2, 172.8, 182.4, 192.0, 204.0, 216.0, 228.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '爆炸伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [132.0, 141.9, 151.8, 165.0, 174.9, 184.8, 198.0, 211.2, 224.4, 237.6, 250.8, 264.0, 280.5, 297.0, 313.5],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': [
            '5/7.5/10秒',
            '5/7.5/10秒',
            '5/7.5/10秒',
            '5/7.5/10秒',
            '5/7.5/10秒',
            '5/7.5/10秒',
            '5/7.5/10秒',
            '5/7.5/10秒',
            '5/7.5/10秒',
            '5/7.5/10秒',
            '5/7.5/10秒',
            '5/7.5/10秒',
            '5/7.5/10秒',
            '5/7.5/10秒',
            '5/7.5/10秒'
          ],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '美妙旅程',
      'description':
          '班尼特进行腾跃轰击，造成火元素伤害，并生成鼓舞领域。\n鼓舞领域\n• 领域内的角色如果生命值低于或等于70%，会持续恢复生命值，回复量受益于班尼特的最大生命值；\n• 领域内的角色如果生命值高于70%，会基于班尼特的基础攻击力，以一定比例获得攻击力加成；\n• 为其中的角色施加火元素附着。',
      'buff': [
        {
          'name': '攻击力加成比例',
          'stat': Stats.AttackBonusByBaseAttack,
          'value': [56.0, 60.2, 64.4, 70.0, 74.2, 78.4, 84.0, 89.6, 95.2, 100.8, 106.4, 112.0, 119.0, 126.0, 133.0],
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [232.8, 250.26, 267.72, 291.0, 308.46, 325.92, 349.2, 372.48, 395.76, 419.04, 442.32, 465.6, 494.7, 523.8, 552.9],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续治疗',
          'value': [
            '6%最大生命值+577',
            '6.45%最大生命值+635',
            '6.9%最大生命值+698',
            '7.5%最大生命值+765',
            '7.95%最大生命值+837',
            '8.4%最大生命值+914',
            '9%最大生命值+996',
            '9.6%最大生命值+1083',
            '10.2%最大生命值+1174',
            '10.8%最大生命值+1270',
            '11.4%最大生命值+1371',
            '12%最大生命值+1477',
            '12.75%最大生命值+1588',
            '13.5%最大生命值+1703',
            '14.25%最大生命值+1824'
          ],
        },
        {
          'name': '持续时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  17: {
    SkillType.Passive: [
      {
        'name': '万民堂大厨',
        'description': '完美烹饪攻击类食物时，有12%概率获得2倍产出。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '交叉火力',
        'description': '锅巴的喷火距离提高20%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '绝云朝天椒',
        'description': '锅巴出击效果结束时，锅巴会在消失的位置留下辣椒。拾取辣椒会提高10%攻击力，持续10秒。',
        'buff': [
          {
            'stat': Stats.AttackBonus,
            'value': 10.0,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·白案功夫',
      'description': '普通攻击\n进行至多五段的连续枪击。\n重击\n消耗一定体力，向前方突进，对路径上的敌人造成伤害。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [42.05, 45.48, 48.9, 53.79, 57.21, 61.13, 66.5, 71.88, 77.26, 83.13, 89.85, 97.76, 105.67, 113.58, 122.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [42.14, 45.57, 49.0, 53.9, 57.33, 61.25, 66.64, 72.03, 77.42, 83.3, 90.04, 97.96, 105.88, 113.81, 122.45],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [26.06, 28.18, 30.3, 33.33, 35.45, 37.87, 41.21, 44.54, 47.87, 51.51, 55.68, 60.58, 65.48, 70.37, 75.72],
              'extra': {},
            },
            {
              'value': [26.06, 28.18, 30.3, 33.33, 35.45, 37.87, 41.21, 44.54, 47.87, 51.51, 55.68, 60.58, 65.48, 70.37, 75.72],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [14.1, 15.25, 16.4, 18.04, 19.19, 20.5, 22.3, 24.11, 25.91, 27.88, 30.14, 32.79, 35.44, 38.09, 40.98],
              'extra': {},
            },
            {
              'value': [14.1, 15.25, 16.4, 18.04, 19.19, 20.5, 22.3, 24.11, 25.91, 27.88, 30.14, 32.79, 35.44, 38.09, 40.98],
              'extra': {},
            },
            {
              'value': [14.1, 15.25, 16.4, 18.04, 19.19, 20.5, 22.3, 24.11, 25.91, 27.88, 30.14, 32.79, 35.44, 38.09, 40.98],
              'extra': {},
            },
            {
              'value': [14.1, 15.25, 16.4, 18.04, 19.19, 20.5, 22.3, 24.11, 25.91, 27.88, 30.14, 32.79, 35.44, 38.09, 40.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [71.04, 76.82, 82.6, 90.86, 96.64, 103.25, 112.34, 121.42, 130.51, 140.42, 151.78, 165.13, 178.49, 191.85, 206.42],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [121.69, 131.6, 141.5, 155.65, 165.56, 176.88, 192.44, 208.01, 223.57, 240.55, 260.01, 282.89, 305.77, 328.65, 353.61],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '锅巴出击',
      'description': '唤出喷火的锅巴，存在期间内，不断对敌人喷火，造成火元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '喷火伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [111.28, 119.63, 127.97, 139.1, 147.45, 155.79, 166.92, 178.05, 189.18, 200.3, 211.43, 222.56, 236.47, 250.38, 264.29],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '旋火轮',
      'description': '以控制火候与枪术的精湛技巧，甩出围绕自己快速旋转的旋火轮。\n存在期间内，旋火轮会跟随角色运动，对路径上的敌人造成火元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段挥舞伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [72.0, 77.4, 82.8, 90.0, 95.4, 100.8, 108.0, 115.2, 122.4, 129.6, 136.8, 144.0, 153.0, 162.0, 171.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段挥舞伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [88.0, 94.6, 101.2, 110.0, 116.6, 123.2, 132.0, 140.8, 149.6, 158.4, 167.2, 176.0, 187.0, 198.0, 209.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段挥舞伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [109.6, 117.82, 126.04, 137.0, 145.22, 153.44, 164.4, 175.36, 186.32, 197.28, 208.24, 219.2, 232.9, 246.6, 260.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '旋火轮伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [112.0, 120.4, 128.8, 140.0, 148.4, 156.8, 168.0, 179.2, 190.4, 201.6, 212.8, 224.0, 238.0, 252.0, 266.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  18: {
    SkillType.Passive: [
      {
        'name': '飞行冠军',
        'description': '队伍中自己的角色滑翔消耗的体力降低20%。\n无法与效果完全相同的固有天赋叠加。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '百发百中！',
        'description': '箭雨的暴击率提高10%，影响范围扩大30%。',
        'buff': [
          {
            'stat': Stats.CritRate,
            'value': 10.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.SkillQ,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '压制射击',
        'description': '瞄准射击命中弱点时，攻击力提高15%，持续10秒。',
        'buff': [
          {
            'stat': Stats.AttackBonus,
            'value': 15.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·神射手',
      'description': '普通攻击\n进行至多五段的连续弓箭射击。\n重击\n进行伤害更高、更为精准的瞄准射击。\n瞄准时，烈焰会在箭矢上持续积聚。聚满了烈焰的箭矢会造成火元素伤害。\n下落攻击\n从空中射出箭雨，并迅速下坠冲击地面，在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [36.12, 39.06, 42.0, 46.2, 49.14, 52.5, 57.12, 61.74, 66.36, 71.4, 76.44, 81.48, 86.52, 91.56, 96.6],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [36.12, 39.06, 42.0, 46.2, 49.14, 52.5, 57.12, 61.74, 66.36, 71.4, 76.44, 81.48, 86.52, 91.56, 96.6],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [46.44, 50.22, 54.0, 59.4, 63.18, 67.5, 73.44, 79.38, 85.32, 91.8, 98.28, 104.76, 111.24, 117.72, 124.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [47.3, 51.15, 55.0, 60.5, 64.35, 68.75, 74.8, 80.85, 86.9, 93.5, 100.1, 106.7, 113.3, 119.9, 126.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [59.34, 64.17, 69.0, 75.9, 80.73, 86.25, 93.84, 101.43, 109.02, 117.3, 125.58, 133.86, 142.14, 150.42, 158.7],
              'extra': {},
            },
          ],
        },
        {
          'name': '瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 92.82, 98.94, 105.06, 111.18, 117.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '满蓄力瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [124.0, 133.3, 142.6, 155.0, 164.3, 173.6, 186.0, 198.4, 210.8, 223.2, 235.6, 248.0, 263.5, 279.0, 294.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '爆弹玩偶',
      'description': '请可靠的兔兔伯爵上阵。\n兔兔伯爵\n• 持续嘲讽周围的敌人，吸引火力；\n• 耐久度按比例继承安柏的生命值上限；\n• 被摧毁或持续时间结束时，会发生剧烈的爆炸，造成火元素范围伤害。\n长按\n调整投掷方向。\n投掷距离随长按时间增加。',
      'buff': [],
      'hit': [
        {
          'name': '爆炸伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [123.2, 132.44, 141.68, 154.0, 163.24, 172.48, 184.8, 197.12, 209.44, 221.76, 234.08, 246.4, 261.8, 277.2, 292.6],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '继承生命',
          'value': [
            '41.36%',
            '44.46%',
            '47.56%',
            '51.7%',
            '54.8%',
            '57.9%',
            '62.04%',
            '66.18%',
            '70.31%',
            '74.45%',
            '78.58%',
            '82.72%',
            '87.89%',
            '93.06%',
            '98.23%'
          ],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '箭雨',
      'description': '射出火焰箭雨，持续造成火元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '箭雨单次伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [28.08, 30.19, 32.29, 35.1, 37.21, 39.31, 42.12, 44.93, 47.74, 50.54, 53.35, 56.16, 59.67, 63.18, 66.69],
              'extra': {},
            },
          ],
        },
        {
          'name': '箭雨总伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [505.44, 543.35, 581.26, 631.8, 669.71, 707.62, 758.16, 808.7, 859.25, 909.79, 960.34, 1010.88, 1074.06, 1137.24, 1200.42],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒'],
        },
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
      'energy': 40,
    },
  },
  19: {
    SkillType.Passive: [
      {
        'name': '摇滚的食谱',
        'description': '完美烹饪防御类食物时，有12%概率获得2倍产出。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '「没听众也要演奏…」',
        'description': '减少热情拂扫的护盾所需的命中敌人数量：\n• 二级护盾 • 歌头节拍：命中一名敌人；\n• 三级护盾 • 舞遍节拍：命中二名或更多敌人。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '「…这才是摇滚！」',
        'description': '处于热情拂扫的护盾保护下的角色造成的物理伤害提高15%。',
        'buff': [
          {
            'stat': Stats.PhyDmgBonus,
            'value': 15.0,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·炎舞',
      'description': '普通攻击\n进行至多四段的连续挥砍。\n重击\n持续消耗体力，旋转大剑攻击周围的敌人。\n停止旋转时，会进行一次格外有力的挥砍。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [76.54, 82.77, 89.0, 97.9, 104.13, 111.25, 121.04, 130.83, 140.62, 151.3, 161.98, 172.66, 183.34, 194.02, 204.7],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [73.96, 79.98, 86.0, 94.6, 100.62, 107.5, 116.96, 126.42, 135.88, 146.2, 156.52, 166.84, 177.16, 187.48, 197.8],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [95.46, 103.23, 111.0, 122.1, 129.87, 138.75, 150.96, 163.17, 175.38, 188.7, 202.02, 215.34, 228.66, 241.98, 255.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [115.84, 125.27, 134.7, 148.17, 157.6, 168.38, 183.19, 198.01, 212.83, 228.99, 245.15, 261.32, 277.48, 293.65, 309.81],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击循环伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [62.55, 67.64, 72.73, 80.0, 85.09, 90.91, 98.91, 106.91, 114.91, 123.64, 132.36, 141.09, 149.82, 158.55, 167.27],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击终结伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.09, 122.3, 131.5, 144.65, 153.86, 164.38, 178.84, 193.31, 207.77, 223.55, 239.33, 255.11, 270.89, 286.67, 302.45],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [74.59, 80.66, 86.73, 95.4, 101.47, 108.41, 117.95, 127.49, 137.03, 147.44, 157.85, 168.26, 178.66, 189.07, 199.48],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [149.14, 161.28, 173.42, 190.77, 202.91, 216.78, 235.86, 254.93, 274.01, 294.82, 315.63, 336.44, 357.25, 378.06, 398.87],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [186.29, 201.45, 216.62, 238.28, 253.44, 270.77, 294.6, 318.42, 342.25, 368.25, 394.24, 420.23, 446.23, 472.22, 498.21],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '热情拂扫',
      'description':
          '辛焱挥动乐器，对周围的敌人造成火元素伤害，并借由「观众」的「热情」，形成护盾。\n护盾的伤害吸收量受益于辛焱的防御力，并基于命中敌人的数目：\n• 未命中或命中一名敌人：一级护盾 • 散序节拍；\n• 命中二名敌人：二级护盾 • 歌头节拍；\n• 命中三名或更多敌人时，将产生三级护盾 • 舞遍节拍。除了吸收伤害，还会间歇性对周围的敌人造成火元素伤害。\n护盾具有如下特性：\n• 施放的瞬间，为辛焱施加火元素附着；\n• 对火元素伤害有250%的吸收效果。',
      'buff': [],
      'hit': [
        {
          'name': '挥舞伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [169.6, 182.32, 195.04, 212.0, 224.72, 237.44, 254.4, 271.36, 288.32, 305.28, 322.24, 339.2, 360.4, 381.6, 402.8],
              'extra': {},
            },
          ],
        },
        {
          'name': '持续伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [33.6, 36.12, 38.64, 42.0, 44.52, 47.04, 50.4, 53.76, 57.12, 60.48, 63.84, 67.2, 71.4, 75.6, 79.8],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '一级护盾吸收量',
          'value': [
            '104.04%防御力+501',
            '111.84%防御力+551',
            '119.65%防御力+605',
            '130.05%防御力+663',
            '137.85%防御力+726',
            '145.66%防御力+793',
            '156.06%防御力+864',
            '166.46%防御力+939',
            '176.87%防御力+1018',
            '187.27%防御力+1101',
            '197.68%防御力+1189',
            '208.08%防御力+1281',
            '221.09%防御力+1377',
            '234.09%防御力+1477',
            '247.1%防御力+1581'
          ],
        },
        {
          'name': '二级护盾吸收量',
          'value': [
            '122.4%防御力+589',
            '131.58%防御力+648',
            '140.76%防御力+712',
            '153%防御力+780',
            '162.18%防御力+854',
            '171.36%防御力+932',
            '183.6%防御力+1016',
            '195.84%防御力+1104',
            '208.08%防御力+1197',
            '220.32%防御力+1296',
            '232.56%防御力+1399',
            '244.8%防御力+1507',
            '260.1%防御力+1620',
            '275.4%防御力+1737',
            '290.7%防御力+1860'
          ],
        },
        {
          'name': '三级护盾吸收量',
          'value': [
            '144%防御力+693',
            '154.8%防御力+762',
            '165.6%防御力+837',
            '180%防御力+918',
            '190.8%防御力+1005',
            '201.6%防御力+1097',
            '216%防御力+1195',
            '230.4%防御力+1299',
            '244.8%防御力+1409',
            '259.2%防御力+1524',
            '273.6%防御力+1646',
            '288%防御力+1773',
            '306%防御力+1905',
            '324%防御力+2044',
            '342%防御力+2188'
          ],
        },
        {
          'name': '护盾持续时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
        {
          'name': '冷却时间',
          'value': ['18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '叛逆刮弦',
      'description': '迅速扫弦引发音波，击退敌人，对周围的敌人造成物理伤害，激起「舞台」上的氛围。\n因为氛围实在太过炙烈，所以会引起烈焰，对周围的敌人持续造成火元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [340.8, 366.36, 391.92, 426.0, 451.56, 477.12, 511.2, 545.28, 579.36, 613.44, 647.52, 681.6, 724.2, 766.8, 809.4],
              'extra': {},
            },
          ],
        },
        {
          'name': '火元素持续伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [40.0, 43.0, 46.0, 50.0, 53.0, 56.0, 60.0, 64.0, 68.0, 72.0, 76.0, 80.0, 85.0, 90.0, 95.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒', '2秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  20: {
    SkillType.Passive: [
      {
        'name': '博闻强记',
        'description': '在小地图上显示周围的璃月区域特产的位置。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '关联条款',
        'description': '烟绯通过重击消耗丹火印时，每枚丹火印会提升烟绯5%的火元素伤害加成，持续6秒。在该效果的持续时间内再次施放重击时，会先移除原有的效果。',
        'buff': [
          {
            'stat': Stats.EleDmgBonus,
            'value': 15.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '法兽灼眼',
        'description': '烟绯主动施放的重击对敌人造成暴击时，会额外造成一次80%攻击力的火元素范围伤害。该伤害视为重击伤害。',
        'buff': [],
        'hit': [
          {
            'name': '火元素范围伤害',
            'damageType': DamageType.Charged,
            'elementType': SkillElementType.Element,
            'value': [
              {
                'value': 80.0,
                'extra': {},
              },
            ],
          },
        ],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·火漆制印',
      'description':
          '普通攻击\n连续发射火球，造成最多三段的火元素伤害。\n普通攻击命中敌人时，会赋予烟绯一枚丹火印。初始最多持有三枚丹火印，每次触发都会刷新已有的丹火印持续时间。\n每枚丹火印都会降低烟绯的体力消耗，并会在烟绯退场时消失。\n重击\n消耗体力，短暂咏唱后，消耗所有的丹火印，在前方造成火元素范围伤害。\n根据被消耗的丹火印数量，强化这次重击的范围与伤害。\n下落攻击\n凝聚火元素的力量，从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成火元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [58.34, 62.72, 67.09, 72.93, 77.3, 81.68, 87.51, 93.35, 99.18, 105.01, 110.85, 116.68, 123.98, 131.27, 138.56],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [52.13, 56.04, 59.94, 65.16, 69.07, 72.98, 78.19, 83.4, 88.61, 93.83, 99.04, 104.25, 110.77, 117.28, 123.8],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [76.01, 81.71, 87.41, 95.02, 100.72, 106.42, 114.02, 121.62, 129.22, 136.82, 144.42, 152.03, 161.53, 171.03, 180.53],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [98.23, 104.11, 109.99, 117.64, 123.52, 129.40, 137.05, 144.70, 152.34, 159.99, 167.64, 175.28, 182.93, 190.58, 198.22],
              'extra': {},
            },
            {
              'value': [115.56, 122.48, 129.40, 138.40, 145.32, 152.24, 161.24, 170.23, 179.23, 188.22, 197.22, 206.22, 215.21, 224.21, 233.20],
              'extra': {},
            },
            {
              'value': [132.90, 140.86, 148.81, 159.16, 167.12, 175.08, 185.42, 195.77, 206.11, 216.46, 226.80, 237.15, 247.49, 257.84, 268.18],
              'extra': {},
            },
            {
              'value': [150.23, 159.23, 168.23, 179.92, 188.92, 197.91, 209.61, 221.30, 233.0, 244.69, 256.39, 268.08, 279.78, 291.47, 303.17],
              'extra': {},
            },
            {
              'value': [167.57, 177.60, 187.64, 200.68, 210.71, 220.75, 233.79, 246.84, 259.88, 272.92, 285.97, 299.01, 312.06, 325.10, 338.15],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50'],
        },
        {
          'name': '丹火印降低体力消耗',
          'value': ['每个15%', '每个15%', '每个15%', '每个15%', '每个15%', '每个15%', '每个15%', '每个15%', '每个15%', '每个15%', '每个15%', '每个15%', '每个15%', '每个15%', '每个15%'],
        },
        {
          'name': '丹火印持续时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '丹书立约',
      'description': '唤出烈焰，造成火元素范围伤害。\n命中敌人后，会为烟绯赋予最大数量的丹火印。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [169.6, 182.32, 195.04, 212.0, 224.72, 237.44, 254.4, 271.36, 288.32, 305.28, 322.24, 339.2, 360.4, 381.6, 402.8],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '凭此结契',
      'description': '引发喷薄爆发的烈火，冲击周围的敌人，造成火元素范围伤害，并为烟绯自己赋予最大数量的丹火印与灼灼效果。\n灼灼\n具有如下效果：\n• 每间隔一段时间，为烟绯赋予一枚丹火印；\n• 提高重击造成的伤害。\n灼灼效果会在烟绯退场与倒下时移除。',
      'buff': [
        {
          'name': '重击伤害提升',
          'stat': Stats.DmgBonus,
          'value': [33.4, 35.4, 37.4, 40.0, 42.0, 44.0, 46.6, 49.2, 51.8, 54.4, 57.0, 59.6, 62.2, 64.8, 67.4],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Charged,
          ],
        },
      ],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [182.4, 196.08, 209.76, 228.0, 241.68, 255.36, 273.6, 291.84, 310.08, 328.32, 346.56, 364.8, 387.6, 410.4, 433.2],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '丹火印赋予间隔',
          'value': ['1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒'],
        },
        {
          'name': '持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  21: {
    SkillType.Passive: [
      {
        'name': '炎色配比法',
        'description': '制作装潢、摆件、景观类摆设时，有100%概率返还部分材料。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '袖火百景图',
        'description': '在焰硝庭火舞的持续期间内，宵宫的普通攻击命中后，将为宵宫提供2%火元素伤害加成。该效果持续3秒，至多叠加10次。',
        'buff': [
          {
            'stat': Stats.EleDmgBonus,
            'value': 20.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '炎昼风物诗',
        'description': '施放琉金云间草后的15秒内，附近的队伍中所有其他角色（不包括宵宫自己）攻击力提高10%。此外，依据宵宫自己施放琉金云间草时固有天赋「袖火百景图」的叠加层数，将额外提升上述的攻击力效果，每层提升1%攻击力。',
        'buff': [
          {
            'stat': Stats.AttackBonus,
            'value': 10.0,
            'buffType': BuffType.BuffForTeamWithoutMe,
            'damageType': [
              DamageType.All,
            ],
          },
          {
            'stat': Stats.AttackBonus,
            'value': 10.0,
            'buffType': BuffType.BuffForTeamWithoutMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·烟火打扬',
      'description':
          '普通攻击\n进行至多五段的连续弓箭射击。\n重击\n进行伤害更高、更为精准的瞄准射击。\n瞄准时，火焰会在箭矢上持续积聚，并随攻击发射出去。根据蓄力时间长短，能造成不同的效果：\n• 一段蓄力：射出附有烈焰的箭矢，造成火元素伤害；\n• 二段蓄力：依据蓄力时间，产生至多3枚焰硝矢，随宵宫这次瞄准射击释放。焰硝矢会自行追踪附近的敌人，并在命中时造成火元素伤害。\n下落攻击\n从空中射出箭雨，并迅速下坠冲击地面，在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [35.64, 38.07, 40.5, 43.74, 46.17, 49.01, 52.65, 56.29, 59.94, 63.59, 67.23, 70.88, 74.52, 78.17, 81.81],
              'extra': {},
            },
            {
              'value': [35.64, 38.07, 40.5, 43.74, 46.17, 49.01, 52.65, 56.29, 59.94, 63.59, 67.23, 70.88, 74.52, 78.17, 81.81],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [68.38, 73.04, 77.7, 83.92, 88.58, 94.02, 101.01, 108.0, 115.0, 121.99, 128.98, 135.98, 142.97, 149.96, 156.95],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [88.89, 94.95, 101.01, 109.09, 115.15, 122.22, 131.31, 140.4, 149.49, 158.59, 167.68, 176.77, 185.86, 194.95, 204.04],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [46.42, 49.59, 52.75, 56.97, 60.14, 63.83, 68.58, 73.32, 78.07, 82.82, 87.57, 92.31, 97.06, 101.81, 106.56],
              'extra': {},
            },
            {
              'value': [46.42, 49.59, 52.75, 56.97, 60.14, 63.83, 68.58, 73.32, 78.07, 82.82, 87.57, 92.31, 97.06, 101.81, 106.56],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [105.86, 113.08, 120.3, 129.92, 137.14, 145.56, 156.39, 167.22, 178.04, 188.87, 199.7, 210.53, 221.35, 232.18, 243.01],
              'extra': {},
            },
          ],
        },
        {
          'name': '瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 92.82, 98.94, 105.06, 111.18, 117.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '满蓄力瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [124.0, 133.3, 142.6, 155.0, 164.3, 173.6, 186.0, 198.4, 210.8, 223.2, 235.6, 248.0, 263.5, 279.0, 294.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '焰硝矢伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [16.4, 17.63, 18.86, 20.5, 21.73, 22.96, 24.6, 26.24, 27.88, 29.52, 31.16, 32.8, 34.85, 36.9, 38.95],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '焰硝庭火舞',
      'description': '舞动线香烟火，让用于烟火的焰硝环绕在宵宫的身边。\n庭火焰硝\n在持续期间内，将宵宫的普通攻击发射的箭矢转为炽焰箭，造成的伤害转为火元素伤害，并提高普通攻击造成的伤害；「普通攻击 • 烟火打扬」的二段蓄力在持续期间内无法再产生焰硝矢。\n效果将在宵宫退场时解除。',
      'buff': [
        {
          'name': '炽焰箭伤害',
          'stat': Stats.DmgBonusExtra,
          'value': [137.91, 140.18, 142.45, 145.4, 147.67, 149.94, 152.89, 155.84, 158.79, 161.74, 164.7, 167.65, 170.6, 173.55, 176.5],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
      ],
      'hit': [],
      'other': [
        {
          'name': '持续时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
        {
          'name': '冷却时间',
          'value': ['18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '琉金云间草',
      'description':
          '宵宫随着自创的烟火「琉金云间草」腾跃至空中，向前发射满载惊喜的焰火箭，造成火元素范围伤害，并对命中的其中一名敌人附上「琉金火光」。\n琉金火光\n队伍中所有角色（不包括宵宫自己）的普通攻击、重击、下落攻击、元素战技、元素爆发命中处于琉金火光影响下的敌人，会引发爆炸，造成火元素范围伤害。\n处于琉金火光影响下的敌人在持续期间内被击败时，琉金火光将转移至附近的另一名敌人，并继承持续时间。\n琉金火光每2秒至多引发一次爆炸。宵宫倒下时，由宵宫自己的技能产生的琉金火光效果会解除。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [127.2, 136.74, 146.28, 159.0, 168.54, 178.08, 190.8, 203.52, 216.24, 228.96, 241.68, 254.4, 270.3, 286.2, 302.1],
              'extra': {},
            },
          ],
        },
        {
          'name': '琉金火光爆炸伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [122.0, 131.15, 140.3, 152.5, 161.65, 170.8, 183.0, 195.2, 207.4, 219.6, 231.8, 244.0, 259.25, 274.5, 289.75],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  22: {
    SkillType.Passive: [
      {
        'name': '悬鲷狩',
        'description': '旅行者在稻妻成功钓鱼时，因为托马的帮助，有20%概率获得2倍产出。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '甲衣交叠',
        'description': '当前场上自己的角色获取或刷新烈烧佑命护盾时，护盾强效提升5%，持续时间6秒。\n此效果每0.3秒至多触发一次，至多叠加5次。',
        'buff': [
          {
            'stat': Stats.ShieldStrength,
            'value': 25.0,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '烈火攻燔',
        'description': '真红炽火之大铠的炽火崩破造成的伤害提高，提高值相当于托马生命值上限的2.2%。',
        'buff': [
          {
            'stat': Stats.ExtraDamageByHp,
            'value': 2.2,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.SkillQSpecial,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·迅破枪势',
      'description': '普通攻击\n进行至多四段的连续枪击。\n重击\n消耗一定体力，向前方突进，对路径上的敌人造成伤害。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [44.39, 48.01, 51.62, 56.78, 60.4, 64.53, 70.2, 75.88, 81.56, 87.75, 93.95, 100.14, 106.34, 112.53, 118.73],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.63, 47.18, 50.73, 55.8, 59.35, 63.41, 68.99, 74.57, 80.15, 86.24, 92.33, 98.42, 104.5, 110.59, 116.68],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [26.79, 28.97, 31.15, 34.27, 36.45, 38.94, 42.36, 45.79, 49.22, 52.96, 56.69, 60.43, 64.17, 67.91, 71.65],
              'extra': {},
            },
            {
              'value': [26.79, 28.97, 31.15, 34.27, 36.45, 38.94, 42.36, 45.79, 49.22, 52.96, 56.69, 60.43, 64.17, 67.91, 71.65],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [67.36, 72.84, 78.32, 86.15, 91.63, 97.9, 106.52, 115.13, 123.75, 133.14, 142.54, 151.94, 161.34, 170.74, 180.14],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [112.75, 121.92, 131.1, 144.21, 153.39, 163.88, 178.3, 192.72, 207.14, 222.87, 238.6, 254.33, 270.07, 285.8, 301.53],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '烈烧佑命之侍护',
      'description':
          '托马以枪尖刺地作为支点，倾注燃焰之力，向前迅猛踢击，造成火元素范围伤害，唤出护体的烈烧佑命护盾，并在施放的瞬间，为托马施加火元素附着。\n护盾的伤害吸收量受益于托马的生命值上限。\n烈烧佑命护盾具有如下特性：\n• 对火元素伤害有250%的吸收效果；\n• 护盾剩余的伤害吸收量在获取新的烈烧佑命护盾时将会叠加，并刷新持续时间。\n护盾的伤害吸收量至多不超过托马生命值上限的一定比例。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [146.4, 157.38, 168.36, 183.0, 193.98, 204.96, 219.6, 234.24, 248.88, 263.52, 278.16, 292.8, 311.1, 329.4, 347.7],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '护盾吸收量',
          'value': [
            '7.2%最大生命值+693',
            '7.74%最大生命值+763',
            '8.28%最大生命值+838',
            '9%最大生命值+919',
            '9.54%最大生命值+1005',
            '10.08%最大生命值+1098',
            '10.8%最大生命值+1196',
            '11.52%最大生命值+1300',
            '12.24%最大生命值+1410',
            '12.96%最大生命值+1525',
            '13.68%最大生命值+1647',
            '14.4%最大生命值+1774',
            '15.3%最大生命值+1907',
            '16.2%最大生命值+2046',
            '17.1%最大生命值+2190'
          ],
        },
        {
          'name': '护盾持续时间',
          'value': ['8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒'],
        },
        {
          'name': '护盾吸收量上限',
          'value': [
            '19.6%最大生命值+1887',
            '21.07%最大生命值+2076',
            '22.54%最大生命值+2281',
            '24.5%最大生命值+2501',
            '25.97%最大生命值+2737',
            '27.44%最大生命值+2989',
            '29.4%最大生命值+3256',
            '31.36%最大生命值+3539',
            '33.32%最大生命值+3838',
            '35.28%最大生命值+4153',
            '37.24%最大生命值+4483',
            '39.2%最大生命值+4829',
            '41.65%最大生命值+5191',
            '44.1%最大生命值+5568',
            '46.55%最大生命值+5962'
          ],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '真红炽火之大铠',
      'description':
          '托马旋转长枪，以炽烈的燃焰挥斩周围的敌人，造成火元素范围伤害，并产生炽火大铠。\n炽火大铠\n处于炽火大铠效果下的当前场上角色进行普通攻击时，将触发炽火崩破，造成火元素范围伤害，并唤出护体的烈烧佑命护盾。\n炽火崩破每1秒至多触发一次。\n产生的护盾，除伤害吸收量以外，特性与元素战技「烈烧佑命之侍护」的护盾相同：\n• 对火元素伤害有250%的吸收效果；\n• 护盾剩余的伤害吸收量在获取新的烈烧佑命护盾时将会叠加，并刷新持续时间。\n护盾的伤害吸收量至多不超过托马生命值上限的一定比例。\n托马倒下时，将会清除炽火大铠的效果。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [88.0, 94.6, 101.2, 110.0, 116.6, 123.2, 132.0, 140.8, 149.6, 158.4, 167.2, 176.0, 187.0, 198.0, 209.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '炽火崩破伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [58.0, 62.35, 66.7, 72.5, 76.85, 81.2, 87.0, 92.8, 98.6, 104.4, 110.2, 116.0, 123.25, 130.5, 137.75],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '护盾吸收量',
          'value': [
            '1.14%最大生命值+110',
            '1.23%最大生命值+121',
            '1.32%最大生命值+133',
            '1.43%最大生命值+146',
            '1.52%最大生命值+160',
            '1.6%最大生命值+174',
            '1.72%最大生命值+190',
            '1.83%最大生命值+206',
            '1.94%最大生命值+224',
            '2.06%最大生命值+242',
            '2.17%最大生命值+261',
            '2.29%最大生命值+282',
            '2.43%最大生命值+303',
            '2.57%最大生命值+325',
            '2.72%最大生命值+348'
          ],
        },
        {
          'name': '护盾持续时间',
          'value': ['8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒'],
        },
        {
          'name': '炽火大铠持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  23: {
    SkillType.Passive: [
      {
        'name': '前尘旧忆',
        'description': '在小地图上显示周围的璃月区域特产的位置。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '延命妙法',
        'description': '处于仙法 • 寒病鬼差状态下的角色触发元素反应时，受治疗加成提升20%，持续8秒。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '玉签偶开',
        'description': '七七的普通攻击与重击命中敌人时，有50%的几率为敌人添加一枚度厄真符，持续6秒。该效果每30秒只能触发一次。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·云来古剑法',
      'description': '普通攻击\n进行至多五段的连续剑击。\n重击\n消耗一定体力，瞬间向前方挥出两剑。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [37.75, 40.83, 43.9, 48.29, 51.36, 54.88, 59.7, 64.53, 69.36, 74.63, 79.9, 85.17, 90.43, 95.7, 100.97],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [38.87, 42.04, 45.2, 49.72, 52.88, 56.5, 61.47, 66.44, 71.42, 76.84, 82.26, 87.69, 93.11, 98.54, 103.96],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [24.17, 26.13, 28.1, 30.91, 32.88, 35.13, 38.22, 41.31, 44.4, 47.77, 51.14, 54.51, 57.89, 61.26, 64.63],
              'extra': {},
            },
            {
              'value': [24.17, 26.13, 28.1, 30.91, 32.88, 35.13, 38.22, 41.31, 44.4, 47.77, 51.14, 54.51, 57.89, 61.26, 64.63],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [24.68, 26.69, 28.7, 31.57, 33.58, 35.88, 39.03, 42.19, 45.35, 48.79, 52.23, 55.68, 59.12, 62.57, 66.01],
              'extra': {},
            },
            {
              'value': [24.68, 26.69, 28.7, 31.57, 33.58, 35.88, 39.03, 42.19, 45.35, 48.79, 52.23, 55.68, 59.12, 62.57, 66.01],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.04, 68.17, 73.3, 80.63, 85.76, 91.63, 99.69, 107.75, 115.81, 124.61, 133.41, 142.2, 151.0, 159.79, 168.59],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [64.33, 69.56, 74.8, 82.28, 87.52, 93.5, 101.73, 109.96, 118.18, 127.16, 136.14, 145.11, 154.09, 163.06, 172.04],
              'extra': {},
            },
            {
              'value': [64.33, 69.56, 74.8, 82.28, 87.52, 93.5, 101.73, 109.96, 118.18, 127.16, 136.14, 145.11, 154.09, 163.06, 172.04],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '仙法·寒病鬼差',
      'description':
          '冰血化符，召唤寒病鬼差，并对周围的敌人造成冰元素伤害。\n寒病鬼差\n• 七七的普通攻击与重击命中时，为队伍中自己的角色，以及附近的友方角色恢复生命值，回复量受益于七七的攻击力；\n• 每隔一段时间，为当前场上自己的角色恢复生命值；\n• 跟随角色行动，对路径上的敌人造成冰元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [96.0, 103.2, 110.4, 120.0, 127.2, 134.4, 144.0, 153.6, 163.2, 172.8, 182.4, 192.0, 204.0, 216.0, 228.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '寒病鬼差伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [36.0, 38.7, 41.4, 45.0, 47.7, 50.4, 54.0, 57.6, 61.2, 64.8, 68.4, 72.0, 76.5, 81.0, 85.5],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '命中治疗量',
          'value': [
            '10.56%攻击力+67',
            '11.35%攻击力+74',
            '12.14%攻击力+81',
            '13.2%攻击力+89',
            '13.99%攻击力+98',
            '14.78%攻击力+107',
            '15.84%攻击力+116',
            '16.9%攻击力+126',
            '17.95%攻击力+137',
            '19.01%攻击力+148',
            '20.06%攻击力+160',
            '21.12%攻击力+172',
            '22.44%攻击力+185',
            '23.76%攻击力+199',
            '25.08%攻击力+213'
          ],
        },
        {
          'name': '持续治疗量',
          'value': [
            '69.6%攻击力+451',
            '74.82%攻击力+496',
            '80.04%攻击力+544',
            '87%攻击力+597',
            '92.22%攻击力+653',
            '97.44%攻击力+713',
            '104.4%攻击力+777',
            '111.36%攻击力+845',
            '118.32%攻击力+916',
            '125.28%攻击力+991',
            '132.24%攻击力+1070',
            '139.2%攻击力+1153',
            '147.9%攻击力+1239',
            '156.6%攻击力+1329',
            '165.3%攻击力+1423'
          ],
        },
        {
          'name': '持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '仙法·救苦度厄',
      'description': '七七释放体内封印的仙力，以度厄真符标记附近的敌人，并造成冰元素伤害。\n度厄真符\n处于度厄真符影响下的敌人受到伤害时，为造成伤害的角色恢复生命值。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [284.8, 306.16, 327.52, 356.0, 377.36, 398.72, 427.2, 455.68, 484.16, 512.64, 541.12, 569.6, 605.2, 640.8, 676.4],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '治疗量',
          'value': [
            '90%攻击力+577',
            '96.75%攻击力+635',
            '103.5%攻击力+698',
            '112.5%攻击力+765',
            '119.25%攻击力+837',
            '126%攻击力+914',
            '135%攻击力+996',
            '144%攻击力+1083',
            '153%攻击力+1174',
            '162%攻击力+1270',
            '171%攻击力+1371',
            '180%攻击力+1477',
            '191.25%攻击力+1588',
            '202.5%攻击力+1703',
            '213.75%攻击力+1824'
          ],
        },
        {
          'name': '持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  24: {
    SkillType.Passive: [
      {
        'name': '藏弓待用',
        'description': '锻造弓类武器时，返还15%消耗的矿石。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '唯此一心',
        'description': '霜华矢发射后的5秒内，会使接下来的发射的霜华矢与这些霜华矢引发的霜华绽发的暴击率提高20%。',
        'buff': [
          {
            'stat': Stats.CritRate,
            'value': 20.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.Charged,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '天地交泰',
        'description': '降众天华领域内的队伍中当前场上角色获得20%冰元素伤害加成。',
        'buff': [
          {
            'stat': Stats.EleDmgBonus,
            'value': 20.0,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·流天射术',
      'description':
          '普通攻击\n进行至多六段的连续弓箭射击。\n重击\n进行伤害更高、更为精准的瞄准射击。\n瞄准时，冰寒之气会在箭矢上持续积聚，并随攻击发射出去。根据蓄力时间长短，能造成不同的效果：\n• 一段蓄力：射出附有寒气的箭矢，造成冰元素伤害；\n• 二段蓄力：发射霜华矢，造成冰元素伤害；命中后霜华绽发，再次造成冰元素范围伤害。\n下落攻击\n从空中射出箭雨，并迅速下坠冲击地面，在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [31.73, 34.32, 36.9, 40.59, 43.17, 46.13, 50.18, 54.24, 58.3, 62.73, 67.8, 73.77, 79.74, 85.7, 92.21],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [35.6, 38.5, 41.4, 45.54, 48.44, 51.75, 56.3, 60.86, 65.41, 70.38, 76.07, 82.77, 89.46, 96.16, 103.46],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [45.49, 49.2, 52.9, 58.19, 61.89, 66.13, 71.94, 77.76, 83.58, 89.93, 97.2, 105.76, 114.31, 122.87, 132.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [45.49, 49.2, 52.9, 58.19, 61.89, 66.13, 71.94, 77.76, 83.58, 89.93, 97.2, 105.76, 114.31, 122.87, 132.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [48.25, 52.17, 56.1, 61.71, 65.64, 70.13, 76.3, 82.47, 88.64, 95.37, 103.08, 112.16, 121.23, 130.3, 140.19],
              'extra': {},
            },
          ],
        },
        {
          'name': '六段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [57.62, 62.31, 67.0, 73.7, 78.39, 83.75, 91.12, 98.49, 105.86, 113.9, 123.11, 133.95, 144.78, 155.61, 167.43],
              'extra': {},
            },
          ],
        },
        {
          'name': '瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 92.82, 98.94, 105.06, 111.18, 117.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '一段蓄力瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [124.0, 133.3, 142.6, 155.0, 164.3, 173.6, 186.0, 198.4, 210.8, 223.2, 235.6, 248.0, 263.5, 279.0, 294.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '霜华矢命中伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [128.0, 137.6, 147.2, 160.0, 169.6, 179.2, 192.0, 204.8, 217.6, 230.4, 243.2, 256.0, 272.0, 288.0, 304.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '霜华矢·霜华绽发伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [217.6, 233.92, 250.24, 272.0, 288.32, 304.64, 326.4, 348.16, 369.92, 391.68, 413.44, 435.2, 462.4, 489.6, 516.8],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '山泽麟迹',
      'description': '甘雨留下一朵冰莲并迅速后退，远离一切魑魅魍魉，造成冰元素范围伤害。\n冰莲\n• 持续嘲讽周围的敌人，吸引敌人攻击；\n• 耐久度按比例继承甘雨的生命值上限；\n• 被摧毁或持续时间结束时，会剧烈地绽放，造成冰元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [132.0, 141.9, 151.8, 165.0, 174.9, 184.8, 198.0, 211.2, 224.4, 237.6, 250.8, 264.0, 280.5, 297.0, 313.5],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '继承生命',
          'value': ['120%', '129%', '138%', '150%', '159%', '168%', '180%', '192%', '204%', '216%', '228%', '240%', '255%', '270%', '285%'],
        },
        {
          'name': '持续时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '冷却时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '降众天华',
      'description': '凝聚大气中的霜雪，召唤退魔的冰灵珠。\n存在期间内，冰灵珠会持续降下冰棱，攻击范围内的敌人，造成冰元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '冰棱伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [70.27, 75.54, 80.81, 87.84, 93.11, 98.38, 105.41, 112.44, 119.46, 126.49, 133.52, 140.54, 149.33, 158.11, 166.9],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  25: {
    SkillType.Passive: [
      {
        'name': '贵族的自省',
        'description': '合成角色天赋素材时，有10%概率获得2倍产出。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '潮卷冰削',
        'description': '长按施放冰潮的涡旋时，若一次性消耗了2层冷酷之心效果，则创造会立即爆发的残缺光降之剑，造成相当于凝浪之光剑的光降之剑基础伤害50%的物理伤害。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '战欲涌现',
        'description': '施放凝浪之光剑时，重置冰潮的涡旋的冷却时间，并为优菈赋予一层冷酷之心效果。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·西风剑术·宗室',
      'description': '普通攻击\n进行至多五段的连续挥砍。\n重击\n持续消耗体力，快速进行连续的斩击。\n重击结束时，会进行一次格外有力的挥砍。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [89.73, 97.04, 104.34, 114.77, 122.08, 130.43, 141.9, 153.38, 164.86, 177.38, 191.72, 208.6, 225.47, 242.34, 260.75],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [93.55, 101.17, 108.78, 119.66, 127.27, 135.98, 147.94, 159.91, 171.87, 184.93, 199.88, 217.47, 235.06, 252.65, 271.84],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.8, 61.42, 66.05, 72.65, 77.27, 82.56, 89.82, 97.09, 104.35, 112.28, 121.36, 132.04, 142.72, 153.4, 165.05],
              'extra': {},
            },
            {
              'value': [56.8, 61.42, 66.05, 72.65, 77.27, 82.56, 89.82, 97.09, 104.35, 112.28, 121.36, 132.04, 142.72, 153.4, 165.05],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [112.64, 121.81, 130.98, 144.08, 153.25, 163.73, 178.13, 192.54, 206.95, 222.67, 240.68, 261.86, 283.03, 304.21, 327.32],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [71.83, 77.68, 83.53, 91.88, 97.73, 104.41, 113.6, 122.79, 131.97, 142.0, 153.48, 166.99, 180.49, 194.0, 208.74],
              'extra': {},
            },
            {
              'value': [71.83, 77.68, 83.53, 91.88, 97.73, 104.41, 113.6, 122.79, 131.97, 142.0, 153.48, 166.99, 180.49, 194.0, 208.74],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击循环伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [68.8, 74.4, 80.0, 88.0, 93.6, 100.0, 108.8, 117.6, 126.4, 136.0, 147.0, 159.94, 172.87, 185.81, 199.92],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击终结伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [124.4, 134.52, 144.65, 159.12, 169.24, 180.81, 196.72, 212.64, 228.55, 245.91, 265.79, 289.18, 312.57, 335.96, 361.48],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [74.59, 80.66, 86.73, 95.4, 101.47, 108.41, 117.95, 127.49, 137.03, 147.44, 159.37, 173.39, 187.41, 201.44, 216.74],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [149.14, 161.28, 173.42, 190.77, 202.91, 216.78, 235.86, 254.93, 274.01, 294.82, 318.67, 346.71, 374.75, 402.79, 433.38],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [186.29, 201.45, 216.62, 238.28, 253.44, 270.77, 294.60, 318.42, 342.25, 368.25, 398.03, 433.06, 468.08, 503.11, 541.32],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒'],
        },
        {
          'name': '最大持续时间',
          'value': ['5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '冰潮的涡旋',
      'description':
          '极寒的冰气、迅捷的剑舞。\n点按\n快速挥斩，造成冰元素伤害。\n命中敌人时，优菈自己获得一层冷酷之心效果，最多叠加2次，每0.3秒内只能触发1次。\n冷酷之心\n提高优菈的抗打断能力和防御力。\n长按\n消耗所有的冷酷之心效果，并挥舞大剑向前挥砍，对前方的敌人造成冰元素范围伤害。\n若消耗了冷酷之心效果，会使身边的敌人的物理抗性与冰元素抗性降低。\n每一层被消耗的冷酷之心会转化为一柄冰涡之剑，对附近的敌人造成冰元素伤害。',
      'buff': [
        {
          'name': '防御力提升',
          'stat': Stats.DefendBonus,
          'value': [30.0, 30.0, 30.0, 30.0, 30.0, 30.0, 30.0, 30.0, 30.0, 30.0, 30.0, 30.0, 30.0, 30.0, 30.0],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
        {
          'name': '物理抗性降低',
          'stat': Stats.ResistanceDecreasePhysical,
          'value': [16.0, 17.0, 18.0, 19.0, 20.0, 21.0, 22.0, 23.0, 24.0, 25.0, 25.0, 25.0, 25.0, 25.0, 25.0],
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
        {
          'name': '冰元素抗性降低',
          'stat': Stats.ResistanceDecreaseElement,
          'value': [16.0, 17.0, 18.0, 19.0, 20.0, 21.0, 22.0, 23.0, 24.0, 25.0, 25.0, 25.0, 25.0, 25.0, 25.0],
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [
        {
          'name': '点按伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [146.4, 157.38, 168.36, 183.0, 193.98, 204.96, 219.6, 234.24, 248.88, 263.52, 278.16, 292.8, 311.1, 329.4, 347.7],
              'extra': {},
            },
          ],
        },
        {
          'name': '长按伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [245.6, 264.02, 282.44, 307.0, 325.42, 343.84, 368.4, 392.96, 417.52, 442.08, 466.64, 491.2, 521.9, 552.6, 583.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '冰涡之剑伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [96.0, 103.2, 110.4, 120.0, 127.2, 134.4, 144.0, 153.6, 163.2, 172.8, 182.4, 192.0, 204.0, 216.0, 228.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷酷之心持续时间',
          'value': ['18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒'],
        },
        {
          'name': '抗性降低时间',
          'value': ['7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒'],
        },
        {
          'name': '点按冷却时间',
          'value': ['4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒'],
        },
        {
          'name': '长按冷却时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '凝浪之光剑',
      'description':
          '猛烈挥舞大剑，对周围的敌人造成冰元素伤害，并创造一柄跟随自己，至多持续存在7秒的光降之剑。\n在持续期间内，光降之剑会提高优菈自己的抗打断能力，并在优菈自己的普通攻击、元素战技或元素爆发对敌人造成伤害时，为光降之剑积蓄能量。每0.1秒只能积攒一层能量。\n持续时间结束后，光降之剑会降下并猛烈爆发，对周围的敌人造成物理伤害。\n此伤害受益于光降之剑积蓄的能量层数。\n优菈退场时，光降之剑会立即爆发。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [245.6, 264.02, 282.44, 307.0, 325.42, 343.84, 368.4, 392.96, 417.52, 442.08, 466.64, 491.2, 521.9, 552.6, 583.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '光降之剑基础伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [367.05, 396.92, 426.8, 469.48, 499.36, 533.5, 580.45, 627.4, 674.34, 725.56, 784.25, 853.26, 922.27, 991.29, 1066.57],
              'extra': {},
            },
          ],
        },
        {
          'name': '每层能量伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [74.99, 81.1, 87.2, 95.92, 102.02, 109.0, 118.59, 128.18, 137.78, 148.24, 160.23, 174.33, 188.43, 202.53, 217.91],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '能量层数上限',
          'value': ['30', '30', '30', '30', '30', '30', '30', '30', '30', '30', '30', '30', '30', '30', '30'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  26: {
    SkillType.Passive: [
      {
        'name': '云游山海',
        'description': '在璃月执行探索派遣任务时，消耗的时间缩短25%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '吐纳真定',
        'description': '处在灵刃 • 重华叠霜领域内的单手剑、双手剑、长柄武器角色，普通攻击的攻击速度提升8%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '追冰剑诀',
        'description': '灵刃 • 重华叠霜领域消失时，会唤出一柄灵刃自动攻击附近的敌人，造成相当于灵刃 • 重华叠霜技能伤害100%的冰元素范围伤害。被击中的敌人冰元素抗性降低10%，持续8秒。',
        'buff': [
          {
            'stat': Stats.ResistanceDecreaseElement,
            'value': 10.0,
            'buffType': BuffType.DebuffForEnemy,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·灭邪四式',
      'description': '普通攻击\n进行至多四段的连续挥砍。\n重击\n持续消耗体力，旋转大剑攻击周围的敌人。\n停止旋转时，会进行一次格外有力的挥砍。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [70.0, 75.7, 81.4, 89.54, 95.24, 101.75, 110.7, 119.66, 128.61, 138.38, 148.15, 157.92, 167.68, 177.45, 187.22],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.12, 68.26, 73.4, 80.74, 85.88, 91.75, 99.82, 107.9, 115.97, 124.78, 133.59, 142.4, 151.2, 160.01, 168.82],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [80.32, 86.86, 93.4, 102.74, 109.28, 116.75, 127.02, 137.3, 147.57, 158.78, 169.99, 181.2, 192.4, 203.61, 214.82],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [101.22, 109.46, 117.7, 129.47, 137.71, 147.13, 160.07, 173.02, 185.97, 200.09, 214.21, 228.34, 242.46, 256.59, 270.71],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击循环伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.29, 60.87, 65.45, 71.99, 76.57, 81.81, 89.01, 96.21, 103.41, 111.26, 119.12, 126.97, 134.82, 142.68, 150.53],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击终结伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [101.78, 110.07, 118.35, 130.19, 138.47, 147.94, 160.96, 173.97, 186.99, 201.2, 215.4, 229.6, 243.8, 258.0, 272.21],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [74.59, 80.66, 86.73, 95.4, 101.47, 108.41, 117.95, 127.49, 137.03, 147.44, 157.85, 168.26, 178.66, 189.07, 199.48],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [149.14, 161.28, 173.42, 190.77, 202.91, 216.78, 235.86, 254.93, 274.01, 294.82, 315.63, 336.44, 357.25, 378.06, 398.87],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [186.29, 201.45, 216.62, 238.28, 253.44, 270.77, 294.6, 318.42, 342.25, 368.25, 394.24, 420.23, 446.23, 472.22, 498.21],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒'],
        },
        {
          'name': '最大持续时间',
          'value': ['5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '灵刃·重华叠霜',
      'description': '重云挥动巨剑猛击地面，在前方圆形范围内引发冰爆，并对敌人造成冰元素伤害。\n短暂延迟后，冰爆引发的寒气汇聚成重华叠霜领域，其中的单手剑、大剑、长柄武器角色获得冰元素附魔。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [172.04, 184.94, 197.85, 215.05, 227.95, 240.86, 258.06, 275.26, 292.47, 309.67, 326.88, 344.08, 365.59, 387.09, 408.6],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '附魔持续时间',
          'value': ['2秒', '2.1秒', '2.2秒', '2.3秒', '2.4秒', '2.5秒', '2.6秒', '2.7秒', '2.8秒', '2.9秒', '3秒', '30秒', '3秒', '3秒', '3秒'],
        },
        {
          'name': '领域持续时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '灵刃·云开星落',
      'description': '重云结印，在前方半空中连续召唤出三柄巨大灵刃，短时间内依次落向地面并爆裂。\n灵刃爆裂时，会造成冰元素范围伤害，并击飞敌人。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [142.4, 153.08, 163.76, 178.0, 188.68, 199.36, 213.6, 227.84, 242.08, 256.32, 270.56, 284.8, 302.6, 320.4, 338.2],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
      'energy': 40,
    },
  },
  27: {
    SkillType.Passive: [
      {
        'name': '附赠的下酒菜',
        'description': '完美烹饪恢复类食物时，有12%概率获得2倍产出。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '猫尾隐藏菜单',
        'description': '处于猫爪冻冻的护盾保护下的角色，移动速度提升10%，体力消耗降低10%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '滑稽百出的醉相',
        'description': '敌人进入最烈特调的领域后的15秒内，攻击力降低10%。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·猎人射术',
      'description': '普通攻击\n进行至多五段的连续弓箭射击。\n重击\n进行伤害更高、更为精准的瞄准射击。\n瞄准时，冰霜散发的寒气会凭附在箭矢上。聚满了寒气的箭矢会造成冰元素伤害。\n下落攻击\n从空中射出箭雨，并迅速下坠冲击地面，在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [36.12, 39.06, 42.0, 46.2, 49.14, 52.5, 57.12, 61.74, 66.36, 71.4, 77.18, 83.97, 90.76, 97.55, 104.96],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [33.54, 36.27, 39.0, 42.9, 45.63, 48.75, 53.04, 57.33, 61.62, 66.3, 71.66, 77.97, 84.28, 90.58, 97.46],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [45.58, 49.29, 53.0, 58.3, 62.01, 66.25, 72.08, 77.91, 83.74, 90.1, 97.39, 105.96, 114.53, 123.1, 132.45],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.0, 46.5, 50.0, 55.0, 58.5, 62.5, 68.0, 73.5, 79.0, 85.0, 91.88, 99.96, 108.05, 116.13, 124.95],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [53.75, 58.13, 62.5, 68.75, 73.13, 78.13, 85.0, 91.88, 98.75, 106.25, 114.84, 124.95, 135.06, 145.16, 156.19],
              'extra': {},
            },
          ],
        },
        {
          'name': '瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 93.71, 101.96, 110.21, 118.45, 127.45],
              'extra': {},
            },
          ],
        },
        {
          'name': '满蓄力瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [124.0, 133.3, 142.6, 155.0, 164.3, 173.6, 186.0, 198.4, 210.8, 223.2, 236.1, 252.96, 269.82, 286.69, 303.55],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '猫爪冻冻',
      'description':
          '发射冻冻猫猫爪，对敌人造成冰元素伤害，并在命中时形成护盾。\n护盾的伤害吸收量受益于迪奥娜的生命值上限，持续时间基于命中的冻冻猫猫爪数目。\n点按\n快速发射二枚冻冻猫猫爪。\n长按\n迅速后撤，并发射五枚冻冻猫猫爪。\n通过长按产生的护盾获得75%伤害吸收量加成。\n护盾对冰元素伤害有250%的吸收效果，并会在形成时，为当前角色施加短暂的冰元素附着。',
      'buff': [],
      'hit': [
        {
          'name': '猫爪伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [41.92, 45.06, 48.21, 52.4, 55.54, 58.69, 62.88, 67.07, 71.26, 75.46, 79.65, 83.84, 89.08, 94.32, 99.56],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '护盾基础吸收量',
          'value': [
            '7.2%最大生命值+693',
            '7.74%最大生命值+762',
            '8.28%最大生命值+837',
            '9%最大生命值+918',
            '9.54%最大生命值+1005',
            '10.08%最大生命值+1097',
            '10.8%最大生命值+1195',
            '11.52%最大生命值+1299',
            '12.24%最大生命值+1409',
            '12.96%最大生命值+1524',
            '13.68%最大生命值+1646',
            '14.4%最大生命值+1773',
            '15.3%最大生命值+1905',
            '16.2%最大生命值+2044',
            '17.1%最大生命值+2188'
          ],
        },
        {
          'name': '持续时间',
          'value': [
            '1.8秒/个',
            '1.9秒/个',
            '2秒/个',
            '2.1秒/个',
            '2.2秒/个',
            '2.3秒/个',
            '2.4秒/个',
            '2.4秒/个',
            '2.4秒/个',
            '2.4秒/个',
            '2.4秒/个',
            '2.4秒/个',
            '2.4秒/个',
            '2.4秒/个',
            '2.4秒/个'
          ],
        },
        {
          'name': '点按冷却时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '长按冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '最烈特调',
      'description': '抛出特别调制的冰酿烈调，造成冰元素范围伤害，并产生冰气酒雾领域。\n冰气酒雾领域\n• 对其中的敌人持续造成冰元素伤害；\n• 为其中的角色持续恢复生命值。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [80.0, 86.0, 92.0, 100.0, 106.0, 112.0, 120.0, 128.0, 136.0, 144.0, 152.0, 160.0, 170.0, 180.0, 190.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '领域持续伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [52.64, 56.59, 60.54, 65.8, 69.75, 73.7, 78.96, 84.22, 89.49, 94.75, 100.02, 105.28, 111.86, 118.44, 125.02],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续治疗量',
          'value': [
            '5.34%最大生命值+513',
            '5.74%最大生命值+565',
            '6.14%最大生命值+620',
            '6.67%最大生命值+680',
            '7.07%最大生命值+744',
            '7.47%最大生命值+813',
            '8%最大生命值+885',
            '8.54%最大生命值+962',
            '9.07%最大生命值+1044',
            '9.6%最大生命值+1129',
            '10.14%最大生命值+1219',
            '10.67%最大生命值+1313',
            '11.34%最大生命值+1411',
            '12.01%最大生命值+1514',
            '12.67%最大生命值+1621'
          ],
        },
        {
          'name': '持续时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  28: {
    SkillType.Passive: [
      {
        'name': '隐藏的实力',
        'description': '队伍中自己的角色冲刺消耗的体力降低20%。\n无法与效果完全相同的固有天赋叠加。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '冷血之剑',
        'description': '霜袭每击中一个单位，便为凯亚恢复等同于攻击力15%的生命值。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '冰渊之心',
        'description': '霜袭使敌人冻结时，被冻结的敌人会掉落额外的元素微粒。\n一次霜袭至多因此产生2个额外元素微粒。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·仪典剑术',
      'description': '普通攻击\n进行至多五段的连续剑击。\n重击\n消耗一定体力，瞬间向前方挥出两剑。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [53.75, 58.13, 62.5, 68.75, 73.13, 78.13, 85.0, 91.88, 98.75, 106.25, 114.84, 124.95, 135.06, 145.16, 156.19],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [51.69, 55.89, 60.1, 66.11, 70.32, 75.13, 81.74, 88.35, 94.96, 102.17, 110.43, 120.15, 129.87, 139.59, 150.19],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [65.27, 70.59, 75.9, 83.49, 88.8, 94.88, 103.22, 111.57, 119.92, 129.03, 139.47, 151.74, 164.01, 176.29, 189.67],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [70.86, 76.63, 82.4, 90.64, 96.41, 103.0, 112.06, 121.13, 130.19, 140.08, 151.41, 164.73, 178.06, 191.38, 205.92],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [88.24, 95.42, 102.6, 112.86, 120.04, 128.25, 139.54, 150.82, 162.11, 174.42, 188.53, 205.12, 221.71, 238.3, 256.4],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [55.04, 59.52, 64.0, 70.40, 74.88, 80.0, 87.04, 94.08, 101.12, 108.80, 117.60, 127.95, 138.30, 148.65, 159.9],
              'extra': {},
            },
            {
              'value': [73.10, 79.05, 85.0, 93.50, 99.45, 106.25, 115.60, 124.95, 134.30, 144.50, 156.19, 169.93, 183.68, 197.42, 212.42],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '霜袭',
      'description': '瞬间放出急冻的寒气，对前方的敌人造成冰元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [191.2, 205.54, 219.88, 239.0, 253.34, 267.68, 286.8, 305.92, 325.04, 344.16, 363.28, 382.4, 406.3, 430.2, 454.1],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '凛冽轮舞',
      'description': '凝聚空气中的寒霜，召唤3枚围绕自身旋转的寒冰之棱。\n存在期间内，寒冰之棱会跟随角色运动，对路径上的敌人造成冰元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [77.6, 83.42, 89.24, 97.0, 102.82, 108.64, 116.4, 124.16, 131.92, 139.68, 147.44, 155.2, 164.9, 174.6, 184.3],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  29: {
    SkillType.Passive: [
      {
        'name': '夜行',
        'description': '在夜间（18时至6时），队伍中自己的角色移动速度提高10%。\n该效果在秘境、征讨领域、深境螺旋中无效，且无法与效果完全相同的固有天赋叠加。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '聆听忏悔的幽影',
        'description': '噬罪的告解从技能目标的背后攻击时，萝莎莉亚的暴击率提升12%，持续5秒。',
        'buff': [
          {
            'stat': Stats.CritRate,
            'value': 12.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '暗中支援的黯色',
        'description': '施放终命的圣礼时，依照萝莎莉亚自身暴击率的15%，提高附近队伍中所有角色（不包括萝莎莉亚自己）的暴击率，持续10秒。\n借由这种方式获得的暴击率提升，无法超过15%。',
        'buff': [
          {
            'stat': Stats.CritRateByCritRate,
            'value': 15.0,
            'buffType': BuffType.BuffForTeamWithoutMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·教会枪术',
      'description': '普通攻击\n进行至多五段的连续枪击。\n重击\n消耗一定体力，向前方突进，对路径上的敌人造成伤害。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [52.46, 56.73, 61.0, 67.1, 71.37, 76.25, 82.96, 89.67, 96.38, 103.7, 111.02, 118.34, 125.66, 132.98, 140.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [51.6, 55.8, 60.0, 66.0, 70.2, 75.0, 81.6, 88.2, 94.8, 102.0, 109.2, 116.4, 123.6, 130.8, 138.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [31.82, 34.41, 37.0, 40.7, 43.29, 46.25, 50.32, 54.39, 58.46, 62.9, 67.34, 71.78, 76.22, 80.66, 85.1],
              'extra': {},
            },
            {
              'value': [31.82, 34.41, 37.0, 40.7, 43.29, 46.25, 50.32, 54.39, 58.46, 62.9, 67.34, 71.78, 76.22, 80.66, 85.1],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [69.66, 75.33, 81.0, 89.1, 94.77, 101.25, 110.16, 119.07, 127.98, 137.7, 147.42, 157.14, 166.86, 176.58, 186.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [41.62, 45.01, 48.0, 53.24, 56.63, 61.0, 65.82, 71.15, 76.47, 82.28, 88.09, 93.90, 99.70, 105.51, 111.32],
              'extra': {},
            },
            {
              'value': [43.00, 46.50, 50.0, 55.00, 58.50, 62.50, 68.00, 73.50, 79.00, 85.00, 91.00, 97.00, 103.00, 109.00, 115.00],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [136.74, 147.87, 159.0, 174.9, 186.03, 198.75, 216.24, 233.73, 251.22, 270.3, 289.38, 308.46, 327.54, 346.62, 365.7],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '噬罪的告解',
      'description': '萝莎莉亚快速移动至目标敌人身后，以长枪穿刺与挥砍，造成冰元素伤害。\n无法借由施放时的快速移动，转移至体型较大的敌人身后。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [58.40, 62.78, 67.16, 73.0, 77.38, 81.76, 87.60, 93.44, 99.28, 105.12, 110.96, 116.80, 124.10, 131.40, 138.70],
              'extra': {},
            },
            {
              'value': [136.0, 146.20, 156.40, 170.0, 180.20, 190.40, 204.0, 217.60, 231.20, 244.80, 258.40, 272.0, 289.0, 306.0, 323.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '终命的圣礼',
      'description': '这是萝莎莉亚专属的领祷仪式。挥舞武器扫击身边的敌人后，凝聚极寒的冰枪击向地面，分别造成冰元素伤害。\n冰枪在存在期间内，会间歇性释放寒气，对附近的敌人造成冰元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [104.0, 111.80, 119.60, 130.0, 137.80, 145.60, 156.0, 166.40, 176.80, 187.20, 197.60, 208.0, 221.0, 234.0, 247.0],
              'extra': {},
            },
            {
              'value': [152.0, 163.40, 174.80, 190.0, 201.40, 212.80, 228.0, 243.20, 258.40, 273.60, 288.80, 304.0, 323.0, 342.0, 361.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '冰枪持续伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [132.0, 141.9, 151.8, 165.0, 174.9, 184.8, 198.0, 211.2, 224.4, 237.6, 250.8, 264.0, 280.5, 297.0, 313.5],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  30: {
    SkillType.Passive: [
      {
        'name': '神里流·霰步',
        'description': '替代冲刺\n隐入碎冰，以消耗体力为代价，化为激流快速移动。\n在霰步状态下，神里绫华可以在水面上高速移动。\n结束霰步现身时，将产生如下效果：\n• 释放寒冰的力量，对周围的敌人施加冰元素附着；\n• 将寒气凝聚在剑上，使神里绫华在短时间内获得冰元素附魔。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '鉴查心得',
        'description': '合成武器突破素材时，有10%概率获得2倍产出。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '天罪国罪镇词',
        'description': '施放神里流 • 冰华后的6秒内，神里绫华的普通攻击与重击造成的伤害提升30%。',
        'buff': [
          {
            'stat': Stats.DmgBonus,
            'value': 30.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.Normal,
              DamageType.Charged,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '寒天宣命祝词',
        'description': '神里流 • 霰步结束时释放的寒冰命中了敌人时，神里绫华将获得如下效果：\n• 恢复10点体力；\n• 获得18%冰元素伤害加成，持续10秒。',
        'buff': [
          {
            'stat': Stats.EleDmgBonus,
            'value': 18.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·神里流·倾',
      'description': '普通攻击\n进行至多五段的连续剑击。\n重击\n消耗一定体力，在居合中放出连续的剑风。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [45.73, 49.45, 53.17, 58.49, 62.21, 66.46, 72.31, 78.16, 84.01, 90.39, 96.77, 103.15, 109.53, 115.91, 122.29],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [48.68, 52.65, 56.61, 62.27, 66.23, 70.76, 76.99, 83.22, 89.44, 96.24, 103.03, 109.82, 116.62, 123.41, 130.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [62.62, 67.72, 72.82, 80.1, 85.19, 91.02, 99.03, 107.04, 115.05, 123.79, 132.53, 141.26, 150.0, 158.74, 167.48],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [22.65, 24.49, 26.33, 28.97, 30.81, 32.92, 35.81, 38.71, 41.61, 44.77, 47.93, 51.09, 54.25, 57.41, 60.57],
              'extra': {},
            },
            {
              'value': [22.65, 24.49, 26.33, 28.97, 30.81, 32.92, 35.81, 38.71, 41.61, 44.77, 47.93, 51.09, 54.25, 57.41, 60.57],
              'extra': {},
            },
            {
              'value': [22.65, 24.49, 26.33, 28.97, 30.81, 32.92, 35.81, 38.71, 41.61, 44.77, 47.93, 51.09, 54.25, 57.41, 60.57],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [78.18, 84.55, 90.91, 100.0, 106.36, 113.64, 123.64, 133.64, 143.64, 154.55, 165.45, 176.36, 187.27, 198.18, 209.09],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [55.13, 59.61, 64.1, 70.51, 75.0, 80.13, 87.18, 94.23, 101.28, 108.97, 116.66, 124.35, 132.05, 139.74, 147.43],
              'extra': {},
            },
            {
              'value': [55.13, 59.61, 64.1, 70.51, 75.0, 80.13, 87.18, 94.23, 101.28, 108.97, 116.66, 124.35, 132.05, 139.74, 147.43],
              'extra': {},
            },
            {
              'value': [55.13, 59.61, 64.1, 70.51, 75.0, 80.13, 87.18, 94.23, 101.28, 108.97, 116.66, 124.35, 132.05, 139.74, 147.43],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '神里流·冰华',
      'description': '唤起盛开的冰之华，击飞身边的敌人并造成冰元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [239.2, 257.14, 275.08, 299.0, 316.94, 334.88, 358.8, 382.72, 406.64, 430.56, 454.48, 478.4, 508.3, 538.2, 568.1],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '神里流·霜灭',
      'description': '以倾奇之姿汇聚寒霜，放出持续行进的霜见雪关扉。\n霜见雪关扉\n• 以刀锋般尖锐的霜风持续切割触及的敌人，造成冰元素伤害；n• 持续时间结束时绽放，造成冰元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '切割伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [112.3, 120.72, 129.15, 140.38, 148.8, 157.22, 168.45, 179.68, 190.91, 202.14, 213.37, 224.6, 238.64, 252.68, 266.71],
              'extra': {},
            },
          ],
        },
        {
          'name': '绽放伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [168.45, 181.08, 193.72, 210.56, 223.2, 235.83, 252.68, 269.52, 286.36, 303.21, 320.05, 336.9, 357.96, 379.01, 400.07],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  31: {
    SkillType.Passive: [
      {
        'name': '荒野猎手',
        'description': '埃洛伊在队伍中时，队伍中自己的角色接近产出禽肉、兽肉与冷鲜肉的小动物时，不会轻易惊动它们。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '战斗覆盖',
        'description': '埃洛伊获得冰尘雪野的线圈效果时，埃洛伊的攻击力提升16%，队伍中附近的其他角色的攻击力提升8%，持续10秒。',
        'buff': [
          {
            'stat': Stats.AttackBonus,
            'value': 16.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
          {
            'stat': Stats.AttackBonus,
            'value': 8.0,
            'buffType': BuffType.BuffForTeamWithoutMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '强力攻击',
        'description': '埃洛伊处于冰尘雪野的冰驰状态下时，每1秒提升3.5%冰元素伤害加成，通过这种方式至多获得35%冰元素伤害加成。',
        'buff': [
          {
            'stat': Stats.EleDmgBonus,
            'value': 35.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·快速射击',
      'description': '普通攻击\n进行至多四段的连续弓箭射击。\n重击\n进行伤害更高、更为精准的瞄准射击。\n瞄准时，冰霜散发的寒气会凭附在箭矢上。聚满了寒气的箭矢会造成冰元素伤害。\n下落攻击\n从空中射出箭雨，并迅速下坠冲击地面，在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [21.12, 22.56, 24.0, 25.92, 27.36, 29.04, 31.20, 33.36, 35.52, 37.68, 39.84, 42.0, 44.16, 46.32, 48.48],
              'extra': {},
            },
            {
              'value': [23.76, 25.38, 27.0, 29.16, 30.78, 32.67, 35.10, 37.53, 39.96, 42.39, 44.82, 47.25, 49.68, 52.11, 54.54],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [43.12, 46.06, 49.0, 52.92, 55.86, 59.29, 63.7, 68.11, 72.52, 76.93, 81.34, 85.75, 90.16, 94.57, 98.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [52.8, 56.4, 60.0, 64.8, 68.4, 72.6, 78.0, 83.4, 88.8, 94.2, 99.6, 105.0, 110.4, 115.8, 121.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [65.65, 70.12, 74.6, 80.57, 85.04, 90.27, 96.98, 103.69, 110.41, 117.12, 123.84, 130.55, 137.26, 143.98, 150.69],
              'extra': {},
            },
          ],
        },
        {
          'name': '瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 92.82, 98.94, 105.06, 111.18, 117.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '满蓄力瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [124.0, 133.3, 142.6, 155.0, 164.3, 173.6, 186.0, 198.4, 210.8, 223.2, 235.6, 248.0, 263.5, 279.0, 294.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '冰尘雪野',
      'description':
          '向目标方向投掷一枚冰尘弹，在命中后引发爆炸，造成冰元素伤害。爆炸后，冰尘弹将分裂成许多冷冻炸弹，在接触到敌人或一段时间后爆炸，造成冰元素伤害。\n冰尘弹或冷冻炸弹命中敌人后，会使敌人的攻击力降低，并为埃洛伊赋予1层「线圈」效果。\n每0.1秒至多获得1层线圈效果。\n线圈\n• 依据层数，提高埃洛伊的普通攻击造成的伤害；\n• 拥有4层线圈时，埃洛伊清除所有的线圈效果，并获得「冰驰」，进一步提高普通攻击造成的伤害，并将普通攻击造成的伤害转为冰元素伤害。\n处于冰驰状态下时，埃洛伊无法获得线圈效果。\n线圈效果会在脱离战斗30秒后清除。',
      'buff': [
        {
          'name': '线圈普通攻击伤害提升（1层）',
          'stat': Stats.DmgBonus,
          'value': [5.85, 6.20, 6.54, 7.0, 7.35, 7.70, 8.16, 8.61, 9.07, 9.52, 9.98, 10.43, 10.89, 11.34, 11.80],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
        {
          'name': '线圈普通攻击伤害提升（2层）',
          'stat': Stats.DmgBonus,
          'value': [11.69, 12.39, 13.09, 14.0, 14.70, 15.40, 16.31, 17.22, 18.13, 19.04, 19.95, 20.86, 21.77, 22.68, 23.59],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
        {
          'name': '线圈普通攻击伤害提升（3层）',
          'stat': Stats.DmgBonus,
          'value': [17.54, 18.58, 19.64, 21.0, 22.05, 23.10, 24.47, 25.83, 27.20, 28.56, 29.93, 31.29, 32.66, 34.02, 35.39],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
        {
          'name': '冰驰普通攻击伤害提升',
          'stat': Stats.EleDmgBonus,
          'value': [29.23, 30.98, 32.73, 35.0, 36.75, 38.5, 40.78, 43.05, 45.33, 47.6, 49.88, 52.15, 54.43, 56.7, 58.98],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
      ],
      'hit': [
        {
          'name': '冰尘弹伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [177.6, 190.92, 204.24, 222.0, 235.32, 248.64, 266.4, 284.16, 301.92, 319.68, 337.44, 355.2, 377.4, 399.6, 421.8],
              'extra': {},
            },
          ],
        },
        {
          'name': '冷冻炸弹伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [40.0, 43.0, 46.0, 50.0, 53.0, 56.0, 60.0, 64.0, 68.0, 72.0, 76.0, 80.0, 85.0, 90.0, 95.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '攻击力降低',
          'value': ['12%', '12%', '12%', '13%', '13%', '13%', '14%', '14%', '14%', '15%', '15%', '15%', '15%', '15%', '15%'],
        },
        {
          'name': '攻击力降低持续时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '冰驰持续时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '曙光预言',
      'description': '向目标方向投掷冰元素满溢的蓄能容器，并用弓箭引爆，造成冰元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [359.2, 386.14, 413.08, 449.0, 475.94, 502.88, 538.8, 574.72, 610.64, 646.56, 682.48, 718.4, 763.3, 808.2, 853.1],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
      'energy': 40,
    },
  },
  32: {
    SkillType.Passive: [
      {
        'name': '总务土地',
        'description': '在璃月执行探索派遣任务时，消耗的时间缩短25%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '抵天雷罚',
        'description': '雷楔存在期间再次施放星斗归位后的5秒内，刻晴获得雷元素附魔。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '玉衡之贵',
        'description': '施放天街巡游时，刻晴的暴击率提升15%，元素充能效率提升15%，持续8秒。',
        'buff': [
          {
            'stat': Stats.CritRate,
            'value': 15.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
          {
            'stat': Stats.Recharge,
            'value': 15.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·云来剑法',
      'description': '普通攻击\n进行至多五段的连续剑击。\n重击\n消耗一定体力，瞬间向前方挥出两剑。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [41.02, 44.36, 47.7, 52.47, 55.81, 59.62, 64.87, 70.12, 75.37, 81.09, 86.81, 92.54, 98.26, 103.99, 109.71],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [41.02, 44.36, 47.7, 52.47, 55.81, 59.62, 64.87, 70.12, 75.37, 81.09, 86.81, 92.54, 98.26, 103.99, 109.71],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [54.44, 58.87, 63.3, 69.63, 74.06, 79.13, 86.09, 93.05, 100.01, 107.61, 115.21, 122.8, 130.4, 137.99, 145.59],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [31.48, 34.04, 36.60, 40.26, 42.82, 45.75, 49.78, 53.80, 57.83, 62.22, 66.61, 71.0, 75.40, 79.79, 84.18],
              'extra': {},
            },
            {
              'value': [34.40, 37.20, 40.0, 44.0, 46.80, 50.0, 54.40, 58.80, 63.20, 68.0, 72.80, 77.60, 82.40, 87.20, 92.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [66.99, 72.45, 77.9, 85.69, 91.14, 97.38, 105.94, 114.51, 123.08, 132.43, 141.78, 151.13, 160.47, 169.82, 179.17],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [76.80, 83.05, 89.30, 98.23, 104.48, 111.63, 121.45, 131.27, 141.09, 151.81, 162.53, 173.24, 183.96, 194.67, 205.39],
              'extra': {},
            },
            {
              'value': [86.0, 93.0, 100.0, 110.0, 117.0, 125.0, 136.0, 147.0, 158.0, 170.0, 182.0, 194.0, 206.0, 218.0, 230.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '星斗归位',
      'description':
          '迅速投出雷楔，以疾雷之势歼敌。\n雷楔命中时会对小范围内的敌人造成雷元素伤害，并在命中的位置留下雷楔标记。\n长按\n长按以调整雷楔标记投掷的方向。\n通过长按投出的雷楔，可以悬浮在空中，并使刻晴再次施放星斗归位时跨越地形。\n雷楔\n在雷楔的持续期间内，刻晴再次施放星斗归位或施展重击时，会清除雷楔标记并造成不同的效果：\n• 再次施放星斗归位时，瞬移到标记处进行一次斩击，造成雷元素范围伤害。瞬移至长按投掷的雷楔处时，可以跨越地形障碍；\n• 施展重击时，在标记处引发雷暴连斩，造成数次雷元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '雷楔伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [50.4, 54.18, 57.96, 63.0, 66.78, 70.56, 75.6, 80.64, 85.68, 90.72, 95.76, 100.8, 107.1, 113.4, 119.7],
              'extra': {},
            },
          ],
        },
        {
          'name': '斩击伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [168.0, 180.6, 193.2, 210.0, 222.6, 235.2, 252.0, 268.8, 285.6, 302.4, 319.2, 336.0, 357.0, 378.0, 399.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '雷暴连斩伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [84.0, 90.3, 96.6, 105.0, 111.3, 117.6, 126.0, 134.4, 142.8, 151.2, 159.6, 168.0, 178.5, 189.0, 199.5],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '天街巡游',
      'description': '爆发雷电的力量，造成范围雷元素伤害。\n随后隐入剑影中，对周围的敌人进行如同迅雷霆霓般疾速的连斩，造成多段雷元素伤害，并在最后一击时造成高额雷元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [88.0, 94.6, 101.2, 110.0, 116.6, 123.2, 132.0, 140.8, 149.6, 158.4, 167.2, 176.0, 187.0, 198.0, 209.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '连斩伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [24.0, 25.8, 27.6, 30.0, 31.8, 33.6, 36.0, 38.4, 40.8, 43.2, 45.6, 48.0, 51.0, 54.0, 57.0],
              'extra': {},
            },
            {
              'value': [24.0, 25.8, 27.6, 30.0, 31.8, 33.6, 36.0, 38.4, 40.8, 43.2, 45.6, 48.0, 51.0, 54.0, 57.0],
              'extra': {},
            },
            {
              'value': [24.0, 25.8, 27.6, 30.0, 31.8, 33.6, 36.0, 38.4, 40.8, 43.2, 45.6, 48.0, 51.0, 54.0, 57.0],
              'extra': {},
            },
            {
              'value': [24.0, 25.8, 27.6, 30.0, 31.8, 33.6, 36.0, 38.4, 40.8, 43.2, 45.6, 48.0, 51.0, 54.0, 57.0],
              'extra': {},
            },
            {
              'value': [24.0, 25.8, 27.6, 30.0, 31.8, 33.6, 36.0, 38.4, 40.8, 43.2, 45.6, 48.0, 51.0, 54.0, 57.0],
              'extra': {},
            },
            {
              'value': [24.0, 25.8, 27.6, 30.0, 31.8, 33.6, 36.0, 38.4, 40.8, 43.2, 45.6, 48.0, 51.0, 54.0, 57.0],
              'extra': {},
            },
            {
              'value': [24.0, 25.8, 27.6, 30.0, 31.8, 33.6, 36.0, 38.4, 40.8, 43.2, 45.6, 48.0, 51.0, 54.0, 57.0],
              'extra': {},
            },
            {
              'value': [24.0, 25.8, 27.6, 30.0, 31.8, 33.6, 36.0, 38.4, 40.8, 43.2, 45.6, 48.0, 51.0, 54.0, 57.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '最后一击伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [188.8, 202.96, 217.12, 236.0, 250.16, 264.32, 283.2, 302.08, 320.96, 339.84, 358.72, 377.6, 401.2, 424.8, 448.4],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
      'energy': 40,
    },
  },
  33: {
    SkillType.Passive: [
      {
        'name': '吾之后花园',
        'description': '在蒙德执行探索派遣任务时，消耗的时间缩短25%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '噬星魔鸦',
        'description': '菲谢尔以蓄力完成的瞄准射击命中奥兹时，奥兹会对附近敌人降下圣裁之雷，造成等同射击伤害152.7%的雷元素范围伤害。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '断罪雷影',
        'description': '奥兹在场时，若当前场上自己的角色攻击敌人时触发了雷元素相关反应，则会对敌人降下圣裁之雷，造成菲谢尔80%攻击力的雷元素伤害。',
        'buff': [],
        'hit': [
          {
            'name': '雷元素伤害',
            'damageType': DamageType.SkillE,
            'elementType': SkillElementType.Element,
            'value': [
              {
                'value': 80.0,
                'extra': {},
              },
            ],
          },
        ],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·罪灭之矢',
      'description':
          '普通攻击\n进行至多五段的连续弓箭射击。\n重击\n进行伤害更高、更为精准的瞄准射击。\n瞄准时，幽夜净土的黯雷精灵会听从皇女的号令，凭附在她的雷影魔箭上。聚满了断罪之雷的魔箭会造成高额的雷元素伤害。\n下落攻击\n从空中射出箭雨，并迅速下坠冲击地面，在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [44.12, 47.71, 51.3, 56.43, 60.02, 64.13, 69.77, 75.41, 81.05, 87.21, 93.37, 99.52, 105.68, 111.83, 117.99],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [46.78, 50.59, 54.4, 59.84, 63.65, 68.0, 73.98, 79.97, 85.95, 92.48, 99.01, 105.54, 112.06, 118.59, 125.12],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [58.14, 62.87, 67.6, 74.36, 79.09, 84.5, 91.94, 99.37, 106.81, 114.92, 123.03, 131.14, 139.26, 147.37, 155.48],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [57.71, 62.4, 67.1, 73.81, 78.51, 83.88, 91.26, 98.64, 106.02, 114.07, 122.12, 130.17, 138.23, 146.28, 154.33],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [72.07, 77.93, 83.8, 92.18, 98.05, 104.75, 113.97, 123.19, 132.4, 142.46, 152.52, 162.57, 172.63, 182.68, 192.74],
              'extra': {},
            },
          ],
        },
        {
          'name': '瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 92.82, 98.94, 105.06, 111.18, 117.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '满蓄力瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [124.0, 133.3, 142.6, 155.0, 164.3, 173.6, 186.0, 198.4, 210.8, 223.2, 235.6, 248.0, 263.5, 279.0, 294.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '夜巡影翼',
      'description': '召唤奥兹。暗影与雷电构成的夜鸦降生尘世时，会在小范围内造成雷元素伤害。\n存在期间内，奥兹会持续发射雷之魔弹攻击附近的敌人。\n长按以调整技能生效位置。\n奥兹存在期间内再次点按可以将其召唤至身旁。',
      'buff': [],
      'hit': [
        {
          'name': '奥兹攻击伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [88.8, 95.46, 102.12, 111.0, 117.66, 124.32, 133.2, 142.08, 150.96, 159.84, 168.72, 177.6, 188.7, 199.8, 210.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '召唤伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [115.44, 124.1, 132.76, 144.3, 152.96, 161.62, 173.16, 184.7, 196.25, 207.79, 219.34, 230.88, 245.31, 259.74, 274.17],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '奥兹存在时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
        {
          'name': '冷却时间',
          'value': ['25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '至夜幻现',
      'description':
          '呼唤奥兹，张开纯粹的夜色编织成的双翼，守护菲谢尔。\n持续期间，具有如下效果：\n• 以奥兹的形态进行高速移动；\n• 对附近的敌人降下落雷，造成雷元素伤害。每个敌人只能受到一次落雷伤害；\n• 效果结束时，奥兹将会停留在战场上，攻击皇女的敌人。若奥兹已经在场，则重置奥兹的存在时间。',
      'buff': [],
      'hit': [
        {
          'name': '落雷伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [208.0, 223.6, 239.2, 260.0, 275.6, 291.2, 312.0, 332.8, 353.6, 374.4, 395.2, 416.0, 442.0, 468.0, 494.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  34: {
    SkillType.Passive: [
      {
        'name': '拥涛踏潮',
        'description': '队伍中自己的角色游泳消耗的体力降低20%。\n无法与效果完全相同的固有天赋叠加。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '遍宇灵光',
        'description': '在被攻击瞬间施放的捉浪反击，拥有最高伤害加成。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '霹雳连霄',
        'description': '施放拥有最高伤害加成的捉浪后的10秒内，获得如下效果：\n• 普通攻击与重击造成的伤害提高15%，攻击速度提高15%；\n• 大幅减少重击需要的准备时间。',
        'buff': [
          {
            'stat': Stats.DmgBonus,
            'value': 15.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.Normal,
              DamageType.Charged,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·征涛',
      'description': '普通攻击\n进行至多五段的连续挥砍。\n重击\n持续消耗体力，快速进行连续的斩击。\n重击结束时，会进行一次格外有力的挥砍。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [71.12, 76.91, 82.7, 90.97, 96.76, 103.38, 112.47, 121.57, 130.67, 140.59, 151.96, 165.33, 178.71, 192.08, 206.67],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [70.86, 76.63, 82.4, 90.64, 96.41, 103.0, 112.06, 121.13, 130.19, 140.08, 151.41, 164.73, 178.06, 191.38, 205.92],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [88.32, 95.51, 102.7, 112.97, 120.16, 128.38, 139.67, 150.97, 162.27, 174.59, 188.71, 205.32, 221.92, 238.53, 256.65],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [86.52, 93.56, 100.6, 110.66, 117.7, 125.75, 136.82, 147.88, 158.95, 171.02, 184.85, 201.12, 217.39, 233.65, 251.4],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [112.14, 121.27, 130.4, 143.44, 152.57, 163.0, 177.34, 191.69, 206.03, 221.68, 239.61, 260.7, 281.78, 302.87, 325.87],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击循环伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.24, 60.82, 65.4, 71.94, 76.52, 81.75, 88.94, 96.14, 103.33, 111.18, 120.17, 130.75, 141.32, 151.9, 163.43],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击终结伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [101.82, 110.11, 118.4, 130.24, 138.53, 148.0, 161.02, 174.05, 187.07, 201.28, 217.56, 236.71, 255.85, 275.0, 295.88],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [74.59, 80.66, 86.73, 95.4, 101.47, 108.41, 117.95, 127.49, 137.03, 147.44, 157.85, 168.26, 178.66, 189.07, 199.48],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [149.14, 161.28, 173.42, 190.77, 202.91, 216.78, 235.86, 254.93, 274.01, 294.82, 315.63, 336.44, 357.25, 378.06, 398.87],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [186.29, 201.45, 216.62, 238.28, 253.44, 270.77, 294.6, 318.42, 342.25, 368.25, 394.24, 420.23, 446.23, 472.22, 498.21],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒'],
        },
        {
          'name': '最大持续时间',
          'value': ['5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '捉浪',
      'description':
          '没有什么好担心的。如果有人敢对她或她的人出手，那就以雷电与大剑十倍奉还。\n点按\n积聚雷之力，猛烈向前挥舞大剑，造成雷元素伤害。\n长按\n举起武器形成护盾，伤害吸收量受益于北斗的生命值上限。\n松开技能或持续时间结束时，会挥舞大剑释放积攒的力量进行攻击，造成雷元素伤害。依据技能期间受到攻击的次数，提高释放时造成的伤害。触发2次达到最高伤害加成。\n护盾具有如下效果：\n• 对雷元素伤害有250%的吸收效果；\n• 施放的瞬间，为北斗施加雷元素附着。',
      'buff': [
        {
          'name': '受击时伤害提升（一次）',
          'stat': Stats.DmgBonusExtra,
          'value': [160.0, 172.0, 184.0, 200.0, 212.0, 224.0, 240.0, 256.0, 272.0, 288.0, 304.0, 320.0, 340.0, 360.0, 380.0],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
        {
          'name': '受击时伤害提升（二次）',
          'stat': Stats.DmgBonusExtra,
          'value': [320.0, 344.0, 368.0, 400.0, 424.0, 448.0, 480.0, 512.0, 544.0, 576.0, 608.0, 640.0, 680.0, 720.0, 760.0],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
      ],
      'hit': [
        {
          'name': '基础伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [121.6, 130.72, 139.84, 152.0, 161.12, 170.24, 182.4, 194.56, 206.72, 218.88, 231.04, 243.2, 258.4, 273.6, 288.8],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '护盾吸收量',
          'value': [
            '14.4%最大生命值+1386',
            '15.48%最大生命值+1525',
            '16.56%最大生命值+1675',
            '18%最大生命值+1837',
            '19.08%最大生命值+2010',
            '20.16%最大生命值+2195',
            '21.6%最大生命值+2392',
            '23.04%最大生命值+2600',
            '24.48%最大生命值+2819',
            '25.92%最大生命值+3050',
            '27.36%最大生命值+3293',
            '28.8%最大生命值+3547',
            '30.6%最大生命值+3813',
            '32.4%最大生命值+4090',
            '34.2%最大生命值+4379'
          ],
        },
        {
          'name': '冷却时间',
          'value': ['7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒', '7.5秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '斫雷',
      'description':
          '重忆斩灭海山巨兽之战，唤起巨兽与雷电的力量，创造环绕自身的雷兽之盾，并对周围的敌人造成雷元素伤害。\n雷兽之盾\n• 普通攻击与重击命中时，释放雷电之力，引来1道能在敌人之间跃动的闪雷，造成雷元素伤害；\n• 提高角色的抗打断能力，并降低受到的伤害。\n每秒至多触发1道闪雷。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [121.6, 130.72, 139.84, 152.0, 161.12, 170.24, 182.4, 194.56, 206.72, 218.88, 231.04, 243.2, 258.4, 273.6, 288.8],
              'extra': {},
            },
          ],
        },
        {
          'name': '闪雷伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [96.0, 103.2, 110.4, 120.0, 127.2, 134.4, 144.0, 153.6, 163.2, 172.8, 182.4, 192.0, 204.0, 216.0, 228.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '伤害减免',
          'value': ['20%', '21%', '22%', '24%', '25%', '26%', '28%', '30%', '32%', '34%', '35%', '36%', '37%', '38%', '39%'],
        },
        {
          'name': '持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  35: {
    SkillType.Passive: [
      {
        'name': '奔狼',
        'description': '队伍中自己的角色冲刺消耗的体力降低20%。\n无法与效果完全相同的固有天赋叠加。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '觉醒',
        'description': '利爪与苍雷的冷却时间减少18%。\n施放雷牙时，重置利爪与苍雷的冷却时间。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '饥饿',
        'description': '雷泽的元素能量在50%以下时，元素充能效率提高30%。',
        'buff': [
          {
            'stat': Stats.Recharge,
            'value': 30.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·钢脊',
      'description': '普通攻击\n进行至多四段的连续挥砍。\n重击\n持续消耗体力，旋转大剑攻击周围的敌人。\n停止旋转时，会进行一次格外有力的挥砍。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [95.92, 102.46, 109.0, 117.72, 124.26, 131.89, 141.7, 151.51, 161.32, 171.13, 180.94, 190.75, 200.56, 210.37, 220.18],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [82.63, 88.27, 93.9, 101.41, 107.05, 113.62, 122.07, 130.52, 138.97, 147.42, 155.87, 164.33, 172.78, 181.23, 189.68],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [103.31, 110.36, 117.4, 126.79, 133.84, 142.05, 152.62, 163.19, 173.75, 184.32, 194.88, 205.45, 216.02, 226.58, 237.15],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [136.05, 145.32, 154.6, 166.97, 176.24, 187.07, 200.98, 214.89, 228.81, 242.72, 256.64, 270.55, 284.46, 298.38, 312.29],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击循环伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [62.54, 67.63, 72.72, 79.99, 85.08, 90.9, 98.9, 106.9, 114.9, 123.62, 132.35, 141.08, 149.8, 158.53, 167.26],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击终结伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.09, 122.3, 131.5, 144.65, 153.86, 164.38, 178.84, 193.31, 207.77, 223.55, 239.33, 255.11, 270.89, 286.67, 302.45],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [82.05, 88.72, 95.4, 104.94, 111.62, 119.25, 129.75, 140.24, 150.74, 162.19, 173.63, 185.08, 196.53, 207.98, 219.43],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [164.06, 177.41, 190.77, 209.84, 223.20, 238.46, 259.44, 280.43, 301.41, 324.30, 347.19, 370.09, 392.98, 415.87, 438.76],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [204.92, 221.60, 238.28, 262.10, 278.78, 297.85, 324.06, 350.27, 376.48, 405.07, 433.66, 462.26, 490.85, 519.44, 548.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒'],
        },
        {
          'name': '最大持续时间',
          'value': ['5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '利爪与苍雷',
      'description':
          '用师父与他的「家人」教他的方法，来解决猎物。\n点按\n向前挥动雷狼之爪，对前方的敌人造成雷元素伤害。\n若命中敌人，则会为雷泽累积一个雷之印，提高雷泽的元素充能效率。\n最多同时存在三个雷之印，叠加会刷新持续时间。\n长按\n聚集雷电力量引发小范围的雷爆，造成大量雷元素伤害，并清除已有的雷之印。\n每个因此被清除的雷之印，都会转为雷泽的元素能量。',
      'buff': [
        {
          'name': '雷之印充能效率提升',
          'stat': Stats.Recharge,
          'value': [20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [
        {
          'name': '点按技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [199.2, 214.14, 229.08, 249.0, 263.94, 278.88, 298.8, 318.72, 338.64, 358.56, 378.48, 398.4, 423.3, 448.2, 473.1],
              'extra': {},
            },
          ],
        },
        {
          'name': '长按技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [295.2, 317.34, 339.48, 369.0, 391.14, 413.28, 442.8, 472.32, 501.84, 531.36, 560.88, 590.4, 627.3, 664.2, 701.1],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '雷之印吸收恢复能量',
          'value': ['5/个', '5/个', '5/个', '5/个', '5/个', '5/个', '5/个', '5/个', '5/个', '5/个', '5/个', '5/个', '5/个', '5/个', '5/个'],
        },
        {
          'name': '雷之印持续时间',
          'value': ['18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒'],
        },
        {
          'name': '点按冷却时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '长按冷却时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '雷牙',
      'description':
          '唤醒无形的雷狼守护自己，对周围的敌人造成雷元素伤害，并消耗所有雷之印，为雷泽恢复元素能量。\n雷狼存在期间，会与雷泽共同战斗。\n雷狼\n• 会随雷泽的普通攻击协力攻击，造成雷元素伤害；\n• 提高雷泽的攻击速度、雷元素抗性；\n• 使雷泽免疫感电反应的伤害；\n• 无法施放重击。；\n• 提高雷泽的抗打断能力。\n效果将在雷泽退场时解除。\n退场时，会依据剩余的持续时间，归还至多10点元素能量。',
      'buff': [],
      'hit': [
        {
          'name': '爆发伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [160.0, 172.0, 184.0, 200.0, 212.0, 224.0, 240.0, 256.0, 272.0, 288.0, 304.0, 320.0, 340.0, 360.0, 380.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '狼魂伤害',
          'value': [
            '24%普通攻击伤害',
            '25.8%普通攻击伤害',
            '27.6%普通攻击伤害',
            '30%普通攻击伤害',
            '31.8%普通攻击伤害',
            '33.6%普通攻击伤害',
            '36%普通攻击伤害',
            '38.4%普通攻击伤害',
            '40.8%普通攻击伤害',
            '43.2%普通攻击伤害',
            '45.6%普通攻击伤害',
            '48%普通攻击伤害',
            '51%普通攻击伤害',
            '54%普通攻击伤害',
            '57%普通攻击伤害'
          ],
        },
        {
          'name': '普通攻击速度提升',
          'value': ['26%', '28%', '30%', '32%', '34%', '36%', '37%', '38%', '39%', '40%', '40%', '40%', '40%', '40%', '40%'],
        },
        {
          'name': '雷元素抗性提升',
          'value': ['80%', '80%', '80%', '80%', '80%', '80%', '80%', '80%', '80%', '80%', '80%', '80%', '80%', '80%', '80%'],
        },
        {
          'name': '持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  36: {
    SkillType.Passive: [
      {
        'name': '药剂通识',
        'description': '合成药剂时，有20%概率返还部分合成材料。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '电感余震',
        'description': '重击命中时，会为敌人附加苍雷的引雷效果。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '静电场力',
        'description': '敌人受到蔷薇的雷光攻击后，降低15%防御力，持续10秒。',
        'buff': [
          {
            'stat': Stats.DefendDecrease,
            'value': 15.0,
            'buffType': BuffType.DebuffForEnemy,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·指尖雷暴',
      'description': '普通攻击\n进行至多四段的电击，造成雷元素伤害。\n重击\n消耗一定体力，短暂咏唱后，造成雷元素范围伤害。\n下落攻击\n凝聚雷电的力量，从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成雷元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [39.6, 42.57, 45.54, 49.5, 52.47, 55.44, 59.4, 63.36, 67.32, 71.28, 75.4, 80.78, 86.17, 91.56, 96.94],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [35.92, 38.61, 41.31, 44.9, 47.59, 50.29, 53.88, 57.47, 61.06, 64.66, 68.39, 73.28, 78.16, 83.05, 87.93],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [42.8, 46.01, 49.22, 53.5, 56.71, 59.92, 64.2, 68.48, 72.76, 77.04, 81.49, 87.31, 93.13, 98.95, 104.77],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [54.96, 59.08, 63.2, 68.7, 72.82, 76.94, 82.44, 87.94, 93.43, 98.93, 104.64, 112.12, 119.59, 127.07, 134.54],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [177.12, 190.4, 203.69, 221.4, 234.68, 247.97, 265.68, 283.39, 301.1, 318.82, 337.24, 361.32, 385.41, 409.5, 433.59],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '苍雷',
      'description':
          '导引雷电的力量，把麻烦的东西都清理干净。\n点按\n放出能自行索敌的球形闪电。\n命中时，会造成雷元素伤害，并对小范围内的敌人施加至多叠加3层的引雷状态。\n长按\n持续咏唱后，召唤雷电从天而降，对附近的所有敌人造成大量雷元素伤害。\n对处于引雷状态下的敌人，会根据叠加层数造成大量额外伤害，并清除引雷效果。',
      'buff': [],
      'hit': [
        {
          'name': '点按伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [80.0, 86.0, 92.0, 100.0, 106.0, 112.0, 120.0, 128.0, 136.0, 144.0, 152.0, 160.0, 170.0, 180.0, 190.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '无引雷长按伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [320.0, 344.0, 368.0, 400.0, 424.0, 448.0, 480.0, 512.0, 544.0, 576.0, 608.0, 640.0, 680.0, 720.0, 760.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '一层引雷长按伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [368.0, 395.6, 423.2, 460.0, 487.6, 515.2, 552.0, 588.8, 625.6, 662.4, 699.2, 736.0, 782.0, 828.0, 874.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '二层引雷长按伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [424.0, 455.8, 487.6, 530.0, 561.8, 593.6, 636.0, 678.4, 720.8, 763.2, 805.6, 848.0, 901.0, 954.0, 1007.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '三层引雷长按伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [487.2, 523.74, 560.28, 609.0, 645.54, 682.08, 730.8, 779.52, 828.24, 876.96, 925.68, 974.4, 1035.3, 1096.2, 1157.1],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '点按冷却时间',
          'value': ['1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒', '1秒'],
        },
        {
          'name': '长按冷却时间',
          'value': ['16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒', '16秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '蔷薇的雷光',
      'description': '召唤蔷薇雷光，释放强大的雷电之力，击退周围的敌人并造成雷元素伤害。\n存在期间内，蔷薇雷光会持续放电攻击附近的敌人，造成雷元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '放电伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [36.56, 39.3, 42.04, 45.7, 48.44, 51.18, 54.84, 58.5, 62.15, 65.81, 69.46, 73.12, 77.69, 82.26, 86.83],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  37: {
    SkillType.Passive: [
      {
        'name': '转瞬的迅雷',
        'description': '队伍中附近的其他角色获取雷影剑产生的丰穰勾玉时，雷影剑的冷却时间减少1.5秒。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '回响的轰雷',
        'description': '基于旅行者自己元素充能效率的10%，提升雷影剑的丰穰勾玉提供的元素充能效率。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·异邦惊雷',
      'description': '普通攻击\n进行至多五段的连续剑击。\n重击\n消耗一定体力，瞬间向前方挥出两剑。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [44.46, 48.08, 51.7, 56.87, 60.49, 64.63, 70.31, 76.0, 81.69, 87.89, 94.09, 100.3, 106.5, 112.71, 118.91],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.43, 46.97, 50.5, 55.55, 59.09, 63.13, 68.68, 74.23, 79.79, 85.85, 91.91, 97.97, 104.03, 110.09, 116.15],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [52.98, 57.29, 61.6, 67.76, 72.07, 77.0, 83.78, 90.55, 97.33, 104.72, 112.11, 119.5, 126.9, 134.29, 141.68],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [58.31, 63.05, 67.8, 74.58, 79.33, 84.75, 92.21, 99.67, 107.12, 115.26, 123.4, 131.53, 139.67, 147.8, 155.94],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [70.78, 76.54, 82.3, 90.53, 96.29, 102.88, 111.93, 120.98, 130.03, 139.91, 149.79, 159.66, 169.54, 179.41, 189.29],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [55.9, 60.45, 65.0, 71.5, 76.05, 81.25, 88.4, 95.55, 102.7, 110.5, 118.3, 126.1, 133.9, 141.7, 149.5],
              'extra': {},
            },
            {
              'value': [72.24, 78.12, 84.0, 92.4, 98.28, 105.0, 114.24, 123.48, 132.72, 142.8, 152.88, 162.96, 173.04, 183.12, 193.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '雷影剑',
      'description': '斩出三道迅捷的雷影。雷影会对敌人造成雷元素伤害，并在命中敌人时，留下丰穰勾玉。\n初始至多产生2枚丰穰勾玉。施放技能时，会清除自己产生的丰穰勾玉。\n丰穰勾玉\n角色接近时，会吸收丰穰勾玉，获得以下效果：\n• 恢复元素能量；\n• 在持续时间内，提高元素充能效率。',
      'buff': [
        {
          'name': '元素充能效率提升',
          'stat': Stats.Recharge,
          'value': [20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0],
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [78.66, 84.56, 90.46, 98.33, 104.23, 110.13, 118.0, 125.86, 133.73, 141.6, 149.46, 157.33, 167.16, 176.99, 186.83],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '元素能量恢复',
          'value': ['3/个', '3/个', '3/个', '3.5/个', '3.5/个', '3.5/个', '4/个', '4/个', '4/个', '4/个', '4/个', '4/个', '4/个', '4/个', '4/个'],
        },
        {
          'name': '持续时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '丰穰勾玉存在时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['13.5秒', '13.5秒', '13.5秒', '13.5秒', '13.5秒', '13.5秒', '13.5秒', '13.5秒', '13.5秒', '13.5秒', '13.5秒', '13.5秒', '13.5秒', '13.5秒', '13.5秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '雷轰电转',
      'description': '唤来雷霆绕身的加护，击退周围的敌人并造成雷元素伤害。\n雷霆绕身\n当前场上自己角色的普通攻击或重击命中敌人时，会召唤威光落雷，对敌人造成雷元素伤害。\n威光落雷命中敌人时，会为该角色恢复元素能量。\n每0.5秒至多产生一次威光落雷。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [114.4, 122.98, 131.56, 143.0, 151.58, 160.16, 171.6, 183.04, 194.48, 205.92, 217.36, 228.8, 243.1, 257.4, 271.7],
              'extra': {},
            },
          ],
        },
        {
          'name': '威光落雷伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [32.8, 35.26, 37.72, 41.0, 43.46, 45.92, 49.2, 52.48, 55.76, 59.04, 62.32, 65.6, 69.7, 73.8, 77.9],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '元素能量恢复',
          'value': ['0.8', '0.8', '0.8', '0.9', '0.9', '0.9', '1', '1', '1', '1', '1', '1', '1', '1', '1'],
        },
        {
          'name': '持续时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  38: {
    SkillType.Passive: [
      {
        'name': '万千的愿望',
        'description': '队伍中附近的角色获得元素晶球或元素微粒时，会为诸愿百眼之轮积攒2层愿力。\n该效果每3秒至多触发一次。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '殊胜之御体',
        'description': '基于元素充能效率超过100%的部分，每1%使雷电将军获得下列效果：\n• 梦想一心状态提供的元素能量恢复提高0.6%；\n• 雷元素伤害加成提升0.4%。',
        'buff': [
          {
            'stat': Stats.DmgBonusByRechargeOver100,
            'value': 0.4,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '天下名物狩',
        'description': '突破单手剑和长柄武器时，消耗的摩拉数量减少50%。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·源流',
      'description': '普通攻击\n进行至多五段的连续枪击。\n重击\n消耗一定体力，进行向上的挑斩攻击。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [39.65, 42.87, 46.1, 50.71, 53.94, 57.63, 62.7, 67.77, 72.84, 78.37, 84.71, 92.16, 99.62, 107.07, 115.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [39.73, 42.97, 46.2, 50.82, 54.05, 57.75, 62.83, 67.91, 73.0, 78.54, 84.89, 92.36, 99.83, 107.3, 115.45],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [49.88, 53.94, 58.0, 63.8, 67.86, 72.5, 78.88, 85.26, 91.64, 98.6, 106.58, 115.95, 125.33, 134.71, 144.94],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [28.98, 31.34, 33.70, 37.07, 39.43, 42.13, 45.83, 49.54, 53.25, 57.29, 61.92, 67.37, 72.82, 78.27, 84.22],
              'extra': {},
            },
            {
              'value': [28.98, 31.34, 33.70, 37.07, 39.43, 42.13, 45.83, 49.54, 53.25, 57.29, 61.92, 67.37, 72.82, 78.27, 84.22],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [65.45, 70.77, 76.1, 83.71, 89.04, 95.13, 103.5, 111.87, 120.24, 129.37, 139.83, 152.14, 164.44, 176.75, 190.17],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [99.59, 107.69, 115.8, 127.38, 135.49, 144.75, 157.49, 170.23, 182.96, 196.86, 212.78, 231.51, 250.23, 268.96, 289.38],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '神变·恶曜开眼',
      'description':
          '雷电将军展开净土的一角，对周围的敌人造成雷元素伤害，为队伍中附近的所有角色授以「雷罚恶曜之眼」。\n雷罚恶曜之眼\n• 获授雷罚恶曜之眼的角色的攻击对敌人造成伤害时，雷罚恶曜之眼会进行协同攻击，在敌人的位置造成雷元素范围伤害。\n• 获授雷罚恶曜之眼的角色在持续期间内，元素爆发造成的伤害获得提升，提升程度基于元素爆发的元素能量。\n每个队伍的雷罚恶曜之眼，每0.9秒至多进行一次协同攻击。\n由队伍中自己的角色以外的角色触发的协同攻击造成的伤害为原本的20%。',
      'buff': [
        {
          'name': '元素爆发伤害提高',
          'stat': Stats.DmgBonusByEnergy,
          'value': [0.22, 0.23, 0.24, 0.25, 0.26, 0.27, 0.28, 0.29, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3],
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.SkillQ,
            DamageType.SkillQSpecial,
          ],
        },
      ],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [117.2, 125.99, 134.78, 146.5, 155.29, 164.08, 175.8, 187.52, 199.24, 210.96, 222.68, 234.4, 249.05, 263.7, 278.35],
              'extra': {},
            },
          ],
        },
        {
          'name': '协同攻击伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [42.0, 45.15, 48.3, 52.5, 55.65, 58.8, 63.0, 67.2, 71.4, 75.6, 79.8, 84.0, 89.25, 94.5, 99.75],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒', '25秒'],
        },
        {
          'name': '冷却时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '奥义·梦想真说',
      'description':
          '汇聚万千真言，竭尽诸愿百眼之愿力，斩出粉碎一切诅咒的梦想一刀，造成雷元素范围伤害；并在接下来的一段时间内，使用「梦想一心」战斗。依据施放时消耗的诸愿百眼之轮的愿力层数，增加梦想一刀与梦想一心的攻击造成的伤害。\n梦想一心\n在此状态下，雷电将军将使用刀进行攻击，并将普通攻击、重击与下落攻击造成的伤害转为无法被附魔覆盖的雷元素伤害，并在这些攻击命中敌人时，为队伍中附近的所有角色恢复元素能量。每1秒至多通过这种方式恢复一次元素能量，在持续期间内至多触发5次。\n在此状态下，雷电将军的抗打断能力提高，并免疫感电反应的伤害。\n梦想一心状态下，雷电将军的普通攻击、重击与下落攻击造成的伤害，视为元素爆发伤害。\n梦想一心的效果将在雷电将军退场时解除。\n诸愿百眼之轮\n队伍中附近的角色（不包括雷电将军自己）施放元素爆发时，会依据元素爆发的元素能量，为雷电将军的诸愿百眼之轮积攒愿力。\n至多积攒60层愿力。\n诸愿百眼之轮中积攒的愿力，会在脱离战斗300秒后清除。',
      'buff': [
        {
          'name': '60层愿力加成',
          'stat': Stats.RatioExtra,
          'value': [233.4, 250.8, 268.2, 291.6, 309.0, 326.4, 349.8, 373.2, 396.6, 420.0, 443.4, 466.8, 495.6, 525.0, 553.8],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillQ,
          ],
        },
        {
          'name': '60层愿力加成',
          'stat': Stats.ExtraDamageByAttack,
          'value': [43.8, 46.8, 50.4, 54.6, 57.6, 61.2, 65.4, 69.6, 73.8, 78.6, 82.8, 87.0, 92.4, 97.8, 103.2],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillQSpecial,
          ],
        },
      ],
      'hit': [
        {
          'name': '梦想一刀伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [400.8, 430.86, 460.92, 501.0, 531.06, 561.12, 601.2, 641.28, 681.36, 721.44, 761.52, 801.6, 851.7, 901.8, 951.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '一段伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [44.74, 47.79, 50.84, 54.91, 57.96, 61.51, 66.09, 70.66, 75.24, 79.82, 84.39, 88.97, 93.54, 98.12, 102.69],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [43.96, 46.95, 49.95, 53.95, 56.94, 60.44, 64.94, 69.43, 73.93, 78.42, 82.92, 87.41, 91.91, 96.4, 100.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [53.82, 57.49, 61.16, 66.05, 69.72, 74.0, 79.51, 85.01, 90.52, 96.02, 101.53, 107.03, 112.54, 118.04, 123.55],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [30.89, 32.99, 35.10, 37.91, 40.01, 42.47, 45.63, 48.79, 51.95, 55.11, 58.27, 61.43, 64.58, 67.74, 70.90],
              'extra': {},
            },
            {
              'value': [30.98, 33.09, 35.20, 38.02, 40.13, 42.59, 45.76, 48.93, 52.10, 55.26, 58.43, 61.60, 64.77, 67.94, 71.10],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [73.94, 78.99, 84.03, 90.75, 95.79, 101.67, 109.24, 116.8, 124.36, 131.92, 139.48, 147.05, 154.61, 162.17, 169.73],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [61.60, 65.80, 70.0, 75.60, 79.80, 84.70, 91.0, 97.30, 103.60, 109.90, 116.20, 122.50, 128.80, 135.10, 141.40],
              'extra': {},
            },
            {
              'value': [74.36, 79.43, 84.50, 91.26, 96.33, 102.25, 109.85, 117.46, 125.06, 132.67, 140.27, 147.88, 155.48, 163.09, 170.69],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '每层愿力加成',
          'value': [
            '3.89%/0.73%攻击力的伤害',
            '4.18%/0.78%攻击力的伤害',
            '4.47%/0.84%攻击力的伤害',
            '4.86%/0.91%攻击力的伤害',
            '5.15%/0.96%攻击力的伤害',
            '5.44%/1.02%攻击力的伤害',
            '5.83%/1.09%攻击力的伤害',
            '6.22%/1.16%攻击力的伤害',
            '6.61%/1.23%攻击力的伤害',
            '7%/1.31%攻击力的伤害',
            '7.39%/1.38%攻击力的伤害',
            '7.78%/1.45%攻击力的伤害',
            '8.26%/1.54%攻击力的伤害',
            '8.75%/1.63%攻击力的伤害',
            '9.23%/1.72%攻击力的伤害',
          ],
        },
        {
          'name': '积攒愿力层数',
          'value': [
            '0.15/能量',
            '0.16/能量',
            '0.16/能量',
            '0.17/能量',
            '0.17/能量',
            '0.18/能量',
            '0.18/能量',
            '0.19/能量',
            '0.19/能量',
            '0.2/能量',
            '0.2/能量',
            '0.2/能量',
            '0.2/能量',
            '0.2/能量',
            '0.2/能量'
          ],
        },
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
        {
          'name': '梦想一心能量恢复',
          'value': ['1.6', '1.7', '1.8', '1.9', '2', '2.1', '2.2', '2.3', '2.4', '2.5', '2.5', '2.5', '2.5', '2.5', '2.5'],
        },
        {
          'name': '梦想一心持续时间',
          'value': ['7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒', '7秒'],
        },
        {
          'name': '冷却时间',
          'value': ['18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒'],
        },
      ],
      'energy': 90,
    },
  },
  39: {
    SkillType.Passive: [
      {
        'name': '检地',
        'description': '在稻妻执行探索派遣任务时，消耗的时间缩短25%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '不动心',
        'description': '处于鸦羽天狗霆雷召咒的「乌羽护持」状态下时，瞄准射击的所需的蓄力时间减少60%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '御公仪',
        'description': '天狗咒雷 • 伏命中敌人后，将基于九条裟罗的元素充能效率，每100%为队伍中所有角色恢复1.2点元素能量。该效果每3秒至多触发一次。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·天狗传弓术',
      'description':
          '普通攻击\n进行至多五段的连续弓箭射击。\n重击\n进行伤害更高、更为精准的瞄准射击。\n瞄准时，雷霆的力量会汇聚到她的箭矢上。聚满了雷霆之力的箭矢在命中敌人时造成雷元素伤害。\n处于「乌羽护持」状态下时，蓄力完成的箭矢会在命中时留下「乌羽」。\n下落攻击\n从空中射出箭雨，并迅速下坠冲击地面，在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [36.89, 39.9, 42.9, 47.19, 50.19, 53.63, 58.34, 63.06, 67.78, 72.93, 78.08, 83.23, 88.37, 93.52, 98.67],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [38.7, 41.85, 45.0, 49.5, 52.65, 56.25, 61.2, 66.15, 71.1, 76.5, 81.9, 87.3, 92.7, 98.1, 103.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [48.5, 52.45, 56.4, 62.04, 65.99, 70.5, 76.7, 82.91, 89.11, 95.88, 102.65, 109.42, 116.18, 122.95, 129.72],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [50.4, 54.5, 58.6, 64.46, 68.56, 73.25, 79.7, 86.14, 92.59, 99.62, 106.65, 113.68, 120.72, 127.75, 134.78],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [58.05, 62.78, 67.5, 74.25, 78.97, 84.38, 91.8, 99.23, 106.65, 114.75, 122.85, 130.95, 139.05, 147.15, 155.25],
              'extra': {},
            },
          ],
        },
        {
          'name': '瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 92.82, 98.94, 105.06, 111.18, 117.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '满蓄力瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [124.0, 133.3, 142.6, 155.0, 164.3, 173.6, 186.0, 198.4, 210.8, 223.2, 235.6, 248.0, 263.5, 279.0, 294.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '鸦羽天狗霆雷召咒',
      'description':
          '以天狗之神速向后转移，并唤来乌羽的加护。\n获得持续18秒的「乌羽护持」，当九条裟罗发射完成蓄力的箭矢时，会消耗「乌羽护持」，并在命中的位置留下「乌羽」。\n「乌羽」会在短时间后引发天狗咒雷 • 伏，对范围内敌人造成雷元素伤害，并使其范围内的当前场上角色基于九条裟罗的基础攻击力，以一定比例获得攻击力加成。\n各种天狗咒雷提供的攻击力提升不能叠加，效果与持续时间由后生效的为准。',
      'buff': [
        {
          'name': '攻击力加成',
          'stat': Stats.AttackBonusByBaseAttack,
          'value': [42.96, 46.18, 49.4, 53.7, 56.92, 60.14, 64.44, 68.74, 73.03, 77.33, 81.62, 85.92, 91.29, 96.66, 102.03],
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [
        {
          'name': '天狗咒雷·伏 伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [125.76, 135.19, 144.62, 157.2, 166.63, 176.06, 188.64, 201.22, 213.79, 226.37, 238.94, 251.52, 267.24, 282.96, 298.68],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '攻击力加成持续时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '冷却时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '煌煌千道镇式',
      'description':
          '在目标的位置降下天狗咒雷 • 金刚坏，造成雷元素范围伤害。此后，天狗咒雷 • 金刚坏将扩散转为4道连续的天狗咒雷 • 雷砾，造成雷元素范围伤害。\n天狗咒雷 • 金刚坏与天狗咒雷 • 雷砾会使其范围内的当前场上角色获得与元素战技「鸦羽天狗霆雷召咒」相同的攻击力加成。\n各种天狗咒雷提供的攻击力提升不能叠加，效果与持续时间由后生效的为准。\n裟罗背离天狗之众，又短暂对天领奉行失去了信仰。在打破迷惘之后，这是她重新所找到的，属于自己的雷光。',
      'buff': [],
      'hit': [
        {
          'name': '天狗咒雷·金刚坏 伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [409.6, 440.32, 471.04, 512.0, 542.72, 573.44, 614.4, 655.36, 696.32, 737.28, 778.24, 819.2, 870.4, 921.6, 972.8],
              'extra': {},
            },
          ],
        },
        {
          'name': '天狗咒雷·雷砾 伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [34.12, 36.68, 39.24, 42.65, 45.21, 47.77, 51.18, 54.59, 58.0, 61.42, 64.83, 68.24, 72.51, 76.77, 81.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  40: {
    SkillType.Passive: [
      {
        'name': '晶石命理',
        'description': '锻造长柄武器时，返还15%消耗的矿石。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '悬岩宸断',
        'description': '玉璋护盾受到伤害时，会产生坚璧效果：\n• 处于玉璋护盾庇护下的角色，护盾强效提升5%；\n• 该效果至多叠加5次，持续直到玉璋护盾消失。',
        'buff': [
          {
            'stat': Stats.ShieldStrength,
            'value': 25.0,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '炊金馔玉',
        'description': '基于生命值上限，钟离的以下攻击造成的伤害提高：\n• 普通攻击、重击与下落攻击伤害提高值：生命值上限的1.39%\n• 地心的岩脊、共鸣伤害与长按伤害提高值：生命值上限的1.9%\n• 天星伤害提高值：生命值上限的33%',
        'buff': [
          {
            'stat': Stats.ExtraDamageByHp,
            'value': 1.39,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.Normal,
              DamageType.Charged,
              DamageType.Plunging,
            ],
          },
          {
            'stat': Stats.ExtraDamageByHp,
            'value': 1.9,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.SkillE,
            ],
          },
          {
            'stat': Stats.ExtraDamageByHp,
            'value': 33.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.SkillQ,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·岩雨',
      'description': '普通攻击\n进行至多六段的连续枪击。\n重击\n消耗一定体力，向前方疾行，在行动路径上和终点投下如雨的岩枪。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [30.77, 33.27, 35.78, 39.36, 41.86, 44.72, 48.66, 52.59, 56.53, 60.82, 65.74, 71.53, 77.31, 83.1, 89.41],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [31.15, 33.69, 36.22, 39.85, 42.38, 45.28, 49.26, 53.25, 57.23, 61.58, 66.56, 72.42, 78.27, 84.13, 90.52],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [38.58, 41.72, 44.86, 49.34, 52.48, 56.07, 61.0, 65.94, 70.87, 76.26, 82.42, 89.68, 96.93, 104.18, 112.1],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [42.94, 46.43, 49.93, 54.92, 58.42, 62.41, 67.9, 73.4, 78.89, 84.88, 91.74, 99.82, 107.89, 115.97, 124.77],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [10.75, 11.63, 12.5, 13.75, 14.63, 15.63, 17.0, 18.38, 19.75, 21.25, 22.97, 24.99, 27.01, 29.03, 31.24],
              'extra': {},
            },
            {
              'value': [10.75, 11.63, 12.5, 13.75, 14.63, 15.63, 17.0, 18.38, 19.75, 21.25, 22.97, 24.99, 27.01, 29.03, 31.24],
              'extra': {},
            },
            {
              'value': [10.75, 11.63, 12.5, 13.75, 14.63, 15.63, 17.0, 18.38, 19.75, 21.25, 22.97, 24.99, 27.01, 29.03, 31.24],
              'extra': {},
            },
            {
              'value': [10.75, 11.63, 12.5, 13.75, 14.63, 15.63, 17.0, 18.38, 19.75, 21.25, 22.97, 24.99, 27.01, 29.03, 31.24],
              'extra': {},
            },
          ],
        },
        {
          'name': '六段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [54.5, 58.93, 63.37, 69.7, 74.14, 79.21, 86.18, 93.15, 100.12, 107.73, 116.44, 126.69, 136.93, 147.18, 158.36],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [111.03, 120.06, 129.1, 142.01, 151.05, 161.38, 175.58, 189.78, 203.98, 219.47, 237.22, 258.1, 278.97, 299.85, 322.62],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '地心',
      'description':
          '山脉中、大地上、磐石间，都遍布着岩之力。能自如驱动这股力量的人却少之又少。\n点按\n命令大地上岩元素积聚而起，创造岩脊。\n长按\n令附近的岩元素爆发，造成以下效果：\n• 如果岩脊数量没有达到上限，则创造岩脊；\n• 形成玉璋护盾，伤害吸收量受益于钟离的生命值上限；\n• 造成岩元素范围伤害；\n• 身边如果有附带有岩元素的目标，则大量消耗至多两个目标的岩元素。这个效果不会造成伤害。\n岩脊\n创造时，造成岩元素范围伤害。\n此外，存在期间会与周围的其他岩元素创造物间歇进行原岩共鸣，对周围的敌人造成岩元素伤害。\n岩脊视为岩元素创造物，可以阻拦攻击，可以攀爬。\n由钟离自己创造的岩脊，初始同时只能存在一个。\n玉璋护盾\n对所有元素伤害与物理伤害有150%的吸收效果。\n处于玉璋护盾庇护下的角色，会使附近小范围内敌人的所有元素抗性与物理抗性降低20%，该效果不可叠加。',
      'buff': [
        {
          'name': '减抗',
          'stat': Stats.ResistanceDecreaseElement,
          'value': [20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0],
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
        {
          'name': '减抗',
          'stat': Stats.ResistanceDecreasePhysical,
          'value': [20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0],
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [
        {
          'name': '岩脊伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [16.0, 17.20, 18.40, 20.0, 21.20, 22.40, 24.0, 25.60, 27.20, 28.80, 30.40, 32.0, 34.0, 36.0, 38.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '共鸣伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [32.0, 34.40, 36.80, 40.0, 42.40, 44.80, 48.0, 51.20, 54.40, 57.60, 60.80, 64.0, 68.0, 72.0, 76.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '长按伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [80.0, 86.0, 92.0, 100.0, 106.0, 112.0, 120.0, 128.0, 136.0, 144.0, 152.0, 160.0, 170.0, 180.0, 190.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '护盾基础吸收量',
          'value': ['1232', '1356', '1489', '1633', '1787', '1951', '2126', '2311', '2506', '2712', '2927', '3153', '3389', '3636', '3893'],
        },
        {
          'name': '护盾附加吸收量',
          'value': [
            '12.8%最大生命值',
            '13.76%最大生命值',
            '14.72%最大生命值',
            '16%最大生命值',
            '16.96%最大生命值',
            '17.92%最大生命值',
            '19.2%最大生命值',
            '20.48%最大生命值',
            '21.76%最大生命值',
            '23.04%最大生命值',
            '24.32%最大生命值',
            '25.6%最大生命值',
            '27.2%最大生命值',
            '28.8%最大生命值',
            '30.4%最大生命值'
          ],
        },
        {
          'name': '护盾持续时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
        {
          'name': '点按冷却时间',
          'value': ['4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒'],
        },
        {
          'name': '长按冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '天星',
      'description': '降下巨大的星岩，对坠落范围内的敌人造成巨额岩元素伤害，并使其石化。\n石化\n处于石化状态下的敌人无法行动。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [401.08, 444.44, 487.8, 542.0, 590.78, 639.56, 704.6, 769.64, 834.68, 899.72, 964.76, 1029.8, 1084.0, 1138.2, 1192.4],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '石化时间',
          'value': ['3.1秒', '3.2秒', '3.3秒', '3.4秒', '3.5秒', '3.6秒', '3.7秒', '3.8秒', '3.9秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒'],
        },
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
      'energy': 40,
    },
  },
  41: {
    SkillType.Passive: [
      {
        'name': '天才的发现',
        'description': '合成武器突破素材时，有10%概率获得2倍产出。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '白垩色的威压',
        'description': '创生法 • 拟造阳华的刹那之花对生命值低于50%的敌人造成的伤害提高25%。',
        'buff': [
          {
            'stat': Stats.DmgBonus,
            'value': 25.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.SkillE,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '瓶中人的天慧',
        'description': '施放诞生式 • 大地之潮时，使附近的队伍中角色的元素精通提高125点，持续10秒。',
        'buff': [
          {
            'stat': Stats.Mastery,
            'value': 125.0,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·西风剑术·白',
      'description': '普通攻击\n进行至多五段的连续剑击。\n重击\n消耗一定体力，瞬间向前方挥出两剑。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [36.74, 39.73, 42.72, 46.99, 49.98, 53.4, 58.1, 62.8, 67.5, 72.62, 78.5, 85.41, 92.31, 99.22, 106.76],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [36.74, 39.73, 42.72, 46.99, 49.98, 53.4, 58.1, 62.8, 67.5, 72.62, 78.5, 85.41, 92.31, 99.22, 106.76],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [47.45, 51.32, 55.18, 60.7, 64.56, 68.98, 75.04, 81.11, 87.18, 93.81, 101.39, 110.32, 119.24, 128.16, 137.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [49.75, 53.8, 57.85, 63.64, 67.68, 72.31, 78.68, 85.04, 91.4, 98.35, 106.3, 115.65, 125.01, 134.36, 144.57],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [62.07, 67.13, 72.18, 79.4, 84.45, 90.22, 98.16, 106.1, 114.04, 122.7, 132.63, 144.3, 155.97, 167.64, 180.38],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [47.30, 51.15, 55.0, 60.50, 64.35, 68.75, 74.80, 80.85, 86.90, 93.50, 101.06, 109.96, 118.85, 127.74, 137.45],
              'extra': {},
            },
            {
              'value': [60.20, 65.10, 70.0, 77.0, 81.90, 87.50, 95.20, 102.90, 110.60, 119.0, 128.62, 139.94, 151.26, 162.58, 174.93],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '创生法·拟造阳华',
      'description':
          '炼成阳华，造成岩元素范围伤害。\n阳华\n具有如下特性：\n• 以阳华为中心的领域中的敌人受到伤害时，阳华将会生成刹那之花，绽放造成岩元素范围伤害，伤害基于阿贝多的防御力。\n• 每2秒只能生成一次刹那之花。\n• 角色处在阳华上时，阳华将会凝聚岩元素的力量，形成将角色托起至一定高度的晶台。同时只能存在一个晶台。\n• 同时只能存在一个由阿贝多自己创造的阳华，视为岩元素创造物。\n长按\n可以调整技能生效位置。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [130.4, 140.18, 149.96, 163.0, 172.78, 182.56, 195.6, 208.64, 221.68, 234.72, 247.76, 260.8, 277.1, 293.4, 309.7],
              'extra': {},
            },
          ],
        },
        {
          'name': '刹那之花伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByDefend: [133.6, 143.62, 153.64, 167.0, 177.02, 187.04, 200.4, 213.76, 227.12, 240.48, 253.84, 267.2, 283.9, 300.6, 317.3],
              },
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒'],
        },
        {
          'name': '冷却时间',
          'value': ['4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '诞生式·大地之潮',
      'description': '岩晶在阿贝多的指示下涌动爆发，在阿贝多前方造成岩元素范围伤害。\n场上存在阿贝多自己创造的阳华时，会在阳华的领域内生成7朵生灭之花，猛烈绽放并造成岩元素范围伤害。\n爆发伤害与生灭之花的伤害不会生成刹那之花。',
      'buff': [],
      'hit': [
        {
          'name': '爆发伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [367.2, 394.74, 422.28, 459.0, 486.54, 514.08, 550.8, 587.52, 624.24, 660.96, 697.68, 734.4, 780.3, 826.2, 872.1],
              'extra': {},
            },
          ],
        },
        {
          'name': '生灭之花伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [72.0, 77.40, 82.80, 90.0, 95.40, 100.80, 108.0, 115.20, 122.40, 129.60, 136.80, 144.0, 153.0, 162.0, 171.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
      'energy': 40,
    },
  },
  42: {
    SkillType.Passive: [
      {
        'name': '破碎的绝岩',
        'description': '星陨剑的冷却时间减少2秒。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '狂乱的崩岩',
        'description': '普通攻击的最后一击会附带崩毁，对范围内的敌人造成60%攻击力的岩元素伤害。',
        'buff': [],
        'hit': [
          {
            'name': '岩元素伤害',
            'damageType': DamageType.Normal,
            'elementType': SkillElementType.Element,
            'value': [
              {
                'value': 60.0,
                'extra': {},
              },
            ],
          },
        ],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·异邦岩锋',
      'description': '普通攻击\n进行至多五段的连续剑击。\n重击\n消耗一定体力，瞬间向前方挥出两剑。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [44.46, 48.08, 51.7, 56.87, 60.49, 64.63, 70.31, 76.0, 81.69, 87.89, 94.09, 100.3, 106.5, 112.71, 118.91],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.43, 46.97, 50.5, 55.55, 59.09, 63.13, 68.68, 74.23, 79.79, 85.85, 91.91, 97.97, 104.03, 110.09, 116.15],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [52.98, 57.29, 61.6, 67.76, 72.07, 77.0, 83.78, 90.55, 97.33, 104.72, 112.11, 119.5, 126.9, 134.29, 141.68],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [58.31, 63.05, 67.8, 74.58, 79.33, 84.75, 92.21, 99.67, 107.12, 115.26, 123.4, 131.53, 139.67, 147.8, 155.94],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [70.78, 76.54, 82.3, 90.53, 96.29, 102.88, 111.93, 120.98, 130.03, 139.91, 149.79, 159.66, 169.54, 179.41, 189.29],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [55.9, 60.45, 65.0, 71.5, 76.05, 81.25, 88.4, 95.55, 102.7, 110.5, 118.3, 126.1, 133.9, 141.7, 149.5],
              'extra': {},
            },
            {
              'value': [72.24, 78.12, 84.0, 92.4, 98.28, 105.0, 114.24, 123.48, 132.72, 142.8, 152.88, 162.96, 173.04, 183.12, 193.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '星陨剑',
      'description': '从大地深处升起荒星，引发爆炸，造成岩元素范围伤害。\n荒星视为岩元素创造物，可以阻拦攻击，可以攀爬。\n长按\n可以调整技能生效位置。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [248.0, 266.6, 285.2, 310.0, 328.6, 347.2, 372.0, 396.8, 421.6, 446.4, 471.2, 496.0, 527.0, 558.0, 589.0],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '荒星存在时间',
          'value': ['30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒', '30秒'],
        },
        {
          'name': '冷却时间',
          'value': ['8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '岩潮叠嶂',
      'description': '激活大地深处的岩元素，引发扩散的震荡波。\n击退周围的敌人，造成岩元素范围伤害。\n此后，在震荡波的外围形成突起的岩嶂。\n岩嶂视为岩元素创造物，可以阻拦攻击。',
      'buff': [],
      'hit': [
        {
          'name': '地震波单次伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [148.0, 159.1, 170.2, 185.0, 196.1, 207.2, 222.0, 236.8, 251.6, 266.4, 281.2, 296.0, 314.5, 333.0, 351.5],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '岩嶂存在时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  43: {
    SkillType.Passive: [
      {
        'name': '奇石珠宝录',
        'description': '在小地图上显示周围能产出锻造用矿石的矿脉位置。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '星移势转',
        'description': '拥有星璇时，凝光的重击不会消耗体力。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '储之千日，用之一刻',
        'description': '穿过璇玑屏的角色会获得12%岩元素伤害加成，持续10秒。',
        'buff': [
          {
            'stat': Stats.EleDmgBonus,
            'value': 12.0,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·千金掷',
      'description':
          '普通攻击\n发射宝石，造成岩元素伤害。\n命中时，赋予凝光一枚星璇。\n重击\n消耗体力，发射一颗巨型宝石，造成岩元素伤害。\n若凝光拥有星璇，施放重击时会将所有星璇一同发射，造成额外的伤害。\n下落攻击\n凝聚晶岩的力量，从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成岩元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '普通攻击伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [28.0, 30.1, 32.2, 35.0, 37.1, 39.2, 42.0, 44.8, 47.6, 50.4, 53.31, 57.12, 60.93, 64.74, 68.54],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [174.08, 187.14, 200.19, 217.6, 230.66, 243.71, 261.12, 278.53, 295.94, 313.34, 331.45, 355.12, 378.8, 402.47, 426.15],
              'extra': {},
            },
          ],
        },
        {
          'name': '星璇伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [49.6, 53.32, 57.04, 62.0, 65.72, 69.44, 74.4, 79.36, 84.32, 89.28, 94.44, 101.18, 107.93, 114.68, 121.42],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '璇玑屏',
      'description': '借由黄金、黑曜岩与强者的余裕，构建出坚固的璇玑屏，并造成岩元素范围伤害。\n璇玑屏\n• 阻挡敌人发射的投射物；\n• 耐久度按比例继承凝光的生命值上限。\n璇玑屏被视为岩元素创造物，可以阻挡部分攻击，不可攀爬。同时只能存在一个。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [230.4, 247.68, 264.96, 288.0, 305.28, 322.56, 345.6, 368.64, 391.68, 414.72, 437.76, 460.8, 489.6, 518.4, 547.2],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '继承生命',
          'value': ['50.1%', '53.1%', '56.1%', '60%', '63%', '66%', '69.9%', '73.8%', '77.7%', '81.6%', '85.5%', '89.4%', '93.3%', '97.2%', '101.1%'],
        },
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '天权崩玉',
      'description': '凝光在身边凝聚诸多宝石，散之一瞬，自动索敌打击附近的敌人，造成大量岩元素伤害。\n施放天权崩玉时，如果附近有璇玑屏存在，璇玑屏将发射额外的宝石飞弹协同攻击。',
      'buff': [],
      'hit': [
        {
          'name': '宝石伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [86.96, 93.48, 100.0, 108.7, 115.22, 121.74, 130.44, 139.14, 147.83, 156.53, 165.22, 173.92, 184.79, 195.66, 206.53],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
      'energy': 40,
    },
  },
  44: {
    SkillType.Passive: [
      {
        'name': '女仆的态度',
        'description': '完美烹饪防御类食物时，有12%概率获得2倍产出。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '全心全意',
        'description': '诺艾尔处于队伍后台，且当前场上自己的角色的生命值低于30%时自动触发：\n为当前场上自己的角色生成一个伤害吸收量等同于诺艾尔防御力400%的护盾，持续20秒。\n• 对所有元素伤害与物理伤害有150%的吸收效果。\n该效果60秒内只能触发一次。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '干净利落',
        'description': '诺艾尔的普通攻击或重击累计命中敌人4次，会减少护心铠1秒的冷却。\n每0.1秒至多计数一次。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·西风剑术·女仆',
      'description': '普通攻击\n进行至多四段的连续挥砍。\n重击\n持续消耗体力，旋转大剑攻击周围的敌人。\n停止旋转时，会进行一次格外有力的挥砍。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [79.12, 85.56, 92.0, 101.2, 107.64, 115.0, 125.12, 135.24, 145.36, 156.4, 167.44, 178.48, 189.52, 200.56, 211.6],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [73.36, 79.33, 85.3, 93.83, 99.8, 106.63, 116.01, 125.39, 134.77, 145.01, 155.25, 165.48, 175.72, 185.95, 196.19],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [86.26, 93.28, 100.3, 110.33, 117.35, 125.38, 136.41, 147.44, 158.47, 170.51, 182.55, 194.58, 206.62, 218.65, 230.69],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [113.43, 122.67, 131.9, 145.09, 154.32, 164.88, 179.38, 193.89, 208.4, 224.23, 240.06, 255.89, 271.71, 287.54, 303.37],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击循环伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [50.74, 54.87, 59.0, 64.9, 69.03, 73.75, 80.24, 86.73, 93.22, 100.3, 107.38, 114.46, 121.54, 128.62, 135.7],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击终结伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [90.47, 97.84, 105.2, 115.72, 123.08, 131.5, 143.07, 154.64, 166.22, 178.84, 191.46, 204.09, 216.71, 229.34, 241.96],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [74.59, 80.66, 86.73, 95.4, 101.47, 108.41, 117.95, 127.49, 137.03, 147.44, 157.85, 168.26, 178.66, 189.07, 199.48],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [149.14, 161.28, 173.42, 190.77, 202.91, 216.78, 235.86, 254.93, 274.01, 294.82, 315.63, 336.44, 357.25, 378.06, 398.87],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [186.29, 201.45, 216.62, 238.28, 253.44, 270.77, 294.6, 318.42, 342.25, 368.25, 394.24, 420.23, 446.23, 472.22, 498.21],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒'],
        },
        {
          'name': '最大持续时间',
          'value': ['5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '护心铠',
      'description':
          '唤出护体的岩铠，对周围的敌人造成岩元素伤害，并形成护盾，伤害吸收量基于诺艾尔的防御力。\n护盾具有如下效果：\n• 诺艾尔的普通攻击与重击命中时，都有几率为队伍中所有角色恢复生命值；\n• 对所有元素伤害与物理伤害有150%的吸收效果。\n触发治疗时的治疗量受益于诺艾尔的防御力。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByDefend: [120.0, 129.0, 138.0, 150.0, 159.0, 168.0, 180.0, 192.0, 204.0, 216.0, 228.0, 240.0, 255.0, 270.0, 285.0],
              },
            },
          ],
        },
      ],
      'other': [
        {
          'name': '吸收量',
          'value': [
            '160%防御力+770',
            '172%防御力+847',
            '184%防御力+930',
            '200%防御力+1020',
            '212%防御力+1116',
            '224%防御力+1219',
            '240%防御力+1328',
            '256%防御力+1443',
            '272%防御力+1565',
            '288%防御力+1694',
            '304%防御力+1828',
            '320%防御力+1970',
            '340%防御力+2117',
            '360%防御力+2271',
            '380%防御力+2431'
          ],
        },
        {
          'name': '治疗量',
          'value': [
            '21.28%防御力+103',
            '22.88%防御力+113',
            '24.47%防御力+124',
            '26.6%防御力+136',
            '28.2%防御力+149',
            '29.79%防御力+163',
            '31.92%防御力+177',
            '34.05%防御力+193',
            '36.18%防御力+209',
            '38.3%防御力+226',
            '40.43%防御力+244',
            '42.56%防御力+263',
            '45.22%防御力+282',
            '47.88%防御力+303',
            '50.54%防御力+324'
          ],
        },
        {
          'name': '治疗触发几率',
          'value': ['50%', '51%', '52%', '53%', '54%', '55%', '56%', '57%', '58%', '59%', '59%', '60%', '60%', '60%', '60%'],
        },
        {
          'name': '持续时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
        {
          'name': '冷却时间',
          'value': ['24秒', '24秒', '24秒', '24秒', '24秒', '24秒', '24秒', '24秒', '24秒', '24秒', '24秒', '24秒', '24秒', '24秒', '24秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '大扫除',
      'description': '将磐石的力量凝聚在武器上，冲击周围的敌人并进行一次大范围扫击，造成岩元素伤害。\n此后，获得如下效果：\n• 提高诺艾尔的攻击范围；\n• 将攻击伤害转为岩元素伤害，该元素转化无法被附魔覆盖；\n• 基于诺艾尔的防御力，提高攻击力。',
      'buff': [
        {
          'name': '攻击力提高',
          'stat': Stats.AttackBonusByDefend,
          'value': [40.0, 43.0, 46.0, 50.0, 53.0, 56.0, 60.0, 64.0, 68.0, 72.0, 76.0, 80.0, 85.0, 90.0, 95.0],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [
        {
          'name': '爆发伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [67.2, 72.24, 77.28, 84.0, 89.04, 94.08, 100.8, 107.52, 114.24, 120.96, 127.68, 134.4, 142.8, 151.2, 159.6],
              'extra': {},
            },
          ],
        },
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [92.8, 99.76, 106.72, 116.0, 122.96, 129.92, 139.2, 148.48, 157.76, 167.04, 176.32, 185.6, 197.2, 208.8, 220.4],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  45: {
    SkillType.Passive: [
      {
        'name': '亮晶晶发现术',
        'description': '在小地图上显示周围的稻妻区域特产的位置。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '不畏风雨',
        'description': '施放兽牙逐突形胜战法后的12秒内，附近的队伍中所有角色的防御力提升25%。',
        'buff': [
          {
            'stat': Stats.DefendBonus,
            'value': 25.0,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '报恩之守',
        'description': '基于防御力，五郎的以下攻击造成的伤害提高：\n• 犬坂吠吠方圆阵的技能伤害提高值：防御力的156%；\n• 兽牙逐突形胜战法的技能伤害与岩晶崩破伤害提高值：防御力的15.6%。',
        'buff': [
          {
            'stat': Stats.ExtraDamageByDefend,
            'value': 156.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.SkillE,
            ],
          },
          {
            'stat': Stats.ExtraDamageByDefend,
            'value': 15.6,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.SkillQ,
              DamageType.SkillQSpecial,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·呲牙裂扇箭',
      'description': '普通攻击\n进行至多四段的连续弓箭射击。\n重击\n进行伤害更高、更为精准的瞄准射击。\n瞄准时，岩晶会在箭矢上持续积聚。聚满了晶岩的箭矢会造成岩元素伤害。\n下落攻击\n从空中射出箭雨，并迅速下坠冲击地面，在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [37.75, 40.83, 43.9, 48.29, 51.36, 54.88, 59.7, 64.53, 69.36, 74.63, 79.9, 85.17, 90.43, 95.7, 100.97],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [37.15, 40.18, 43.2, 47.52, 50.54, 54.0, 58.75, 63.5, 68.26, 73.44, 78.62, 83.81, 88.99, 94.18, 99.36],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [49.45, 53.47, 57.5, 63.25, 67.28, 71.88, 78.2, 84.53, 90.85, 97.75, 104.65, 111.55, 118.45, 125.35, 132.25],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [59.0, 63.8, 68.6, 75.46, 80.26, 85.75, 93.3, 100.84, 108.39, 116.62, 124.85, 133.08, 141.32, 149.55, 157.78],
              'extra': {},
            },
          ],
        },
        {
          'name': '瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 92.82, 98.94, 105.06, 111.18, 117.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '满蓄力瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [124.0, 133.3, 142.6, 155.0, 164.3, 173.6, 186.0, 198.4, 210.8, 223.2, 235.6, 248.0, 263.5, 279.0, 294.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '犬坂吠吠方圆阵',
      'description':
          '造成岩元素范围伤害，并立起大将旗指物。\n大将旗指物\n依据施放时队伍中元素类型为岩元素的角色数量，为其领域内的当前场上角色赋予如下效果：\n• 一名角色时：「坚牢」：防御力提升；\n• 二名角色时：「难破」：除上述效果外，提升抗打断能力；\n• 三名角色时：「摧碎」：除上述效果外，获得岩元素伤害加成。\n同时只能存在一个由五郎自己创造的大将旗指物；角色只能获得一个大将旗指物提供的效果。角色离开领域后，领域的效果将持续2秒。\n长按\n可以调整技能生效位置。',
      'buff': [
        {
          'name': '防御力提升',
          'stat': Stats.Defend,
          'value': [206.0, 222.0, 237.0, 258.0, 273.0, 289.0, 309.0, 330.0, 350.0, 371.0, 392.0, 412.0, 438.0, 464.0, 490.0],
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
        {
          'name': '岩元素伤害加成',
          'stat': Stats.EleDmgBonus,
          'value': [15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0],
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [107.2, 115.24, 123.28, 134.0, 142.04, 150.08, 160.8, 171.52, 182.24, 192.96, 203.68, 214.4, 227.8, 241.2, 254.6],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
        {
          'name': '冷却时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '兽牙逐突形胜战法',
      'description':
          '展现大将之威，造成岩元素范围伤害，并展开大将威仪之领域，鼓舞身边的战友。\n大将威仪\n具有如下特性：\n• 领域拥有等同于元素战技「犬坂吠吠方圆阵」创造的大将旗指物的效果，依据施放时队伍中元素类型为岩元素的角色数量，为其领域内的当前场上角色赋予效果，并且会随着当前场上角色移动；\n• 每1.5秒，会产生一次岩晶崩破，对领域内一名敌人造成岩元素范围伤害；\n• 每1.5秒，将领域内1枚结晶反应产生的晶片吸引至当前角色的位置。\n施放时，若场上存在五郎自己的大将旗指物，会将其破坏。此外，在大将威仪的持续期间，五郎自己施放元素战技「犬坂吠吠方圆阵」时，将不会产生大将旗指物。\n五郎倒下时将解除五郎自己的大将威仪效果。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByDefend: [
                  98.22,
                  105.58,
                  112.95,
                  122.77,
                  130.14,
                  137.50,
                  147.32,
                  157.15,
                  166.97,
                  176.79,
                  186.61,
                  196.43,
                  208.71,
                  220.99,
                  233.26
                ],
              },
            },
          ],
        },
        {
          'name': '岩晶崩破伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByDefend: [61.30, 65.90, 70.50, 76.63, 81.22, 85.82, 91.95, 98.08, 104.21, 110.34, 116.47, 122.60, 130.26, 137.93, 145.59],
              },
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  46: {
    SkillType.Passive: [
      {
        'name': '干裂枝碎',
        'description': '队伍中自己的角色通过攻击树木获取木材时，有25%的几率获得额外的木材。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '荒泷第一',
        'description': '荒泷一斗施展连续的「荒泷逆袈裟」时，获得以下效果：\n• 每次斩击都将使接下来的斩击攻击速度提升10%，通过这种方法至多提升30%；\n• 提升抗打断能力。\n这些效果将在连续施展结束时消失。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '赤鬼之血',
        'description': '「荒泷逆袈裟」造成的伤害提高，伤害提高值基于荒泷一斗防御力的35%。',
        'buff': [
          {
            'stat': Stats.ExtraDamageByDefend,
            'value': 35.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.Charged,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击· 喧哗屋传说',
      'description':
          '普通攻击\n进行至多四段的连续挥砍。\n在第二段与第四段攻击命中敌人时，会分别产生1层与2层「乱神之怪力」效果。\n最多拥有5层乱神之怪力，每次触发都会刷新已有的乱神之怪力持续时间。\n此外，施放元素战技「魔杀绝技 • 赤牛发破！」或进行冲刺后的一小段时间内，普通攻击连击段数不会重置。\n重击\n长按进行重击时，若拥有乱神之怪力，将进行不消耗体力的「荒泷逆袈裟」斩击。荒泷逆袈裟的每次攻击都将消耗一层乱神之怪力；消耗最后一层时，将施展格外强力的终结一击。\n没有乱神之怪力时，将消耗体力，进行一次猛烈的左一文字斩。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [79.23, 85.68, 92.13, 101.34, 107.79, 115.16, 125.3, 135.43, 145.57, 156.62, 169.29, 184.19, 199.08, 213.98, 230.23],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [76.37, 82.58, 88.8, 97.68, 103.9, 111.0, 120.77, 130.54, 140.3, 150.96, 163.17, 177.53, 191.89, 206.25, 221.91],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [91.64, 99.1, 106.56, 117.22, 124.68, 133.2, 144.92, 156.64, 168.36, 181.15, 195.8, 213.03, 230.27, 247.5, 266.29],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [117.22, 126.77, 136.31, 149.94, 159.48, 170.39, 185.38, 200.37, 215.37, 231.72, 250.47, 272.51, 294.55, 316.59, 340.63],
              'extra': {},
            },
          ],
        },
        {
          'name': '荒泷逆袈裟连斩伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [91.16, 98.58, 106.0, 116.6, 124.02, 132.5, 144.16, 155.82, 167.48, 180.2, 194.78, 211.92, 229.06, 246.2, 264.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '荒泷逆袈裟终结伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [190.92, 206.46, 222.0, 244.2, 259.74, 277.5, 301.92, 326.34, 350.76, 377.4, 407.93, 443.82, 479.72, 515.62, 554.78],
              'extra': {},
            },
          ],
        },
        {
          'name': '左一文字斩伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [90.47, 97.84, 105.2, 115.72, 123.08, 131.5, 143.07, 154.64, 166.22, 178.84, 193.31, 210.32, 227.33, 244.34, 262.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [81.83, 88.49, 95.16, 104.67, 111.33, 118.94, 129.41, 139.88, 150.35, 161.76, 173.18, 184.6, 196.02, 207.44, 218.86],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [163.63, 176.95, 190.27, 209.3, 222.62, 237.84, 258.77, 279.7, 300.63, 323.46, 346.29, 369.12, 391.96, 414.79, 437.62],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [204.39, 221.02, 237.66, 261.42, 278.06, 297.07, 323.21, 349.36, 375.5, 404.02, 432.54, 461.06, 489.57, 518.09, 546.61],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '乱神之怪力持续时间',
          'value': ['60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒'],
        },
        {
          'name': '左一文字斩体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '魔杀绝技·赤牛发破！',
      'description':
          '将荒泷派编外成员小赤牛「阿丑」高速投掷出去，对命中的敌人造成岩元素伤害！「阿丑」命中敌人时，会为荒泷一斗提供1层「乱神之怪力」效果。\n「阿丑」会留在场上提供支援：\n• 持续嘲讽周围的敌人，吸引火力；\n• 耐久度按比例继承荒泷一斗的生命值上限；\n• 受到伤害时，会为荒泷一斗自己提供1层「乱神之怪力」效果。每2秒至多通过这种方式提供1层；\n• 耐久度耗尽或持续时间结束时会逃走，并在离开时为荒泷一斗自己提供1层「乱神之怪力」效果。\n长按\n调整投掷方向。n「阿丑」被视为岩元素创造物；同时只能存在一个由荒泷一斗自己召唤的「阿丑」。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [307.2, 330.24, 353.28, 384.0, 407.04, 430.08, 460.8, 491.52, 522.24, 552.96, 583.68, 614.4, 652.8, 691.2, 729.6],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '继承生命',
          'value': ['100%', '100%', '100%', '100%', '100%', '100%', '100%', '100%', '100%', '100%', '100%', '100%', '100%', '100%', '100%'],
        },
        {
          'name': '持续时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '冷却时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '最恶鬼王·一斗轰临！！',
      'description':
          '是时候展现荒泷派的一斗之威名了！在接下来的一段时间内化身「怒目鬼王」，使用鬼王金碎棒战斗。\n具有如下特性：\n• 普通攻击、重击与下落攻击造成的伤害转为无法被附魔覆盖的岩元素伤害；\n• 提高荒泷一斗普通攻击的攻击速度，并基于其防御力，提高攻击力；\n• 第一与第三段攻击在命中敌人时，将为荒泷一斗自己提供1层「乱神之怪力」效果；\n• 荒泷一斗的所有元素抗性与物理抗性降低20%。n「怒目鬼王」状态将在荒泷一斗退场时解除。',
      'buff': [
        {
          'name': '攻击力提高',
          'stat': Stats.AttackBonusByDefend,
          'value': [57.6, 61.92, 66.24, 72.0, 76.32, 80.64, 86.4, 92.16, 97.92, 103.68, 109.44, 115.2, 122.4, 129.6, 136.8],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
      'other': [
        {
          'name': '攻击速度提高',
          'value': ['10%', '10%', '10%', '10%', '10%', '10%', '10%', '10%', '10%', '10%', '10%', '10%', '10%', '10%', '10%'],
        },
        {
          'name': '持续时间',
          'value': ['11秒', '11秒', '11秒', '11秒', '11秒', '11秒', '11秒', '11秒', '11秒', '11秒', '11秒', '11秒', '11秒', '11秒', '11秒'],
        },
        {
          'name': '冷却时间',
          'value': ['18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒'],
        },
      ],
      'energy': 70,
    },
  },
  47: {
    SkillType.Passive: [
      {
        'name': '来复知时',
        'description': '在璃月执行时长为20小时的探索派遣任务时，获得的奖励增加25%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '大洞弥罗尊法',
        'description': '处于神女遣灵真诀的领域中的当前场上角色，冰元素伤害加成提高15%。',
        'buff': [
          {
            'stat': Stats.EleDmgBonus,
            'value': 15.0,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '缚灵通真法印',
        'description': '申鹤施放仰灵威召将役咒后，将使附近的队伍中所有角色获得如下效果：\n• 点按：元素战技和元素爆发造成的伤害提高15%，持续10秒；\n• 长按：普通攻击、重击和下落攻击造成的伤害提高15%，持续15秒。',
        'buff': [
          {
            'stat': Stats.DmgBonus,
            'value': 15.0,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.SkillE,
              DamageType.SkillESpecial,
              DamageType.SkillQ,
              DamageType.SkillQSpecial,
            ],
          },
          {
            'stat': Stats.DmgBonus,
            'value': 15.0,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.Normal,
              DamageType.Charged,
              DamageType.Plunging,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·踏辰摄斗',
      'description': '普通攻击\n进行至多五段的连续枪击。\n重击\n消耗一定体力，向前方突进，对路径上的敌人造成伤害。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.26, 46.78, 50.3, 55.33, 58.85, 62.88, 68.41, 73.94, 79.47, 85.51, 91.55, 97.58, 103.62, 109.65, 115.69],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [40.25, 43.52, 46.8, 51.48, 54.76, 58.5, 63.65, 68.8, 73.94, 79.56, 85.18, 90.79, 96.41, 102.02, 107.64],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [53.32, 57.66, 62.0, 68.2, 72.54, 77.5, 84.32, 91.14, 97.96, 105.4, 112.84, 120.28, 127.72, 135.16, 142.6],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [26.32, 28.46, 30.60, 33.66, 35.80, 38.25, 41.62, 44.98, 48.35, 52.02, 55.69, 59.36, 63.04, 66.71, 70.38],
              'extra': {},
            },
            {
              'value': [26.32, 28.46, 30.60, 33.66, 35.80, 38.25, 41.62, 44.98, 48.35, 52.02, 55.69, 59.36, 63.04, 66.71, 70.38],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [65.62, 70.96, 76.3, 83.93, 89.27, 95.38, 103.77, 112.16, 120.55, 129.71, 138.87, 148.02, 157.18, 166.33, 175.49],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [110.67, 119.68, 128.69, 141.56, 150.57, 160.86, 175.02, 189.17, 203.33, 218.77, 234.22, 249.66, 265.1, 280.54, 295.99],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '仰灵威召将役咒',
      'description':
          '凝叠银之霜露，摒退一切邪魔。\n为队伍中附近的所有角色施加「冰翎」效果，并依据点按、长按，以不同的方式造成冰元素伤害。\n点按\n与「箓灵」一同向前突进，对路径上的敌人造成冰元素伤害。\n长按\n律令「箓灵」，造成冰元素范围伤害。\n冰翎\n普通攻击、重击、下落攻击、元素战技和元素爆发伤害对敌人造成冰元素伤害时，基于申鹤自己当前的攻击力，提高造成的伤害。\n「冰翎」效果会在持续时间结束或生效一定次数后消失。长按施加的「冰翎」相比点按，拥有更长的持续时间与更多的生效次数。\n一次冰元素伤害同时命中多名敌人时，会依据命中敌人的数量消耗生效次数；队伍中具有「冰翎」的角色，其生效次数单独计算。',
      'buff': [
        {
          'name': '伤害值提升',
          'stat': Stats.ExtraDamageByAttack,
          'value': [45.66, 49.08, 52.5, 57.07, 60.49, 63.92, 68.48, 73.05, 77.62, 82.18, 86.75, 91.31, 97.02, 102.73, 108.43],
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [
        {
          'name': '点按技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [139.2, 149.64, 160.08, 174.0, 184.44, 194.88, 208.8, 222.72, 236.64, 250.56, 264.48, 278.4, 295.8, 313.2, 330.6],
              'extra': {},
            },
          ],
        },
        {
          'name': '长按技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [188.8, 202.96, 217.12, 236.0, 250.16, 264.32, 283.2, 302.08, 320.96, 339.84, 358.72, 377.6, 401.2, 424.8, 448.4],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '点按/长按持续时间',
          'value': [
            '10秒/15秒',
            '10秒/15秒',
            '10秒/15秒',
            '10秒/15秒',
            '10秒/15秒',
            '10秒/15秒',
            '10秒/15秒',
            '10秒/15秒',
            '10秒/15秒',
            '10秒/15秒',
            '10秒/15秒',
            '10秒/15秒',
            '10秒/15秒',
            '10秒/15秒',
            '10秒/15秒'
          ],
        },
        {
          'name': '点按/长按生效次数',
          'value': ['5/7次', '5/7次', '5/7次', '5/7次', '5/7次', '5/7次', '5/7次', '5/7次', '5/7次', '5/7次', '5/7次', '5/7次', '5/7次', '5/7次', '5/7次'],
        },
        {
          'name': '点按冷却时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
        {
          'name': '长按冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '神女遣灵真诀',
      'description': '解放「箓灵」的力量，驱使其驰骋世间，造成冰元素范围伤害。\n「箓灵」将结成领域，使其中敌人的冰元素抗性与物理抗性降低，并持续对其中的敌人造成冰元素伤害。',
      'buff': [
        {
          'name': '抗性降低',
          'stat': Stats.ResistanceDecreaseElement,
          'value': [6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0, 13.0, 14.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0],
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
        {
          'name': '抗性降低',
          'stat': Stats.ResistanceDecreasePhysical,
          'value': [6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0, 13.0, 14.0, 15.0, 15.0, 15.0, 15.0, 15.0, 15.0],
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [100.8, 108.36, 115.92, 126.0, 133.56, 141.12, 151.2, 161.28, 171.36, 181.44, 191.52, 201.6, 214.2, 226.8, 239.4],
              'extra': {},
            },
          ],
        },
        {
          'name': '持续伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [33.12, 35.6, 38.09, 41.4, 43.88, 46.37, 49.68, 52.99, 56.3, 59.62, 62.93, 66.24, 70.38, 74.52, 78.66],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  48: {
    SkillType.Passive: [
      {
        'name': '清食养性',
        'description': '完美烹饪冒险类食物时，有12%概率获得2倍产出。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '务守本真',
        'description': '在被攻击瞬间施放的旋云开相，会以长按二段蓄力的形式施放。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '莫从恒蹊',
        'description': '「飞云旗阵」提供的普通攻击伤害提高，当队伍中存在1/2/3/4种元素类型的角色时，数值上进一步追加云堇防御力的2.5%/5%/7.5%/11.5%。',
        'buff': [
          {
            'stat': Stats.ExtraDamageByDefend,
            'value': 2.5,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.Normal,
            ],
          },
          {
            'stat': Stats.ExtraDamageByDefend,
            'value': 5.0,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.Normal,
            ],
          },
          {
            'stat': Stats.ExtraDamageByDefend,
            'value': 7.5,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.Normal,
            ],
          },
          {
            'stat': Stats.ExtraDamageByDefend,
            'value': 11.5,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.Normal,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·拂云出手',
      'description': '普通攻击\n进行至多五段的连续枪击。\n重击\n消耗一定体力，向前方突进，对路径上的敌人造成伤害。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [40.51, 43.8, 47.1, 51.81, 55.11, 58.88, 64.06, 69.24, 74.42, 80.07, 85.72, 91.37, 97.03, 102.68, 108.33],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [40.25, 43.52, 46.8, 51.48, 54.76, 58.5, 63.65, 68.8, 73.94, 79.56, 85.18, 90.79, 96.41, 102.02, 107.64],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [22.96, 24.83, 26.70, 29.37, 31.24, 33.38, 36.31, 39.25, 42.19, 45.39, 48.59, 51.80, 55.0, 58.21, 61.41],
              'extra': {},
            },
            {
              'value': [27.52, 29.76, 32.0, 35.20, 37.44, 40.0, 43.52, 47.04, 50.56, 54.40, 58.24, 62.08, 65.92, 69.76, 73.60],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [23.99, 25.95, 27.90, 30.69, 32.64, 34.88, 37.94, 41.01, 44.08, 47.43, 50.78, 54.13, 57.47, 60.82, 64.17],
              'extra': {},
            },
            {
              'value': [28.81, 31.16, 33.50, 36.85, 39.20, 41.88, 45.56, 49.25, 52.93, 56.95, 60.97, 64.99, 69.01, 73.03, 77.05],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [67.34, 72.82, 78.3, 86.13, 91.61, 97.88, 106.49, 115.1, 123.71, 133.11, 142.51, 151.9, 161.3, 170.69, 180.09],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [121.69, 131.6, 141.5, 155.65, 165.56, 176.88, 192.44, 208.01, 223.57, 240.55, 260.01, 282.89, 305.77, 328.65, 353.61],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '旋云开相',
      'description':
          '云先生的武戏架势，是真能御敌的。\n点按\n以拨云之势旋舞长枪，造成岩元素伤害。\n长按\n摆出旋云开相之架势蓄力，形成护盾，伤害吸收量受益于云堇的生命值上限，对所有元素伤害与物理伤害有150%的吸收效果。护盾持续至元素战技施放完毕。\n松开技能、持续时间结束时，或护盾被破坏时，会挥舞长枪释放积攒的力量进行攻击，造成岩元素伤害。\n依据蓄力的时间，释放时的状态将分为一段蓄力与二段蓄力。',
      'buff': [],
      'hit': [
        {
          'name': '点按技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByDefend: [
                  149.12,
                  160.3,
                  171.49,
                  186.4,
                  197.58,
                  208.77,
                  223.68,
                  238.59,
                  253.5,
                  268.42,
                  283.33,
                  298.24,
                  316.88,
                  335.52,
                  354.16
                ],
              },
            },
          ],
        },
        {
          'name': '一段蓄力伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByDefend: [
                  260.96,
                  280.53,
                  300.1,
                  326.2,
                  345.77,
                  365.34,
                  391.44,
                  417.54,
                  443.63,
                  469.73,
                  495.82,
                  521.92,
                  554.54,
                  587.16,
                  619.78
                ],
              },
            },
          ],
        },
        {
          'name': '二段蓄力伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByDefend: [372.8, 400.76, 428.72, 466.0, 493.96, 521.92, 559.2, 596.48, 633.76, 671.04, 708.32, 745.6, 792.2, 838.8, 885.4],
              },
            },
          ],
        },
      ],
      'other': [
        {
          'name': '护盾吸收量',
          'value': [
            '12%最大生命值+1155',
            '12.9%最大生命值+1271',
            '13.8%最大生命值+1396',
            '15%最大生命值+1531',
            '15.9%最大生命值+1675',
            '16.8%最大生命值+1830',
            '18%最大生命值+1993',
            '19.2%最大生命值+2167',
            '20.4%最大生命值+2350',
            '21.6%最大生命值+2542',
            '22.8%最大生命值+2744',
            '24%最大生命值+2956',
            '25.5%最大生命值+3178',
            '27%最大生命值+3409',
            '28.5%最大生命值+3650'
          ],
        },
        {
          'name': '冷却时间',
          'value': ['9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '破嶂见旌仪',
      'description':
          '造成岩元素范围伤害，并为附近的队伍中所有角色赋予「飞云旗阵」。\n飞云旗阵\n对敌人造成普通攻击伤害时，基于云堇自己当前的防御力，提高造成的伤害。\n「飞云旗阵」效果会在持续时间结束或生效一定次数后消失。\n一次普通攻击同时命中多名敌人时，会依据命中敌人的数量消耗生效次数；队伍中具有「飞云旗阵」的角色，其生效次数单独计算。',
      'buff': [
        {
          'name': '伤害值提升',
          'stat': Stats.ExtraDamageByDefendUsed,
          'value': [32.16, 34.57, 36.98, 40.2, 42.61, 45.02, 48.24, 51.46, 54.67, 57.89, 61.1, 64.32, 68.34, 72.36, 76.38],
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.Normal,
          ],
        },
      ],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [244.0, 262.3, 280.6, 305.0, 323.3, 341.6, 366.0, 390.4, 414.8, 439.2, 463.6, 488.0, 518.5, 549.0, 579.5],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
        {
          'name': '生效次数',
          'value': ['30次', '30次', '30次', '30次', '30次', '30次', '30次', '30次', '30次', '30次', '30次', '30次', '30次', '30次', '30次'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  49: {
    SkillType.Passive: [
      {
        'name': '野狐说禅',
        'description': '合成角色天赋素材时，有25%概率额外产生一份地区相同的其他随机天赋素材，等阶与合成所消耗的素材相同。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '神篱之御荫',
        'description': '施放大密法 • 天狐显真时，每摧毁一株杀生樱，就会重置一次野干役咒 • 杀生樱的冷却时间。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '启蜇之祝词',
        'description': '八重神子的每点元素精通，能使杀生樱造成的伤害提升0.15%。',
        'buff': [
          {
            'stat': Stats.DmgBonusByMastery,
            'value': 0.15,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.SkillE,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·狐灵食罪式',
      'description': '普通攻击\n驱役狐灵，进行至多三段的攻击，造成雷元素伤害。\n重击\n消耗一定体力，短暂咏唱后，造成雷元素范围伤害。\n下落攻击\n凝聚雷霆的力量，从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成雷元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [39.66, 42.63, 45.61, 49.57, 52.55, 55.52, 59.49, 63.45, 67.42, 71.39, 75.35, 79.32, 84.27, 89.23, 94.19],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [38.52, 41.41, 44.3, 48.15, 51.04, 53.93, 57.78, 61.63, 65.48, 69.33, 73.19, 77.04, 81.85, 86.67, 91.48],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [56.89, 61.16, 65.42, 71.11, 75.38, 79.64, 85.33, 91.02, 96.71, 102.4, 108.09, 113.78, 120.89, 128.0, 135.11],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [142.89, 153.61, 164.33, 178.62, 189.34, 200.05, 214.34, 228.63, 242.92, 257.21, 271.5, 285.79, 303.65, 321.51, 339.38],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '野干役咒·杀生樱',
      'description':
          '对八重而言，驱役精怪就能解决的麻烦，自然是无须亲力亲为的。\n迅速移动，并留下一株「杀生樱」。\n杀生樱\n具有如下特性：\n• 间歇性对周围的一名敌人降下落雷，造成雷元素伤害；\n• 附近存在其他的杀生樱时，将提升其位阶，提高上述攻击造成的伤害。\n拥有3次可使用次数。\n最多同时存在3株杀生樱，杀生樱创造时的初始位阶为壹阶，阶级初始至多提升至叁阶。若创造的位置与已有的杀生樱距离过近，则会摧毁已有的杀生樱。',
      'buff': [],
      'hit': [
        {
          'name': '杀生樱伤害·壹阶',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [60.67, 65.22, 69.77, 75.84, 80.39, 84.94, 91.01, 97.08, 103.14, 109.21, 115.28, 121.34, 128.93, 136.51, 144.1],
              'extra': {},
            },
          ],
        },
        {
          'name': '杀生樱伤害·贰阶',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [75.84, 81.53, 87.22, 94.8, 100.49, 106.18, 113.76, 121.34, 128.93, 136.51, 144.1, 151.68, 161.16, 170.64, 180.12],
              'extra': {},
            },
          ],
        },
        {
          'name': '杀生樱伤害·叁阶',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [94.8, 101.91, 109.02, 118.5, 125.61, 132.72, 142.2, 151.68, 161.16, 170.64, 180.12, 189.6, 201.45, 213.3, 225.15],
              'extra': {},
            },
          ],
        },
        {
          'name': '杀生樱伤害·肆阶',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [118.5, 127.39, 136.28, 148.13, 157.01, 165.9, 177.75, 189.6, 201.45, 213.3, 225.15, 237.0, 251.81, 266.63, 281.44],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['14秒', '14秒', '14秒', '14秒', '14秒', '14秒', '14秒', '14秒', '14秒', '14秒', '14秒', '14秒', '14秒', '14秒', '14秒'],
        },
        {
          'name': '冷却时间',
          'value': ['4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒', '4秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '大密法·天狐显真',
      'description': '稻妻民话中有「狐凭」一说。其中比较特殊的「天狐之凭」会以雷霆的形式降临在鸣神大社的敌人身上。降下雷电，造成雷元素范围伤害。\n施放时，八重神子会解放附近的杀生樱，摧毁它们的形姿，化作天狐霆雷降下，造成雷元素范围伤害。每通过这种方式摧毁一株杀生樱，就能降下一道天狐霆雷。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [260.0, 279.5, 299.0, 325.0, 344.5, 364.0, 390.0, 416.0, 442.0, 468.0, 494.0, 520.0, 552.5, 585.0, 617.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '天狐霆雷伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [333.82, 358.85, 383.89, 417.27, 442.31, 467.34, 500.72, 534.11, 567.49, 600.87, 634.25, 667.63, 709.36, 751.09, 792.81],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['22秒', '22秒', '22秒', '22秒', '22秒', '22秒', '22秒', '22秒', '22秒', '22秒', '22秒', '22秒', '22秒', '22秒', '22秒'],
        },
      ],
      'energy': 90,
    },
  },
  50: {
    SkillType.Passive: [
      {
        'name': '神里流·日常茶饭',
        'description': '完美烹饪食物时，有18%概率额外获得一个「奇怪的」品质的同种料理。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '神里流·清泷绕峰',
        'description': '神里流 • 镜花具有如下效果：\n• 施放后，神里绫人会获得2层浪闪效果；\n• 水影破裂后，神里绫人将获得等同于叠加上限层数的浪闪效果。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '神里流·破月渐盈',
        'description': '神里绫人处于队伍后台时，若元素能量低于40点，每1秒为自己恢复2点元素能量。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·神里流·转',
      'description': '普通攻击\n进行至多五段的连续剑击。\n重击\n消耗一定体力，向前冲刺并施展居合。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [44.96, 48.62, 52.28, 57.51, 61.17, 65.35, 71.1, 76.85, 82.6, 88.88, 95.15, 101.43, 107.7, 113.97, 120.25],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [47.16, 51.0, 54.83, 60.32, 64.16, 68.54, 74.57, 80.61, 86.64, 93.22, 99.8, 106.38, 112.96, 119.54, 126.12],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [58.61, 63.38, 68.15, 74.97, 79.74, 85.19, 92.69, 100.19, 107.68, 115.86, 124.04, 132.22, 140.4, 148.58, 156.75],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [29.45, 31.85, 34.24, 37.67, 40.06, 42.8, 46.57, 50.34, 54.1, 58.21, 62.32, 66.43, 70.54, 74.65, 78.76],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [75.6, 81.76, 87.91, 96.7, 102.86, 109.89, 119.56, 129.23, 138.9, 149.45, 160.0, 170.55, 181.1, 191.65, 202.2],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [129.53, 140.07, 150.62, 165.68, 176.22, 188.27, 204.84, 221.41, 237.97, 256.05, 274.12, 292.19, 310.27, 328.34, 346.42],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '神里流·镜花',
      'description':
          '神里绫人垫步移动并进入「泷廻鉴花」状态。\n移动后，神里绫人原本的位置上将产生「水影」。水影完全形成后，将在附近存在敌人或持续时间结束时破裂，造成水元素范围伤害。\n泷廻鉴花\n在此状态下，神里绫人将使用瞬水剑进行迅速的攻击，将普通攻击造成的伤害转为无法被附魔覆盖的水元素范围伤害。\n此外，具有如下效果：\n• 瞬水剑攻击命中敌人后，将为神里绫人赋予「浪闪」效果，基于神里绫人自己当前的生命值上限，提升瞬水剑造成的伤害。浪闪初始至多叠加4层，每0.1秒至多通过瞬水剑攻击获得一层，将在泷廻鉴花状态结束时消失。\n• 提高神里绫人的抗打断能力；\n• 无法施放重击与下落攻击。\n泷廻鉴花状态将在神里绫人退场时解除；处于泷廻鉴花状态下时再次施放神里流 • 镜花，将移除已有的泷廻鉴花状态。',
      'buff': [
        {
          'name': '浪闪伤害值提高',
          'stat': Stats.ExtraDamageByHp,
          'value': [0.56, 0.61, 0.65, 0.72, 0.76, 0.82, 0.89, 0.96, 1.03, 1.11, 1.19, 1.27, 1.34, 1.42, 1.5],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
        {
          'name': '浪闪伤害值提高',
          'stat': Stats.ExtraDamageByHp,
          'value': [0.56, 0.61, 0.65, 0.72, 0.76, 0.82, 0.89, 0.96, 1.03, 1.11, 1.19, 1.27, 1.34, 1.42, 1.5],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
        {
          'name': '浪闪伤害值提高',
          'stat': Stats.ExtraDamageByHp,
          'value': [0.56, 0.61, 0.65, 0.72, 0.76, 0.82, 0.89, 0.96, 1.03, 1.11, 1.19, 1.27, 1.34, 1.42, 1.5],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
        {
          'name': '浪闪伤害值提高',
          'stat': Stats.ExtraDamageByHp,
          'value': [0.56, 0.61, 0.65, 0.72, 0.76, 0.82, 0.89, 0.96, 1.03, 1.11, 1.19, 1.27, 1.34, 1.42, 1.5],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
        {
          'name': '浪闪伤害值提高',
          'stat': Stats.ExtraDamageByHp,
          'value': [0.56, 0.61, 0.65, 0.72, 0.76, 0.82, 0.89, 0.96, 1.03, 1.11, 1.19, 1.27, 1.34, 1.42, 1.5],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
      ],
      'hit': [
        {
          'name': '一段瞬水剑伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [52.89, 57.2, 61.5, 67.65, 71.96, 76.88, 83.64, 90.41, 97.17, 104.55, 111.93, 119.31, 126.69, 134.07, 141.45],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段瞬水剑伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [58.91, 63.71, 68.5, 75.35, 80.15, 85.63, 93.16, 100.7, 108.23, 116.45, 124.67, 132.89, 141.11, 149.33, 157.55],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段瞬水剑伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [64.93, 70.22, 75.5, 83.05, 88.34, 94.38, 102.68, 110.99, 119.29, 128.35, 137.41, 146.47, 155.53, 164.59, 173.65],
              'extra': {},
            },
          ],
        },
        {
          'name': '水影伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [101.48, 109.74, 118.0, 129.8, 138.06, 147.5, 160.48, 173.46, 186.44, 200.6, 214.76, 228.92, 243.08, 257.24, 271.4],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '泷廻鉴花持续时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '水影持续时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '神里流·水囿',
      'description': '展开清净之园囿，熄灭其中一切嚣闹。\n存在期间，其中会持续降下水花剑，攻击范围内的敌人，造成水元素伤害，并提高其中的角色的普通攻击伤害。',
      'buff': [
        {
          'name': '普通攻击伤害提升',
          'stat': Stats.DmgBonus,
          'value': [11.0, 12.0, 13.0, 14.0, 15.0, 16.0, 17.0, 18.0, 19.0, 20.0, 20.0, 20.0, 20.0, 20.0, 20.0],
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.Normal,
          ],
        },
      ],
      'hit': [
        {
          'name': '水花剑伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [66.46, 71.44, 76.42, 83.07, 88.05, 93.04, 99.68, 106.33, 112.98, 119.62, 126.27, 132.91, 141.22, 149.53, 157.83],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
  51: {
    SkillType.Passive: [
      {
        'name': '长考一着',
        'description': '在璃月执行时长为20小时的探索派遣任务时，获得的奖励增加25%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '猜先有方',
        'description': '队伍存在1/2/3/4种元素类型的角色时，夜兰的生命值上限提升6%/12%/18%/30%。',
        'buff': [
          {
            'stat': Stats.HpBonus,
            'value': 6.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
          {
            'stat': Stats.HpBonus,
            'value': 12.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
          {
            'stat': Stats.HpBonus,
            'value': 18.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
          {
            'stat': Stats.HpBonus,
            'value': 30.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '妙转随心',
        'description': '「玄掷玲珑」存在期间，能使队伍中自己的当前场上角色造成的伤害提高1%，并且每1秒进一步提高3.5%，至多使角色造成的伤害提高50%。\n效果存在期间重新施放渊图玲珑骰，将移除原有的上述效果。',
        'buff': [
          {
            'stat': Stats.DmgBonus,
            'value': 50.0,
            'buffType': BuffType.BuffForTeam,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·潜形隐曜弓',
      'description':
          '普通攻击\n进行至多四段的连续弓箭射击。\n重击\n进行伤害更高、更为精准的瞄准射击。\n瞄准时，流水会在箭矢上持续积聚。聚满了激流的箭矢会造成水元素伤害。\n破局\n脱离战斗状态5秒后，夜兰将获得「破局」状态，使下一次满蓄力瞄准射击所需的蓄力时间减少80%，并将在满蓄力时转为发射「破局矢」。破局矢将基于夜兰的生命值上限造成水元素范围伤害。\n下落攻击\n从空中射出箭雨，并迅速下坠冲击地面，在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [40.68, 43.99, 47.3, 52.03, 55.34, 59.13, 64.33, 69.53, 74.73, 80.41, 86.09, 91.76, 97.44, 103.11, 108.79],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [39.04, 42.22, 45.4, 49.94, 53.12, 56.75, 61.74, 66.74, 71.73, 77.18, 82.63, 88.08, 93.52, 98.97, 104.42],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [51.6, 55.8, 60.0, 66.0, 70.2, 75.0, 81.6, 88.2, 94.8, 102.0, 109.2, 116.4, 123.6, 130.8, 138.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [32.51, 35.15, 37.8, 41.58, 44.23, 47.25, 51.41, 55.57, 59.72, 64.26, 68.8, 73.33, 77.87, 82.4, 86.94],
              'extra': {},
            },
            {
              'value': [32.51, 35.15, 37.8, 41.58, 44.23, 47.25, 51.41, 55.57, 59.72, 64.26, 68.8, 73.33, 77.87, 82.4, 86.94],
              'extra': {},
            },
          ],
        },
        {
          'name': '瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 92.82, 98.94, 105.06, 111.18, 117.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '满蓄力瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [124.0, 133.3, 142.6, 155.0, 164.3, 173.6, 186.0, 198.4, 210.8, 223.2, 235.6, 248.0, 263.5, 279.0, 294.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '破局矢伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByHp: [11.58, 12.44, 13.31, 14.47, 15.34, 16.21, 17.36, 18.52, 19.68, 20.84, 21.99, 23.15, 24.6, 26.05, 27.49],
              },
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '萦络纵命索',
      'description':
          '牵引「络命丝」疾走，缠络标记途径的敌人。\n疾走结束时，「络命丝」将会爆发，基于夜兰的生命值上限，对标记的敌人造成水元素伤害。\n点按\n快速向前疾走一段距离。\n长按\n持续疾走，并在该状态下提高夜兰的抗打断能力。\n期间，夜兰可以控制疾走的方向，并能通过再次施放技能，提前结束疾走状态。\n此外，「络命丝」爆发时，依照标记敌人的数量，夜兰将有概率获得「破局」状态：每个标记的敌人能使概率提升34%。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByHp: [22.61, 24.31, 26.01, 28.27, 29.96, 31.66, 33.92, 36.18, 38.44, 40.7, 42.97, 45.23, 48.05, 50.88, 53.71],
              },
            },
          ],
        },
      ],
      'other': [
        {
          'name': '长按最大持续时间',
          'value': ['3秒', '3秒', '3秒', '3秒', '3秒', '3秒', '3秒', '3秒', '3秒', '3秒', '3秒', '3秒', '3秒', '3秒', '3秒'],
        },
        {
          'name': '冷却时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '渊图玲珑骰',
      'description':
          '造成水元素范围伤害，并凝聚出「玄掷玲珑」，协助进行战斗。\n玄掷玲珑\n将跟随角色，并在以下情况下，进行协同攻击，基于夜兰的生命值上限造成水元素伤害：\n• 队伍中自己的当前场上角色进行普通攻击时，每1秒至多触发一次；\n• 夜兰自己的「络命丝」爆发并命中敌人时，将进行一次协同攻击。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByHp: [7.31, 7.86, 8.4, 9.14, 9.68, 10.23, 10.96, 11.69, 12.42, 13.15, 13.89, 14.62, 15.53, 16.44, 17.36],
              },
            },
          ],
        },
        {
          'name': '玄掷玲珑伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByHp: [4.87, 5.24, 5.6, 6.09, 6.46, 6.82, 7.31, 7.8, 8.28, 8.77, 9.26, 9.74, 10.35, 10.96, 11.57],
              },
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
        {
          'name': '冷却时间',
          'value': ['18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒', '18秒'],
        },
      ],
      'energy': 70,
    },
  },
  52: {
    SkillType.Passive: [
      {
        'name': '久时的祝祷',
        'description': '在稻妻执行时长为20小时的探索派遣任务时，获得的奖励增加25%。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '破笼之志',
        'description': '久岐忍的生命值不高于50%时，治疗加成提升15%。',
        'buff': [
          {
            'stat': Stats.HealingBonus,
            'value': 25.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '安心之所',
        'description': '基于久岐忍的元素精通，越祓雷草之轮获得以下提升：\n• 治疗量提升值：元素精通的75%；\n• 伤害提升值：元素精通的25%。',
        'buff': [
          {
            'stat': Stats.DmgBonusByMastery,
            'value': 0.25,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.SkillESpecial,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·忍流飞刃斩',
      'description': '普通攻击\n进行至多四段的连续剑击。\n重击\n消耗一定体力，瞬间向前方挥出两剑。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [48.76, 52.73, 56.7, 62.37, 66.34, 70.88, 77.11, 83.35, 89.59, 96.39, 103.19, 110.0, 116.8, 123.61, 130.41],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [44.55, 48.17, 51.8, 56.98, 60.61, 64.75, 70.45, 76.15, 81.84, 88.06, 94.28, 100.49, 106.71, 112.92, 119.14],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [59.34, 64.17, 69.0, 75.9, 80.73, 86.25, 93.84, 101.43, 109.02, 117.3, 125.58, 133.86, 142.14, 150.42, 158.7],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [76.11, 82.31, 88.5, 97.35, 103.55, 110.63, 120.36, 130.1, 139.83, 150.45, 161.07, 171.69, 182.31, 192.93, 203.55],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [55.63, 60.16, 64.69, 71.16, 75.69, 80.86, 87.98, 95.09, 102.21, 109.97, 117.74, 125.5, 133.26, 141.02, 148.79],
              'extra': {},
            },
            {
              'value': [66.77, 72.2, 77.63, 85.4, 90.83, 97.04, 105.58, 114.12, 122.66, 131.98, 141.29, 150.61, 159.93, 169.24, 178.56],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [63.93, 69.14, 74.34, 81.77, 86.98, 92.93, 101.1, 109.28, 117.46, 126.38, 135.3, 144.22, 153.14, 162.06, 170.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [127.84, 138.24, 148.65, 163.51, 173.92, 185.81, 202.16, 218.51, 234.86, 252.7, 270.54, 288.38, 306.22, 324.05, 341.89],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [159.68, 172.67, 185.67, 204.24, 217.23, 232.09, 252.51, 272.93, 293.36, 315.64, 337.92, 360.2, 382.48, 404.76, 427.04],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '越祓雷草之轮',
      'description': '编结越祓草轮，消耗一部分生命值，对周围的敌人造成雷元素伤害。\n越祓草轮\n将跟随当前场上角色。每1.5秒，对周围的敌人造成雷元素伤害，并为范围内的当前场上角色恢复生命值，回复量受益于久岐忍的生命值上限。\n施放该技能所消耗的生命值，至多使久岐忍的生命值降低至20%。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [75.71, 81.39, 87.07, 94.64, 100.32, 106.0, 113.57, 121.14, 128.71, 136.28, 143.85, 151.42, 160.89, 170.35, 179.82],
              'extra': {},
            },
          ],
        },
        {
          'name': '越祓草轮伤害',
          'damageType': DamageType.SkillESpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [25.24, 27.13, 29.03, 31.55, 33.44, 35.34, 37.86, 40.38, 42.91, 45.43, 47.96, 50.48, 53.64, 56.79, 59.95],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '越祓草轮治疗量',
          'value': [
            '3%最大生命值+289',
            '3.23%最大生命值+318',
            '3.45%最大生命值+349',
            '3.75%最大生命值+383',
            '3.98%最大生命值+419',
            '4.2%最大生命值+457',
            '4.5%最大生命值+498',
            '4.8%最大生命值+542',
            '5.1%最大生命值+587',
            '5.4%最大生命值+636',
            '5.7%最大生命值+686',
            '6%最大生命值+739',
            '6.38%最大生命值+795',
            '6.75%最大生命值+852',
            '7.12%最大生命值+913'
          ],
        },
        {
          'name': '技能消耗',
          'value': [
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值',
            '30%当前生命值'
          ],
        },
        {
          'name': '持续时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '御咏鸣神刈山祭',
      'description': '将退邪之刃刺入地面，在前方创造清净邪物的结界，基于久岐忍的生命值上限，对其中的敌人持续造成雷元素伤害。\n施放时，若久岐忍的生命值低于或等于50%，结界的持续时间将会延长。',
      'buff': [],
      'hit': [
        {
          'name': '单次伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByHp: [3.6, 3.88, 4.15, 4.51, 4.78, 5.05, 5.41, 5.77, 6.13, 6.49, 6.85, 7.21, 7.66, 8.11, 8.56],
              },
            },
          ],
        },
        {
          'name': '总伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByHp: [25.23, 27.13, 29.02, 31.54, 33.43, 35.33, 37.85, 40.37, 42.9, 45.42, 47.94, 50.47, 53.62, 56.78, 59.93],
              },
            },
            {
              'value': [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
              'extra': {
                Stats.ExtraDamageByHp: [43.26, 46.5, 49.75, 54.07, 57.32, 60.56, 64.89, 69.21, 73.54, 77.86, 82.19, 86.52, 91.92, 97.33, 102.74],
              },
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': [
            '2秒/3.5秒',
            '2秒/3.5秒',
            '2秒/3.5秒',
            '2秒/3.5秒',
            '2秒/3.5秒',
            '2秒/3.5秒',
            '2秒/3.5秒',
            '2秒/3.5秒',
            '2秒/3.5秒',
            '2秒/3.5秒',
            '2秒/3.5秒',
            '2秒/3.5秒',
            '2秒/3.5秒',
            '2秒/3.5秒',
            '2秒/3.5秒'
          ],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  53: {
    SkillType.Passive: [
      {
        'name': '在罪之先',
        'description': '队伍中自己的角色冲刺消耗的体力降低20%。\n无法与效果完全相同的固有天赋叠加。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '反论稽古',
        'description': '鹿野院平藏在场上触发扩散反应时，将获得1层勠心拳的「变格」效果，该效果每0.1秒至多触发一次。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '因由勘破',
        'description': '勠心拳命中敌人后，队伍中所有角色（不包括鹿野院平藏自己）的元素精通提升80点，持续10秒。',
        'buff': [
          {
            'stat': Stats.Mastery,
            'value': 80.0,
            'buffType': BuffType.BuffForTeamWithoutMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·不动流格斗术',
      'description': '普通攻击\n以强风加持的招式与敌人格斗，进行至多五段的攻击，造成风元素伤害。\n重击\n消耗一定体力，使出扬尘踢，造成风元素伤害。\n下落攻击\n凝聚强风的力量，从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成风元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [37.47, 40.28, 43.09, 46.84, 49.65, 52.46, 56.21, 59.96, 63.71, 67.45, 71.2, 74.95, 79.63, 84.32, 89.0],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [36.85, 39.62, 42.38, 46.06, 48.83, 51.59, 55.28, 58.96, 62.65, 66.33, 70.02, 73.7, 78.31, 82.92, 87.52],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [51.06, 54.89, 58.72, 63.82, 67.65, 71.48, 76.59, 81.7, 86.8, 91.91, 97.01, 102.12, 108.5, 114.88, 121.27],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [14.78, 15.89, 17.0, 18.48, 19.59, 20.7, 22.17, 23.65, 25.13, 26.61, 28.09, 29.56, 31.41, 33.26, 35.11],
              'extra': {},
            },
            {
              'value': [16.26, 17.48, 18.7, 20.33, 21.55, 22.77, 24.39, 26.02, 27.64, 29.27, 30.9, 32.52, 34.55, 36.59, 38.62],
              'extra': {},
            },
            {
              'value': [19.22, 20.66, 22.1, 24.02, 25.46, 26.9, 28.83, 30.75, 32.67, 34.59, 36.51, 38.44, 40.84, 43.24, 45.64],
              'extra': {},
            },
          ],
        },
        {
          'name': '五段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [61.45, 66.06, 70.67, 76.81, 81.42, 86.03, 92.17, 98.32, 104.46, 110.61, 116.75, 122.9, 130.58, 138.26, 145.94],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [73.0, 78.47, 83.95, 91.25, 96.72, 102.2, 109.5, 116.8, 124.1, 131.4, 138.7, 146.0, 155.12, 164.25, 173.37],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25', '25'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '勠心拳',
      'description':
          '点按\n驱使疾风，向前打出勠心拳，造成风元素伤害。\n长按\n积蓄力量，以施展更为强大的拳势。蓄力期间，将持续获得能提升勠心拳威力的「变格」效果；松开技能或蓄力结束时，会向前打出勠心拳，造成风元素伤害。\n变格\n提升下一次勠心拳造成的伤害，至多叠加4层。\n拥有4层「变格」时，将产生「正论」效果，使下一次勠心拳造成的伤害将进一步提高，并拥有更大的影响范围',
      'buff': [
        {
          'name': '变格伤害提升',
          'stat': Stats.DmgBonus,
          'value': [56.88, 61.15, 65.41, 71.1, 75.37, 79.63, 85.32, 91.01, 96.7, 102.38, 108.07, 113.76, 120.87, 127.98, 135.09],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
        {
          'name': '变格伤害提升',
          'stat': Stats.DmgBonus,
          'value': [56.88, 61.15, 65.41, 71.1, 75.37, 79.63, 85.32, 91.01, 96.7, 102.38, 108.07, 113.76, 120.87, 127.98, 135.09],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
        {
          'name': '变格伤害提升',
          'stat': Stats.DmgBonus,
          'value': [56.88, 61.15, 65.41, 71.1, 75.37, 79.63, 85.32, 91.01, 96.7, 102.38, 108.07, 113.76, 120.87, 127.98, 135.09],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
        {
          'name': '变格伤害提升',
          'stat': Stats.DmgBonus,
          'value': [56.88, 61.15, 65.41, 71.1, 75.37, 79.63, 85.32, 91.01, 96.7, 102.38, 108.07, 113.76, 120.87, 127.98, 135.09],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
        {
          'name': '正论伤害提升',
          'stat': Stats.DmgBonus,
          'value': [113.76, 122.29, 130.82, 142.2, 150.73, 159.26, 170.64, 182.02, 193.39, 204.77, 216.14, 227.52, 241.74, 255.96, 270.18],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
      ],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [227.52, 244.58, 261.65, 284.4, 301.46, 318.53, 341.28, 364.03, 386.78, 409.54, 432.29, 455.04, 483.48, 511.92, 540.36],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '变格持续时间',
          'value': ['60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒', '60秒'],
        },
        {
          'name': '冷却时间',
          'value': ['10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒', '10秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '聚风蹴',
      'description':
          '腾跃至空中，向敌人踢出不动流·真空弹。不动流·真空弹将在命中时炸裂，产生缉拿风穴，牵引附近的物体与敌人，造成风元素范围伤害。\n不动流·真空弹命中处于水元素/火元素/冰元素/雷元素附着下的敌人时，会为这些敌人施加「聚风真眼」效果，该效果会在片刻后爆发消失，并造成对应元素属性的范围伤害。\n不动流·真空弹至多对4名命中的敌人施加「聚风真眼」；敌人无法同时处于多种元素属性的「聚风真眼」状态下。',
      'buff': [],
      'hit': [
        {
          'name': '不动流·真空弹伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [314.69, 338.29, 361.89, 393.36, 416.96, 440.56, 472.03, 503.5, 534.97, 566.44, 597.91, 629.38, 668.71, 708.05, 747.38],
              'extra': {},
            },
          ],
        },
        {
          'name': '聚风真眼伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [21.46, 23.07, 24.67, 26.82, 28.43, 30.04, 32.18, 34.33, 36.48, 38.62, 40.77, 42.91, 45.59, 48.28, 50.96],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
      'energy': 40,
    },
  },
  54: {
    SkillType.Passive: [
      {
        'name': '闳览博物',
        'description': '在小地图上显示周围的须弥区域特产的位置。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '眼识殊明',
        'description': '提纳里发射花筥箭后，元素精通提升50点，持续4秒。',
        'buff': [
          {
            'stat': Stats.Mastery,
            'value': 50.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.All,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '诸叶辨通',
        'description': '提纳里的每点元素精通，都会使其重击与造生缠藤箭造成的伤害提升0.06%。\n通过这种方式，至多使上述攻击造成的伤害提升60%。',
        'buff': [
          {
            'stat': Stats.DmgBonusByMastery,
            'value': 0.06,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.Charged,
              DamageType.SkillQ,
            ],
          },
        ],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·藏蕴破障',
      'description':
          '普通攻击\n进行至多四段的连续弓箭射击。\n重击\n进行伤害更高、更为精准的瞄准射击。\n瞄准时，草木的力量会在箭矢上持续积聚，并随攻击发射出去。根据蓄力时间长短，能造成不同的效果：\n·一段蓄力：射出附有草元素的箭矢，造成草元素伤害；\n·二段蓄力：发射花筥箭，造成草元素伤害。命中后，将产生4枚会自行追踪附近敌人的藏蕴花矢，能够造成草元素伤害。\n下落攻击\n从空中射出箭雨，并迅速下坠冲击地面，在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [44.63, 48.27, 51.9, 57.09, 60.72, 64.88, 70.58, 76.29, 82.0, 88.23, 94.46, 100.69, 106.91, 113.14, 119.37],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [41.97, 45.38, 48.8, 53.68, 57.1, 61.0, 66.37, 71.74, 77.1, 82.96, 88.82, 94.67, 100.53, 106.38, 112.24],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [26.45, 28.6, 30.75, 33.83, 35.98, 38.44, 41.82, 45.2, 48.59, 52.28, 55.97, 59.65, 63.34, 67.04, 70.72],
              'extra': {},
            },
            {
              'value': [26.45, 28.6, 30.75, 33.83, 35.98, 38.44, 41.82, 45.2, 48.59, 52.28, 55.97, 59.65, 63.34, 67.04, 70.72],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [68.63, 74.21, 79.8, 87.78, 93.37, 99.75, 108.53, 117.31, 126.08, 135.66, 145.24, 154.81, 164.39, 173.96, 183.54],
              'extra': {},
            },
          ],
        },
        {
          'name': '瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 92.82, 98.94, 105.06, 111.18, 117.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '一段蓄力瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [124.0, 133.3, 142.6, 155.0, 164.3, 173.6, 186.0, 198.4, 210.8, 223.2, 235.6, 248.0, 263.5, 279.0, 294.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '花筥箭伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [87.2, 93.74, 100.28, 109.0, 115.54, 122.08, 130.8, 139.52, 148.24, 156.96, 165.68, 174.4, 185.3, 196.2, 207.1],
              'extra': {},
            },
          ],
        },
        {
          'name': '藏蕴花矢伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [38.6, 41.5, 44.39, 48.25, 51.14, 54.04, 57.9, 61.76, 65.62, 69.48, 73.34, 77.2, 82.02, 86.85, 91.68],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '识果种雷',
      'description': '提纳里向前投掷识种心雷，造成草元素范围伤害，并产生识蕴领域，神秘的幻象会持续嘲讽其中的敌人，吸引火力。\n此外，提纳里将获得「通塞识」效果，使其花筥箭所需的蓄力时间减少2.4秒，该效果将在持续时间结束或提纳里发射3次花筥箭后消失。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [149.6, 160.82, 172.04, 187.0, 198.22, 209.44, 224.4, 239.36, 254.32, 269.28, 284.24, 299.2, 317.9, 336.6, 355.3],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '识蕴领域持续时间',
          'value': ['8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒', '8秒'],
        },
        {
          'name': '通塞识持续时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '造生缠藤箭',
      'description': '汇聚一切种子的力量，发射6枚能追踪敌人的缠藤箭，造成草元素伤害。\n缠藤箭在命中后，将会产生次级缠藤箭，追踪附近的敌人，并在命中时造成草元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '缠藤箭伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [55.62, 59.79, 63.96, 69.52, 73.7, 77.87, 83.43, 88.99, 94.55, 100.12, 105.68, 111.24, 118.19, 125.14, 132.1],
              'extra': {},
            },
          ],
        },
        {
          'name': '次级缠藤箭伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [67.98, 73.08, 78.18, 84.97, 90.07, 95.17, 101.97, 108.77, 115.57, 122.36, 129.16, 135.96, 144.46, 152.95, 161.45],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
      'energy': 40,
    },
  },
  55: {
    SkillType.Passive: [
      {
        'name': '「须弥飞行冠军」',
        'description': '队伍中自己的角色滑翔消耗的体力降低20%。\n无法与效果完全相同的固有天赋叠加。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '飞叶迴斜',
        'description':
            '在飞叶轮返回前，如果队伍中自己的角色触发了燃烧、原激化、超激化、蔓激化、绽放、超绽放或烈绽放反应，则会在返回时为角色赋予「新叶」状态，持续对身边的敌人造成相当于柯莱攻击力40%的草元素伤害，持续3秒。\n新叶效果持续期间再次产生新叶效果时，将移除原有的效果。新叶效果造成的伤害视为元素战技伤害。',
        'buff': [],
        'hit': [
          {
            'name': '新叶伤害',
            'damageType': DamageType.SkillE,
            'elementType': SkillElementType.Element,
            'value': [
              {
                'value': 40.0,
                'extra': {},
              },
            ],
          },
        ],
      },
      {
        'name': '徐如旷林',
        'description': '柯里安巴领域中的角色触发燃烧、原激化、超激化、蔓激化、绽放、超绽放或烈绽放反应时，将使领域的持续时间延长1秒。\n一次猫猫秘宝中，至多通过这种方式延长3次持续时间。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·祈颂射艺',
      'description': '普通攻击\n进行至多四段的连续弓箭射击。\n重击\n进行伤害更高、更为精准的瞄准射击。\n瞄准时，草元素会凭附在箭矢上。聚满了草元素的箭矢会造成草元素伤害。\n下落攻击\n从空中射出箭雨，并迅速下坠冲击地面，在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.6, 47.15, 50.7, 55.77, 59.32, 63.38, 68.95, 74.53, 80.11, 86.19, 92.27, 98.36, 104.44, 110.53, 116.61],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [42.66, 46.13, 49.6, 54.56, 58.03, 62.0, 67.46, 72.91, 78.37, 84.32, 90.27, 96.22, 102.18, 108.13, 114.08],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [54.09, 58.5, 62.9, 69.19, 73.59, 78.62, 85.54, 92.46, 99.38, 106.93, 114.48, 122.03, 129.57, 137.12, 144.67],
              'extra': {},
            },
          ],
        },
        {
          'name': '四段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [68.03, 73.56, 79.1, 87.01, 92.55, 98.87, 107.58, 116.28, 124.98, 134.47, 143.96, 153.45, 162.95, 172.44, 181.93],
              'extra': {},
            },
          ],
        },
        {
          'name': '瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [43.86, 47.43, 51.0, 56.1, 59.67, 63.75, 69.36, 74.97, 80.58, 86.7, 92.82, 98.94, 105.06, 111.18, 117.3],
              'extra': {},
            },
          ],
        },
        {
          'name': '满蓄力瞄准射击',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [124.0, 133.3, 142.6, 155.0, 164.3, 173.6, 186.0, 198.4, 210.8, 223.2, 235.6, 248.0, 263.5, 279.0, 294.5],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [56.83, 61.45, 66.08, 72.69, 77.31, 82.6, 89.87, 97.14, 104.41, 112.34, 120.27, 128.2, 136.12, 144.05, 151.98],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [113.63, 122.88, 132.13, 145.35, 154.59, 165.17, 179.7, 194.23, 208.77, 224.62, 240.48, 256.34, 272.19, 288.05, 303.9],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': [141.93, 153.49, 165.04, 181.54, 193.1, 206.3, 224.45, 242.61, 260.76, 280.57, 300.37, 320.18, 339.98, 359.79, 379.59],
              'extra': {},
            },
          ],
        },
      ],
      'other': [],
    },
    SkillType.SkillE: {
      'name': '拂花偈叶',
      'description': '投掷飞叶轮，对触及的目标各造成一次草元素伤害。\n飞叶轮将在投掷一定时间后返回，再次造成草元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '技能伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [151.2, 162.54, 173.88, 189.0, 200.34, 211.68, 226.8, 241.92, 257.04, 272.16, 287.28, 302.4, 321.3, 340.2, 359.1],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '猫猫秘宝',
      'description': '请可靠的柯里安巴上阵帮忙。\n投掷柯里安巴玩偶，爆发时造成草元素范围伤害，并产生柯里安巴领域。柯里安巴会在领域中不断跃动，造成草元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '爆发伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [201.82, 216.96, 232.1, 252.28, 267.42, 282.55, 302.74, 322.92, 343.1, 363.28, 383.47, 403.65, 428.88, 454.1, 479.33],
              'extra': {},
            },
          ],
        },
        {
          'name': '跃动伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [43.25, 46.49, 49.74, 54.06, 57.3, 60.55, 64.87, 69.2, 73.52, 77.85, 82.17, 86.5, 91.9, 97.31, 102.71],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续时间',
          'value': ['6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒', '6秒'],
        },
        {
          'name': '冷却时间',
          'value': ['15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒', '15秒'],
        },
      ],
      'energy': 60,
    },
  },
  56: {
    SkillType.Passive: [
      {
        'name': '意外订单',
        'description': '合成角色与武器培养素材时，有25%的概率返还部分合成材料。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '披沙沥金',
        'description': '与灯中幽精相连的角色在触发感电、超导、超载、原激化、超激化、超绽放、雷元素扩散或雷元素结晶反应后，镇灵之灯·烦恼解决炮的冷却时间缩短1秒。\n该效果每3秒至多触发一次。',
        'buff': [],
        'hit': [],
      },
      {
        'name': '利上加利',
        'description': '镇灵之灯·烦恼解决炮的断除烦恼炮或售后服务弹命中敌人时，基于多莉的元素充能效率，每100%为多莉恢复5点元素能量。\n每次施放镇灵之灯·烦恼解决炮只能通过这种方式恢复一次元素能量，并至多恢复15点元素能量。',
        'buff': [],
        'hit': [],
      },
    ],
    SkillType.SkillA: {
      'name': '普通攻击·妙显剑舞·改',
      'description': '普通攻击\n进行至多三段的连续挥砍。\n重击\n持续消耗体力，旋转大剑攻击周围的敌人。\n停止旋转时，会进行一次格外有力的挥砍。\n下落攻击\n从空中下坠冲击地面，攻击下落路径上的敌人，并在落地时造成范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '一段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [90.21, 97.56, 104.9, 115.39, 122.73, 131.12, 142.66, 154.2, 165.74, 178.33, 190.92, 203.51, 216.09, 228.68, 241.27],
              'extra': {},
            },
          ],
        },
        {
          'name': '二段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [41.07, 44.42, 47.76, 52.54, 55.88, 59.7, 64.95, 70.21, 75.46, 81.19, 86.92, 92.65, 98.39, 104.12, 109.85],
              'extra': {},
            },
            {
              'value': [43.12, 46.63, 50.14, 55.15, 58.66, 62.67, 68.19, 73.71, 79.22, 85.24, 91.25, 97.27, 103.29, 109.31, 115.32],
              'extra': {},
            },
          ],
        },
        {
          'name': '三段伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [128.4, 138.85, 149.3, 164.23, 174.68, 186.63, 203.05, 219.47, 235.89, 253.81, 271.73, 289.64, 307.56, 325.47, 343.39],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击循环伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [62.55, 67.64, 72.73, 80.0, 85.09, 90.91, 98.91, 106.91, 114.91, 123.64, 133.64, 145.4, 157.16, 168.92, 181.75],
              'extra': {},
            },
          ],
        },
        {
          'name': '重击终结伤害',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [113.09, 122.29, 131.5, 144.65, 153.86, 164.37, 178.84, 193.31, 207.77, 223.55, 241.63, 262.89, 284.16, 305.42, 328.62],
              'extra': {},
            },
          ],
        },
        {
          'name': '下坠期间伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [74.59, 80.66, 86.73, 95.4, 101.47, 108.41, 117.95, 127.49, 137.03, 147.44, 157.85, 168.26, 178.66, 189.07, 199.48],
              'extra': {},
            },
          ],
        },
        {
          'name': '低空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [149.14, 161.28, 173.42, 190.77, 202.91, 216.78, 235.86, 254.93, 274.01, 294.82, 315.63, 336.44, 357.25, 378.06, 398.87],
              'extra': {},
            },
          ],
        },
        {
          'name': '高空坠地冲击伤害',
          'damageType': DamageType.Plunging,
          'elementType': SkillElementType.Both,
          'value': [
            {
              'value': [186.29, 201.45, 216.62, 238.28, 253.44, 270.77, 294.6, 318.42, 342.25, 368.25, 394.24, 420.23, 446.23, 472.22, 498.21],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '重击体力消耗',
          'value': ['40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒', '40/秒'],
        },
        {
          'name': '最大持续时间',
          'value': ['5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒', '5秒'],
        },
      ],
    },
    SkillType.SkillE: {
      'name': '镇灵之灯·烦恼解决炮',
      'description': '示意镇灵之灯向敌人发射断除烦恼炮，造成雷元素伤害。\n断除烦恼炮命中后，将会产生2枚能自行追踪附近敌人的售后服务弹，造成雷元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '断除烦恼炮伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [147.28, 158.33, 169.37, 184.1, 195.15, 206.19, 220.92, 235.65, 250.38, 265.1, 279.83, 294.56, 312.97, 331.38, 349.79],
              'extra': {},
            },
          ],
        },
        {
          'name': '售后服务弹伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [31.56, 33.93, 36.29, 39.45, 41.82, 44.18, 47.34, 50.5, 53.65, 56.81, 59.96, 63.12, 67.07, 71.01, 74.95],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '冷却时间',
          'value': ['9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒', '9秒'],
        },
      ],
    },
    SkillType.SkillQ: {
      'name': '卡萨扎莱宫的无微不至',
      'description':
          '召唤灯中幽精，为顾客提供形形色色的帮助。\n灯中幽精\n会与附近的角色相连。与灯中幽精相连的角色将会：\n·持续恢复生命值，回复量受益于多莉的生命值上限；\n·持续获得元素能量；\n·处于雷元素附着状态下。\n此外，角色与灯中幽精之间的连接触碰敌人时，将每0.4秒对敌人造成一次雷元素伤害。\n同时只能存在一个灯中幽精。',
      'buff': [],
      'hit': [
        {
          'name': '连接伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': [15.88, 17.07, 18.26, 19.85, 21.04, 22.24, 23.82, 25.41, 27.0, 28.59, 30.18, 31.76, 33.75, 35.74, 37.72],
              'extra': {},
            },
          ],
        },
      ],
      'other': [
        {
          'name': '持续治疗量',
          'value': [
            '6.67%最大生命值+641.98',
            '7.17%最大生命值+706.19',
            '7.67%最大生命值+775.74',
            '8.34%最大生命值+850.65',
            '8.84%最大生命值+930.91',
            '9.34%最大生命值+1016.52',
            '10.01%最大生命值+1107.48',
            '10.67%最大生命值+1203.79',
            '11.34%最大生命值+1305.45',
            '12.01%最大生命值+1412.46',
            '12.67%最大生命值+1524.82',
            '13.34%最大生命值+1642.54',
            '14.17%最大生命值+1765.6',
            '15.01%最大生命值+1894.01',
            '15.84%最大生命值+2027.78'
          ],
        },
        {
          'name': '元素能量恢复	',
          'value': ['1.6', '1.7', '1.8', '1.9', '2', '2.1', '2.2', '2.3', '2.4', '2.5', '2.5', '2.5', '2.5', '2.5', '2.5'],
        },
        {
          'name': '持续时间',
          'value': ['12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒', '12秒'],
        },
        {
          'name': '冷却时间',
          'value': ['20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒', '20秒'],
        },
      ],
      'energy': 80,
    },
  },
};
