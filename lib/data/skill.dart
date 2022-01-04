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
          'damageType': DamageType.Normal,
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
    },
    SkillType.SkillE: {
      'name': '高天之歌',
      'description': '呼唤与诗和乐协鸣的风，将在尘泥中行走的事物送上高空吧。',
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
    },
    SkillType.SkillQ: {
      'name': '风神之诗',
      'description': '射出千风汇聚而成的箭矢，在前方造出巨大的暴风之眼，将敌人卷入，持续造成风元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '持续伤害	',
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
          'name': '附加元素伤害	',
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
        'buff': [],
        'hit': [],
      },
      {
        'name': '血之灶火',
        'description': '胡桃的生命值低于或等于50%时，获得33%火元素伤害加成。',
        'buff': [
          {
            'stat': Stats.DmgBonus,
            'value': 33.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.Normal,
              DamageType.Charged,
              DamageType.Plunging,
              DamageType.SkillE,
              DamageType.SkillQ,
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
    },
    SkillType.SkillE: {
      'name': '蝶引来生',
      'description': '胡桃消耗一部分生命值，击退周围敌人，进入彼岸蝶舞状态。',
      'buff': [
        {
          'name': '攻击力提高',
          'stat': Stats.AttackBonusByHp,
          'value': [3.84, 4.07, 4.3, 4.6, 4.83, 5.06, 5.36, 5.66, 5.96, 6.26, 6.56, 6.85, 7.15, 7.45, 7.75],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
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
            'stat': Stats.DmgBonus,
            'value': 20.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.Normal,
              DamageType.Charged,
              DamageType.Plunging,
              DamageType.SkillE,
              DamageType.SkillQ,
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
          'damageType': DamageType.Normal,
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
    },
    SkillType.SkillE: {
      'name': '山泽麟迹',
      'description': '甘雨留下一朵冰莲并迅速后退，远离一切魑魅魍魉，造成冰元素范围伤害。',
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
    },
  },
  30: {
    SkillType.Passive: [
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
          {
            'stat': Stats.PhyDmgBonus,
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
            'stat': Stats.DmgBonus,
            'value': 18.0,
            'buffType': BuffType.BuffForMe,
            'damageType': [
              DamageType.Normal,
              DamageType.Charged,
              DamageType.Plunging,
              DamageType.SkillE,
              DamageType.SkillQ,
            ],
          },
        ],
        'hit': [],
      },
      {
        'name': '神里流·霰步',
        'description': '替代冲刺\n隐入碎冰，以消耗体力为代价，化为激流快速移动。\n在霰步状态下，神里绫华可以在水面上高速移动。\n结束霰步现身时，将产生如下效果：\n• 释放寒冰的力量，对周围的敌人施加冰元素附着；\n• 将寒气凝聚在剑上，使神里绫华在短时间内获得冰元素附魔。',
        'buff': [],
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
    },
    SkillType.SkillQ: {
      'name': '神里流·霜灭',
      'description': '以倾奇之姿汇聚寒霜，放出持续行进的霜见雪关扉。',
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
            'stat': Stats.ExtraDmageByDefend,
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
    },
    SkillType.SkillE: {
      'name': '魔杀绝技·赤牛发破！',
      'description': '将荒泷派编外成员小赤牛「阿丑」高速投掷出去，对命中的敌人造成岩元素伤害！「阿丑」命中敌人时，会为荒泷一斗提供1层「乱神之怪力」效果。',
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
    },
    SkillType.SkillQ: {
      'name': '最恶鬼王·一斗轰临！！',
      'description': '是时候展现荒泷派的一斗之威名了！在接下来的一段时间内化身「怒目鬼王」，使用鬼王金碎棒战斗。',
      'buff': [
        {
          'name': '攻击力提高',
          'stat': Stats.AttackBonusByDefend,
          'value': [57.6, 61.92, 66.24, 72.0, 76.32, 80.64, 86.4, 92.16, 97.92, 103.68, 109.44, 115.2, 122.4, 129.6, 136.8],
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
            DamageType.SkillE,
            DamageType.SkillQ,
          ],
        },
      ],
      'hit': [],
    },
  },
};
