import 'data.dart';

const CONSTELLATIONS = {
  1: {
    Constellation.Con1: {
      'name': '弦发的苍风',
      'description': '瞄准射击会额外发射两枚分裂箭，分别造成原本33%的伤害。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '眷恋的泠风',
      'description': '高天之歌会使敌人的风元素抗性与物理抗性降低12%，持续10秒。\n被高天之歌击飞的敌人在落地前，风元素抗性与物理抗性额外降低12%。',
      'buff': [
        {
          'stat': Stats.ResistanceDecreaseElement,
          'value': 12.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
        {
          'stat': Stats.ResistanceDecreasePhysical,
          'value': 12.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
        {
          'stat': Stats.ResistanceDecreaseElement,
          'value': 12.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
        {
          'stat': Stats.ResistanceDecreasePhysical,
          'value': 12.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '千风的诗篇',
      'description': '风神之诗的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '自由的凛风',
      'description': '温迪获取元素晶球或元素微粒后，获得25%风元素伤害加成，持续10秒。',
      'buff': [
        {
          'stat': Stats.EleDmgBonus,
          'value': 25.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '高天的协奏',
      'description': '高天之歌的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '抗争的暴风',
      'description': '受风神之诗伤害的敌人，风元素抗性降低20%；\n若产生了元素转化，则使转换的元素抗性也降低20%。',
      'buff': [
        {
          'stat': Stats.ResistanceDecreaseElement,
          'value': 20.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  2: {
    Constellation.Con1: {
      'name': '流转剑脊的暴风',
      'description': '风压剑长按超过1秒后，提升牵引速度，并使造成的伤害提升40%。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 40.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '守护众人的坚盾',
      'description': '琴获得元素晶球或元素微粒时，队伍中所有角色获得15%攻击速度和15%移动速度提升，持续15秒。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '西风吹拂之时',
      'description': '蒲公英之风的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '蒲公英的国土',
      'description': '在蒲公英之风的领域内，所有敌人的风元素抗性下降40%。',
      'buff': [
        {
          'stat': Stats.ResistanceDecreaseElement,
          'value': 40.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '须臾一瞬的烈风',
      'description': '风压剑的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '恩眷万民的狮牙',
      'description': '在蒲公英之风的领域内，角色受到的伤害降低35%。\n离开领域后，这个效果会在承受3次攻击或10秒后消失。',
      'buff': [],
      'hit': [],
    },
  },
  3: {
    Constellation.Con1: {
      'name': '坏劫·毁坏三界',
      'description': '风轮两立的可使用次数增加1次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '空劫·虚空华开敷变',
      'description': '处于队伍后台时，魈自己的元素充能效率提高25%。',
      'buff': [
        {
          'stat': Stats.Recharge,
          'value': 25.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '降魔·忿怒显相',
      'description': '风轮两立的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '神通·诸苦灭尽',
      'description': '魈的生命值低于50%时，获得100%防御力提升。',
      'buff': [
        {
          'stat': Stats.DefendBonus,
          'value': 100.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '成劫·无明增长',
      'description': '靖妖傩舞的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '降魔·护法夜叉',
      'description': '在靖妖傩舞状态下，下落攻击命中至少2个敌人时，风轮两立立刻获得1次可使用次数，并且在接下来1秒内，可以无视冷却时间施放风轮两立。',
      'buff': [],
      'hit': [],
    },
  },
  4: {
    Constellation.Con1: {
      'name': '回转的怒风',
      'description': '风涡剑可将周围5米内的敌人与物体缓慢牵引到角色面前。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '革新的旋风',
      'description': '元素充能效率提升16%。',
      'buff': [
        {
          'stat': Stats.Recharge,
          'value': 16.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '降魔·忿怒显相',
      'description': '风轮两立的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '眷护的和风',
      'description': '风涡剑持续期间，受到的伤害降低10%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '群星的涡风',
      'description': '风涡剑的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '纠缠的信风',
      'description': '受到风息激荡伤害的目标，风元素抗性下降20%。\n如果产生了元素转化，那么对应元素抗性也下降20%。',
      'buff': [
        {
          'stat': Stats.ResistanceDecreaseElement,
          'value': 20.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  5: {
    Constellation.Con1: {
      'name': '堆叠真空域',
      'description': '风灵作成 • 陆叁零捌的可使用次数增加1次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '不羁型贝特',
      'description': '禁 • 风灵作成 • 柒伍同构贰型的技能持续时间延长2秒。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '零失误少女',
      'description': '风灵作成 • 陆叁零捌的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '炼金的偏执',
      'description': '砂糖的普通攻击或者重击累计命中敌人7次，风灵作成 • 陆叁零捌的冷却时间就会随机减少1-7秒。\n每0.1秒至多计数一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '认真普通瓶',
      'description': '禁 • 风灵作成 • 柒伍同构贰型的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '混元熵增论',
      'description': '禁 • 风灵作成 • 柒伍同构贰型如果发生了元素转化，则使队伍中所有角色在技能持续时间内获得20%的对应元素伤害加成。',
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
  },
  6: {
    Constellation.Con1: {
      'name': '千山红遍',
      'description': '千早振的冷却时间减少10%。\n施放万叶之一刀时，重置千早振的冷却时间。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '山岚残芯',
      'description': '万叶之一刀的流风秋野具有以下效果：\n• 持续期间内，枫原万叶自己的元素精通提升200点；\n• 其中的场上角色的元素精通提升200点。\n该命之座提供的元素精通提升效果无法叠加。',
      'buff': [
        {
          'stat': Stats.Mastery,
          'value': 200.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '枫袖奇谭',
      'description': '千早振的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '大空幻法',
      'description': '当枫原万叶的元素能量低于45点时，具有如下效果：\n• 点按、长按施放千早振时，将分别为枫原万叶恢复3、4点元素能量；\n• 处于滑翔状态下时，每秒为枫原万叶恢复2点元素能量。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '万世之集',
      'description': '万叶之一刀的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '血赤叶红',
      'description': '枫原万叶施放千早振或万叶之一刀后的5秒内，获得风元素附魔，并且枫原万叶的每点元素精通，都会使他的普通攻击、重击、下落攻击造成的伤害提高0.2%。',
      'buff': [
        {
          'stat': Stats.DmgBonusByMastery,
          'value': 0.2,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
            DamageType.Charged,
            DamageType.Plunging,
          ],
        },
      ],
      'hit': [],
    },
  },
  7: {
    Constellation.Con1: {
      'name': '一心二用之术',
      'description': '呜呼流 • 影貉缭乱的不倒貉貉的行动将忽视生命值限制，能同时攻击附近的敌人并为角色恢复生命值。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '理清逃跑路线',
      'description': '呜呼流 • 风隐急进获得如下效果：\n• 点按施放时，风风轮舞踢造成的伤害提高3.3%；\n• 处于长按施放后的风风轮状态下时，每0.5秒，就会使这次施展的风风轮舞踢造成的伤害提高3.3%。通过这种方式，风风轮舞踢造成的伤害至多可以提高66%。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 66.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '都交给分身吧',
      'description': '呜呼流 • 影貉缭乱的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '偷懒的新方法',
      'description': '早柚在场上触发扩散反应时，将恢复1.2点元素能量。\n该效果每2秒只能触发一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '快是第一奥义',
      'description': '呜呼流 • 风隐急进的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '呼呼大睡时间',
      'description':
          '早柚自己通过呜呼流 • 影貉缭乱召唤的不倒貉貉的攻击与回复量，受益于早柚的元素精通。早柚的每点元素精通，能产生如下效果：\n• 使不倒貉貉的攻击额外造成0.2%攻击力的伤害。通过这种方式至多额外造成400%攻击力的伤害；\n• 使不倒貉貉的回复量提高3点。通过这种方式，至多提高6000点回复量。',
      'buff': [
        {
          'stat': Stats.RatioExtraByMastery,
          'value': 0.2,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillQSpecial,
          ],
        },
      ],
      'hit': [],
    },
  },
  8: {
    Constellation.Con1: {
      'name': '魔王武装·遏浪',
      'description': '魔王武装 • 狂澜的冷却时间降低20%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '魔王武装·暗流',
      'description': '处于断流效果影响下的敌人被击败时，为达达利亚恢复4点元素能量。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '深渊之灾·纷争涡源',
      'description': '魔王武装 • 狂澜的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '深渊之灾·凝水盛放',
      'description': '每4秒，场上存在达达利亚自身施加的断流效果时，若达达利亚当前处于魔王武装 • 狂澜的近战状态，则触发断流 • 斩；否则，触发断流 • 闪。\n通过此命之座触发的断流 • 斩与断流 • 闪不受这两种断流各自的触发间隔限制，也不会影响其触发间隔。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '极恶技·斩水斩雨',
      'description': '极恶技 • 尽灭闪的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '极恶技·天使灭尽',
      'description': '在近战状态下施放极恶技 • 尽灭闪时，清除魔王武装 • 狂澜的冷却时间。\n该效果会在回到远程状态后触发。',
      'buff': [],
      'hit': [],
    },
  },
  9: {
    Constellation.Con1: {
      'name': '沉没的预言',
      'description': '队伍中自己的角色攻击命中处于星异状态下的敌人后的8秒内，水元素相关反应的效果提升：\n• 感电反应造成的伤害提升15%，蒸发反应造成的伤害提升15%，水元素扩散反应造成的伤害提升15%；\n• 冻结反应的持续时间延长15%。',
      'buff': [
        {
          'stat': Stats.VaporizeBonus,
          'value': 15.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '星月的连珠',
      'description': '普通攻击命中时，有20%的几率自动施放一次重击。\n该效果每5秒只能触发一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '不休的天象',
      'description': '星命定轨的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '灭绝的预言',
      'description': '队伍中所有角色攻击处于星异状态下的敌人时，暴击率提升15%。',
      'buff': [
        {
          'stat': Stats.CritRate,
          'value': 15.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '命运的嘲弄',
      'description': '水中幻愿的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '厄运的修辞',
      'description': '进入虚实流动状态后，每移动1秒，莫娜的下一次重击伤害就增加60%，\n通过这种方式至多可以获得180%重击伤害加成，该效果至多持续8秒。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 180.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Charged,
          ],
        },
      ],
      'hit': [],
    },
  },
  10: {
    Constellation.Con1: {
      'name': '重帘留香',
      'description': '雨帘剑的最大数量增加1柄。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '天青现虹',
      'description': '古华剑 • 裁雨留虹的持续时间延长3秒；\n此外，受到剑雨攻击的敌人，水元素抗性降低15%，持续4秒。',
      'buff': [
        {
          'stat': Stats.ResistanceDecreaseElement,
          'value': 15.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '织诗成锦',
      'description': '古华剑 • 裁雨留虹的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '孤舟斩蛟',
      'description': '在古华剑 • 裁雨留虹效果持续期间，古华剑 • 画雨笼山造成的伤害提升50%。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 50.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '雨深闭门',
      'description': '古华剑 • 画雨笼山的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '万文集此',
      'description': '古华剑 • 裁雨留虹每发动2次剑雨攻击，就大幅增强下一次剑雨攻击，并在命中敌人时为行秋恢复3点元素能量。',
      'buff': [],
      'hit': [],
    },
  },
  11: {
    Constellation.Con1: {
      'name': '彩色歌谣',
      'description': '芭芭拉每10秒恢复1点元素能量。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '元气迸发',
      'description': '演唱，开始♪的冷却时间降低15%；\n技能持续期间，当前场上自己的角色获得15%水元素伤害加成。',
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
    Constellation.Con3: {
      'name': '明日之星',
      'description': '闪耀奇迹♪的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '努力即魔法',
      'description': '芭芭拉使用重击时，每命中一个敌人，就恢复1点元素能量。\n通过这种方式，一次至多回复5点元素能量。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '纯真的羁绊',
      'description': '演唱，开始♪的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '将一切美好献给你',
      'description': '芭芭拉处于队伍后台时，队伍中自己的角色倒下时，则立即：\n• 复苏该角色；\n• 将该角色生命值恢复至100%。\n该效果每15分钟只能触发一次。',
      'buff': [],
      'hit': [],
    },
  },
  12: {
    Constellation.Con1: {
      'name': '决水于溪',
      'description': '处于海人化羽的仪来羽衣状态下时，珊瑚宫心海普通攻击的最后一击会额外释放一只游鱼，造成相当于珊瑚宫心海生命值上限30%的水元素伤害。\n该伤害不被视为普通攻击伤害。',
      'buff': [],
      'hit': [
        {
          'name': '游鱼',
          'damageType': DamageType.SkillQSpecial,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 0.0,
              'extra': {
                Stats.ExtraDamageByHp: 30.0,
              },
            },
          ],
        },
      ],
    },
    Constellation.Con2: {
      'name': '波起云海',
      'description': '基于珊瑚宫心海的生命值上限，珊瑚宫心海对生命值低于或等于50%的角色，通过以下途径进行治疗的回复量获得提升：\n• 海月之誓的化海月：生命值上限的4.5%\n• 海人化羽的普通攻击与重击：生命值上限的0.6%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '海渚月舟',
      'description': '海人化羽的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '月摄千川',
      'description': '处于海人化羽的仪来羽衣状态下时，珊瑚宫心海普通攻击的攻击速度提升10%，并会在普通攻击命中敌人时，恢复0.8点元素能量。\n该效果每0.2秒至多触发一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '百川集海',
      'description': '海月之誓的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '珊瑚一心',
      'description': '处于海人化羽的仪来羽衣状态下时，珊瑚宫心海的普通攻击和重击对生命值高于或等于80%的角色进行治疗时，将获得40%水元素伤害加成，持续4秒。',
      'buff': [
        {
          'stat': Stats.EleDmgBonus,
          'value': 40.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  13: {
    Constellation.Con1: {
      'name': '罪罚裁断',
      'description': '对生命值高于50%的敌人，迪卢克造成的伤害提高15%。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 15.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '炙热余烬',
      'description': '迪卢克受到伤害时，攻击力提高10%，攻击速度提高5%，持续10秒。\n该效果至多叠加3次，每1.5秒只能触发一次。',
      'buff': [
        {
          'stat': Stats.AttackBonus,
          'value': 30.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '钢铁炽焰',
      'description': '逆焰之刃的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '流火焦灼',
      'description': '有节奏地释放逆焰之刃可以大幅提升造成的伤害。\n施放逆焰之刃的2秒后，使下一段逆焰之刃的伤害提高40%，持续2秒。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 40.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '昭告黎明的火之鸟',
      'description': '黎明的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '清算黑暗的炎之剑',
      'description': '施放逆焰之刃后，接下来6秒内的2次普通攻击速度提升30%，造成的伤害提高30%。\n此外，逆焰之刃不再重置普通攻击连击段数。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 30.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
      ],
      'hit': [],
    },
  },
  14: {
    Constellation.Con1: {
      'name': '连环轰隆',
      'description': '攻击与施放技能时，有几率召唤火花轰击敌人，造成相当于轰轰火花攻击伤害120%的伤害。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '破破弹片',
      'description': '蹦蹦炸弹的诡雷会使敌人的防御力降低23%，持续10秒。',
      'buff': [
        {
          'stat': Stats.DefendDecrease,
          'value': 23.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '可莉特调',
      'description': '蹦蹦炸弹的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '一触即发',
      'description': '如果在轰轰火花持续期间内退场，会引发爆炸，造成555%攻击力的火元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '范围伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 555.0,
              'extra': {},
            },
          ],
        },
      ],
    },
    Constellation.Con5: {
      'name': '轰击之星',
      'description': '轰轰火花的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '火力全开',
      'description': '在轰轰火花的状态下，可莉每3秒会为队伍中所有角色（不包括可莉自己）恢复3点元素能量；\n施放轰轰火花后的25秒内，队伍中所有角色获得10%火元素伤害加成。',
      'buff': [
        {
          'stat': Stats.EleDmgBonus,
          'value': 10.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  15: {
    Constellation.Con1: {
      'name': '赤团开时斜飞去',
      'description': '处于蝶引来生施加的彼岸蝶舞状态下时，胡桃的重击不会消耗体力。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '最不安神晴又复雨',
      'description': '血梅香造成的伤害提高，提高值相当于效果附加时胡桃生命值上限的10%。\n此外，安神秘法会为命中的敌人施加血梅香效果。',
      'buff': [
        {
          'stat': Stats.ExtraDamageByHp,
          'value': 10.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '逗留采血色',
      'description': '蝶引来生的技能等级提升3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '伴君眠花房',
      'description': '处于胡桃自己施加的血梅香状态影响下的敌人被击败时，附近的队伍中所有角色（不包括胡桃自己）的暴击率提高12%，持续15秒。',
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
    Constellation.Con5: {
      'name': '无可奈何燃花作香',
      'description': '安神秘法的技能等级提升3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '幽蝶能留一缕芳',
      'description': '胡桃的生命值降至25%以下，或承受足以使她倒下的伤害时触发：\n此次伤害不会使胡桃倒下，并在接下来的10秒内，胡桃的所有元素抗性和物理抗性提高200%，暴击率提高100%，并极大地提高抗打断能力。\n这个效果在胡桃生命值为1时会自动触发。\n该效果每60秒只能触发一次。',
      'buff': [
        {
          'stat': Stats.Resistance,
          'value': 200.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
        {
          'stat': Stats.CritRate,
          'value': 100.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  16: {
    Constellation.Con1: {
      'name': '冒险憧憬',
      'description': '美妙旅程的攻击力提升效果不再有生命值限制，数值上追加班尼特基础攻击力的20%。',
      'buff': [
        {
          'stat': Stats.AttackBonusByBaseAttack,
          'value': 20.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '踏破绝境',
      'description': '班尼特的生命值低于70%时，元素充能效率提高30%。',
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
    Constellation.Con3: {
      'name': '火热激情',
      'description': '热情过载的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '热情不灭',
      'description': '施放一段蓄力的热情过载时，在技能第二段攻击中进行普通攻击，可以施放额外的追击。\n追击的伤害等同于第二段攻击的135%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '开拓的心魂',
      'description': '美妙旅程的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '烈火与勇气',
      'description': '处在美妙旅程领域内的队伍中当前场上单手剑、双手剑、长柄武器角色获得15%火元素伤害加成，并获得火元素附魔。',
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
  },
  17: {
    Constellation.Con1: {
      'name': '外酥里嫩',
      'description': '受到锅巴攻击的敌人，火元素抗性降低15%，持续6秒。',
      'buff': [
        {
          'stat': Stats.ResistanceDecreaseElement,
          'value': 15.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '大火宽油',
      'description': '普通攻击的最后一击会对敌人施加持续2秒的内爆效果，持续时间结束时会发生爆炸，造成75%攻击力的火元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '范围伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 75.0,
              'extra': {},
            },
          ],
        },
      ],
    },
    Constellation.Con3: {
      'name': '武火急烹',
      'description': '旋火轮的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '文火慢煨',
      'description': '旋火轮的持续时间延长40%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '锅巴凶猛',
      'description': '锅巴出击的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '大龙卷旋火轮',
      'description': '旋火轮持续期间，队伍中所有角色获得15%火元素伤害加成。',
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
  },
  18: {
    Constellation.Con1: {
      'name': '一箭双丘丘！',
      'description': '瞄准射击时，会连续射出2支箭。第二支箭能造成原本20%的伤害。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '一触即发',
      'description': '兔兔伯爵进行了全新改良！蓄力完成的瞄准射击命中兔兔伯爵脚部时，能直接引爆兔兔伯爵…\n通过这种方式主动引爆兔兔伯爵时，会额外造成200%伤害。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '烧起来啦！',
      'description': '箭雨的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '才不是普通的布偶',
      'description': '爆弹玩偶的冷却时间减少20%，并增加1次可使用次数。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '是兔兔伯爵！',
      'description': '爆弹玩偶的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '疾如野火',
      'description': '使用箭雨后的10秒内，队伍中所有角色的移动速度提升15%，攻击力提升15%。',
      'buff': [
        {
          'stat': Stats.AttackBonus,
          'value': 15.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  19: {
    Constellation.Con1: {
      'name': '绝命的加速',
      'description': '辛焱造成暴击后的5秒内，普通攻击和重击的攻击速度提升12%。该效果每5秒只能触发一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '开场即兴段',
      'description': '叛逆刮弦造成的物理伤害暴击率提升100%，并会在施放时形成三级护盾·舞遍节拍。',
      'buff': [
        {
          'stat': Stats.CritRate,
          'value': 100.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillQ,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '摭分的指法',
      'description': '热情拂扫的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '节奏的传染',
      'description': '热情拂扫的挥舞伤害，会使敌人的物理抗性降低15%，持续12秒。',
      'buff': [
        {
          'stat': Stats.ResistanceDecreasePhysical,
          'value': 15.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '返场的高呼',
      'description': '叛逆刮弦的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '地狱里摇摆',
      'description': '辛焱的重击的体力消耗降低30%；此外，进行重击时，将基于防御力的50%获得攻击力加成。',
      'buff': [
        {
          'stat': Stats.AttackBonusByDefend,
          'value': 50.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Charged,
          ],
        },
      ],
      'hit': [],
    },
  },
  20: {
    Constellation.Con1: {
      'name': '占理不饶人',
      'description': '烟绯进行重击时，每持有一枚丹火印，都会提高烟绯在咏唱期间的抗打断能力，并额外降低本次重击10%的体力消耗。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '最终解释权',
      'description': '烟绯的重击对于生命值低于50%的敌人，暴击率提高20%。',
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
    Constellation.Con3: {
      'name': '真火炼宝印',
      'description': '丹书立约的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '丹书金铁券',
      'description': '施放凭此结契时：\n生成一个伤害吸收量等于生命值上限45%的护盾，持续15秒。\n该护盾对火元素伤害有250%的吸收效果。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '遵法切结书',
      'description': '凭此结契的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '是额外条款',
      'description': '烟绯持有的丹火印最大数量增加一枚。',
      'buff': [],
      'hit': [],
    },
  },
  21: {
    Constellation.Con1: {
      'name': '赤玉琉金',
      'description': '琉金云间草的琉金火光持续时间延长4秒。\n此外，处于宵宫自己的琉金火光影响下的敌人在持续期间内被击败时，宵宫的攻击力提高20%，持续20秒。',
      'buff': [
        {
          'stat': Stats.AttackBonus,
          'value': 20.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '万灯送火',
      'description': '宵宫的火元素伤害造成暴击后的6秒内，宵宫获得25%火元素伤害加成。\n宵宫处于队伍后台时，同样能获得该效果。',
      'buff': [
        {
          'stat': Stats.EleDmgBonus,
          'value': 25.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '鼠火戏法',
      'description': '焰硝庭火舞的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '花火职人心得',
      'description': '宵宫自己的琉金火光发生爆炸时，焰硝庭火舞的冷却时间减少1.2秒。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '真夏宵祭锦绘',
      'description': '琉金云间草的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '长野原龙势流星群',
      'description': '在焰硝庭火舞的持续期间内，宵宫主动进行普通攻击时，有50%几率发射一枚额外的炽焰箭，造成原本60%的伤害。该伤害视为普通攻击伤害。',
      'buff': [],
      'hit': [],
    },
  },
  22: {
    Constellation.Con1: {
      'name': '同袍的义理',
      'description': '处于托马自己的烈烧佑命护盾庇护下的角色（除了托马自己）受到攻击时，托马自己的烈烧佑命之侍护的冷却时间减少3秒，真红炽火之大铠的冷却时间减少3秒。\n该效果每20秒至多触发一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '僚佐的才巧',
      'description': '真红炽火之大铠的持续时间延长3秒。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '御敌的执定',
      'description': '烈烧佑命之侍护的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '用臣的久计',
      'description': '施放真红炽火之大铠后，为托马恢复15点元素能量。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '野火的豪烈',
      'description': '真红炽火之大铠的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '炽烧的至心',
      'description': '获取或刷新烈烧佑命护盾时，队伍中所有角色的普通攻击，重击与下落攻击造成的伤害提升15%，持续6秒。',
      'buff': [
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
  },
  23: {
    Constellation.Con1: {
      'name': '寒苦回向',
      'description': '寒病鬼差命中被度厄真符标记的敌人时，为七七恢复2点元素能量。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '冰寒蚀骨',
      'description': '对受到冰元素影响的敌人，七七的普通攻击与重击造成的伤害提升15%。',
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
    Constellation.Con3: {
      'name': '升天宝诰',
      'description': '仙法 • 救苦度厄的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '天威压众',
      'description': '被度厄真符标记的目标，攻击力下降20%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '红莲开绽',
      'description': '仙法 • 寒病鬼差的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '起死回骸',
      'description': '施放仙法 • 救苦度厄时，复苏附近队伍中所有倒下的角色，并将其生命值恢复至50%。\n该效果每15分钟只能触发一次。',
      'buff': [],
      'hit': [],
    },
  },
  24: {
    Constellation.Con1: {
      'name': '饮露',
      'description': '二段蓄力重击的霜华矢或霜华绽发命中敌人时，会使敌人的冰元素抗性降低15%，持续6秒；\n此外，命中时会为甘雨恢复2点元素能量。每次二段蓄力重击只能触发一次元素能量恢复效果，无论霜华矢或霜华绽发是否都命中目标。',
      'buff': [
        {
          'stat': Stats.ResistanceDecreaseElement,
          'value': 15.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '获麟',
      'description': '山泽麟迹的可使用次数增加1次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '云行',
      'description': '降众天华的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '西狩',
      'description': '在降众天华的领域内，敌人受到的伤害会增加，这个效果会随时间逐步加强。\n受伤害加成初始为5%，每3秒提升5%，至多提升至25%。\n离开领域后，效果至多持续3秒。',
      'buff': [
        {
          'stat': Stats.DmgBonusExtra,
          'value': 25.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '折草',
      'description': '山泽麟迹的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '履虫',
      'description': '施放山泽麟迹后30秒内的第一次霜华矢，无需蓄力即可施放。',
      'buff': [],
      'hit': [],
    },
  },
  25: {
    Constellation.Con1: {
      'name': '光潮的幻象',
      'description': '消耗冰潮的涡旋的冷酷之心效果后，优菈的物理伤害加成提高30%，持续6秒，\n每消耗一层冷酷之心，都会使这个效果的持续时间延长6秒，最多不会超过18秒。',
      'buff': [
        {
          'stat': Stats.PhyDmgBonus,
          'value': 30.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '海沫的少女',
      'description': '缩短冰潮的涡旋长按的冷却时间，使其降低至与点按的冷却时间相同。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '劳伦斯的血脉',
      'description': '凝浪之光剑的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '自卑者的逞强',
      'description': '对生命值低于50%的敌人，光降之剑造成的伤害提高25%。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 25.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillQSpecial,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '骑士的素质',
      'description': '冰潮的涡旋的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '高贵者的义务',
      'description': '凝浪之光剑创造的光降之剑立即获得5层能量。普通攻击、元素战技或元素爆发造成伤害使其积蓄能量层数时，有50%的概率额外获得一层。',
      'buff': [],
      'hit': [],
    },
  },
  26: {
    Constellation.Con1: {
      'name': '释凌咏冰',
      'description': '普通攻击的最后一击会向前方释放三道冰之刃，每道冰之刃对沿途的敌人造成重云50%攻击力的冰元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '冰元素伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 50.0,
              'extra': {},
            },
          ],
        },
      ],
    },
    Constellation.Con2: {
      'name': '周天运转',
      'description': '在灵刃 • 重华叠霜领域内施放的元素战技与元素爆发的冷却时间减少15%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '云尽光生',
      'description': '灵刃 • 云开星落的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '浮云霜天',
      'description': '重云的所有攻击命中受到冰元素影响的敌人时，自身将恢复1点元素能量。\n该效果每2秒最多触发一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '真道正理',
      'description': '灵刃 • 重华叠霜的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '四灵捧圣',
      'description': '灵刃 • 云开星落对生命值百分比低于重云的敌人造成伤害时，伤害提升15%；\n此外，施放时，会召唤一柄额外的灵刃。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 15.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillQ,
          ],
        },
      ],
      'hit': [],
    },
  },
  27: {
    Constellation.Con1: {
      'name': '特调的余韵',
      'description': '最烈特调的效果结束时，为迪奥娜恢复15点元素能量。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '猫爪冰摇',
      'description': '猫爪冻冻造成的伤害提高15%，护盾的伤害吸收量提高15%；\n此外，命中时，将为附近的当前其他场上角色生成一个伤害吸收量为猫爪冻冻50%的护盾，持续5秒。',
      'buff': [
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
    Constellation.Con3: {
      'name': '还、还要续杯？',
      'description': '最烈特调的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '「酒业杀手」',
      'description': '在最烈特调的领域内，迪奥娜的瞄准射击的所需的蓄力时间减少60%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '双份加冰',
      'description': '猫爪冻冻的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '猫尾打烊之时',
      'description': '处在最烈特调领域内的角色，依据生命值获得如下效果：\n• 生命值低于或等于50%时，受治疗加成提升30%；\n• 生命值高于50%时，元素精通提升200。',
      'buff': [
        {
          'stat': Stats.Mastery,
          'value': 200.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  28: {
    Constellation.Con1: {
      'name': '卓越的血脉',
      'description': '对受到冰元素影响的敌人，凯亚的普通攻击与重击暴击率提升15%。',
      'buff': [
        {
          'stat': Stats.CritRate,
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
    Constellation.Con2: {
      'name': '无尽的霜舞',
      'description': '在凛冽轮舞的持续时间内击败敌人时，持续时间延长2.5秒，最多不会超过15秒。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '凛冽的冰戏',
      'description': '霜袭的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '极寒的轻吻',
      'description': '凯亚的生命值低于20%时自动触发：\n生成一个伤害吸收量等于生命值上限30%的护盾，持续20秒。\n该护盾对冰元素伤害有250%的吸收效果。\n该效果每60秒只能触发一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '至冷的拥抱',
      'description': '凛冽轮舞的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '轮旋的冰凌',
      'description': '凛冽轮舞会产生一个额外的寒冰之棱，并在施放时返还15点元素能量。',
      'buff': [],
      'hit': [],
    },
  },
  29: {
    Constellation.Con1: {
      'name': '罪之导引',
      'description': '罗莎莉亚的攻击造成暴击后，自身攻击速度提升10%，普通攻击造成的伤害提升10%，持续4秒。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 10.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '无福之地',
      'description': '终命的圣礼创造的冰枪持续时间延长4秒。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '告解之仪',
      'description': '噬罪的告解的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '苦痛恩典',
      'description': '噬罪的告解造成暴击时，为罗莎莉亚自己恢复5点元素能量。\n每次噬罪的告解至多触发1次该效果。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '临终祈礼',
      'description': '终命的圣礼的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '代行裁判',
      'description': '终命的圣礼的攻击会使敌人的物理抗性降低20%，持续10秒。',
      'buff': [
        {
          'stat': Stats.ResistanceDecreasePhysical,
          'value': 20.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  30: {
    Constellation.Con1: {
      'name': '霜杀墨染樱',
      'description': '神里绫华的普通攻击或重击对敌人造成冰元素伤害时，有50%的几率使神里流 • 冰华的冷却时间缩减0.3秒。该效果每0.1秒只能触发一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '三重雪关扉',
      'description': '施放神里流 • 霜灭时，会额外释放两股规模较小的霜见雪关扉，各自能造成原本20%的伤害。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '花白锦画纸吹雪',
      'description': '神里流 • 霜灭的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '盈缺流返',
      'description': '敌人受到神里流 • 霜灭的霜见雪关扉造成的伤害后，防御力降低30%，持续6秒。',
      'buff': [
        {
          'stat': Stats.DefendDecrease,
          'value': 30.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '花云钟入月',
      'description': '神里流 • 冰华的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '间水月',
      'description': '每过10秒，神里绫华会获得「薄冰舞踏」，使重击造成的伤害提高298%。薄冰舞踏效果将在重击命中敌人的0.5秒后清除，并重新开始计算时间。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 298.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Charged,
          ],
        },
      ],
      'hit': [],
    },
  },
  31: {
    Constellation.Con1: {
      'name': '异界之星',
      'description': '点亮此人一方星空之刻尚未到来。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '异界之星',
      'description': '点亮此人一方星空之刻尚未到来。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '异界之星',
      'description': '点亮此人一方星空之刻尚未到来。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '异界之星',
      'description': '点亮此人一方星空之刻尚未到来。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '异界之星',
      'description': '点亮此人一方星空之刻尚未到来。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '异界之星',
      'description': '点亮此人一方星空之刻尚未到来。',
      'buff': [],
      'hit': [],
    },
  },
  32: {
    Constellation.Con1: {
      'name': '雷厉',
      'description': '雷楔存在期间再次施放星斗归位时，在刻晴消失与出现的位置造成50%攻击力的雷元素范围伤害。',
      'buff': [],
      'hit': [
        {
          'name': '范围伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 50.0,
              'extra': {},
            },
          ],
        },
      ],
    },
    Constellation.Con2: {
      'name': '苛捐',
      'description': '刻晴普通攻击与重击命中受到雷元素影响的敌人时，有50%几率产生一个元素微粒。\n该效果每5秒只能触发一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '登楼',
      'description': '天街巡游的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '调律',
      'description': '刻晴触发雷元素相关反应后的10秒内，攻击力提升25%。',
      'buff': [
        {
          'stat': Stats.AttackBonus,
          'value': 25.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '移灯',
      'description': '星斗归位的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '廉贞',
      'description': '进行普通攻击、重击、施放元素战技或元素爆发时，刻晴获得6%雷元素伤害加成，持续8秒。\n由普通攻击、重击、元素战技或元素爆发引起的效果分别独立存在。',
      'buff': [
        {
          'stat': Stats.EleDmgBonus,
          'value': 24.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  33: {
    Constellation.Con1: {
      'name': '幽邃鸦眼',
      'description': '奥兹不在战场上时，也会透过鸦眼守望菲谢尔。在菲谢尔对敌人进行普通攻击时，奥兹会通过鸦眼协同攻击，造成22%攻击力的伤害。',
      'buff': [],
      'hit': [
        {
          'name': '协同攻击',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Physical,
          'value': [
            {
              'value': 22.0,
              'extra': {},
            },
          ],
        },
      ],
    },
    Constellation.Con2: {
      'name': '圣裁影羽',
      'description': '施放夜巡影翼时，能额外造成200%攻击力的伤害，并使影响范围扩大50%。',
      'buff': [],
      'hit': [
        {
          'name': '额外伤害',
          'damageType': DamageType.SkillE,
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
    Constellation.Con3: {
      'name': '渊色黑翼',
      'description': '夜巡影翼的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '皇女幻绮谭',
      'description': '施放至夜幻现时，会对周围的敌人造成222%攻击力的雷元素伤害；\n技能效果结束时，会为菲谢尔恢复20%生命值。',
      'buff': [],
      'hit': [
        {
          'name': '雷元素伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 222.0,
              'extra': {},
            },
          ],
        },
      ],
    },
    Constellation.Con5: {
      'name': '至夜默示录',
      'description': '至夜幻现的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '永夜之禽',
      'description': '奥兹的存在时间延长2秒。此外，奥兹会协同当前场上自己的角色一起攻击，造成菲谢尔30%攻击力的雷元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '协同攻击',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 30.0,
              'extra': {},
            },
          ],
        },
      ],
    },
  },
  34: {
    Constellation.Con1: {
      'name': '鱼龙沉四方',
      'description': '施放斫雷时：\n生成一个伤害吸收量等于生命值上限16%的护盾，持续15秒。\n该护盾对雷元素伤害有250%的吸收效果。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '赫赫雷涌起',
      'description': '斫雷的闪雷能额外弹跳2个敌人。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '潮奔蓦引电',
      'description': '捉浪的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '牵星觅乡岸',
      'description': '受到攻击后的10秒内，北斗的普通攻击附带20%额外雷元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '额外伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 20.0,
              'extra': {},
            },
          ],
        },
      ],
    },
    Constellation.Con5: {
      'name': '踏浪霞连阶',
      'description': '斫雷的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '北斗祓幽孽',
      'description': '斫雷持续期间，周围敌人的雷元素抗性降低15%。',
      'buff': [
        {
          'stat': Stats.ResistanceDecreaseElement,
          'value': 15.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  35: {
    Constellation.Con1: {
      'name': '狼性',
      'description': '雷泽获取元素晶球或元素微粒后的8秒内，造成的伤害提高10%。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 10.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '压制',
      'description': '雷泽攻击生命值低于30%的敌人时，暴击率提高10%。',
      'buff': [
        {
          'stat': Stats.CritRate,
          'value': 10.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '兽魂',
      'description': '雷牙的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '撕咬',
      'description': '利爪与苍雷点按时，会使命中的敌人防御力降低15%，持续7秒。',
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
    Constellation.Con5: {
      'name': '利爪',
      'description': '利爪与苍雷的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '天狼',
      'description': '每10秒，雷泽的大剑将自动充能，使下一次普通攻击引发落雷，造成100%攻击力的雷元素伤害。\n不处于雷牙状态下时，若落雷击中敌人，会为雷泽积攒一个利爪与苍雷的雷之印。',
      'buff': [],
      'hit': [
        {
          'name': '落雷伤害',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 100.0,
              'extra': {},
            },
          ],
        },
      ],
    },
  },
  36: {
    Constellation.Con1: {
      'name': '无限的电回路',
      'description': '苍雷长按时，每个命中的敌人都会为丽莎恢复2点元素能量。\n通过这种方式，一次至多回复10点元素能量。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '空间电势结界',
      'description': '苍雷长按时，具有如下效果：\n• 防御力提升25%；\n• 提高丽莎的抗打断能力。',
      'buff': [
        {
          'stat': Stats.DefendBonus,
          'value': 25.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '谐振的雷光',
      'description': '蔷薇的雷光的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '如雨的电浆',
      'description': '蔷薇的雷光攻击时，放出的闪电增加至1~3道。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '等离态的落雷',
      'description': '苍雷的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '脉冲的魔女',
      'description': '丽莎登场时，对附近的敌人施加3层苍雷的引雷效果。\n该效果每5秒只能触发一次。',
      'buff': [],
      'hit': [],
    },
  },
  37: {
    Constellation.Con1: {
      'name': '丰穰的春雷',
      'description': '施放雷影剑能产生的丰穰勾玉数量提升至3枚。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '震怒的苍雷',
      'description': '雷轰电转的威光落雷命中敌人后，会使敌人的雷元素抗性降低15%，持续8秒。',
      'buff': [
        {
          'stat': Stats.ResistanceDecreaseElement,
          'value': 15.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '连延的远雷',
      'description': '雷轰电转的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '难测的云雷',
      'description': '角色获取雷影剑产生的丰穰勾玉时，若该角色的当前元素能量低于35%，丰穰勾玉恢复的元素能量提高100%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '荒野的霆雷',
      'description': '雷影剑的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '撼世的神雷',
      'description': '雷轰电转每引发2次威光落雷，则大幅增强下一次威光落雷，造成原本200%的伤害，并为当前角色额外恢复1点元素能量。',
      'buff': [],
      'hit': [],
    },
  },
  38: {
    Constellation.Con1: {
      'name': '恶曜卜词',
      'description': '诸愿百眼之轮能更加迅速地积攒愿力。元素类型为雷元素的角色施放元素爆发后，积攒的愿力提升80%；其他元素类型的角色施放元素爆发后，积攒的愿力提升20%',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '斩铁断金',
      'description': '奥义 • 梦想真说的梦想一刀与梦想一心状态下的雷电将军的攻击将无视敌人60%的防御力。',
      'buff': [
        {
          'stat': Stats.DefendDecrease,
          'value': 60.0,
          'buffType': BuffType.DebuffForEnemy,
          'damageType': [
            DamageType.SkillQ,
            DamageType.SkillQSpecial,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '真影旧事',
      'description': '奥义 • 梦想真说的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '誓奉常道',
      'description': '奥义 • 梦想真说施加的梦想一心状态结束后，附近的队伍中所有角色（不包括雷电将军自己）的攻击力提升30%，持续10秒。',
      'buff': [
        {
          'stat': Stats.AttackBonus,
          'value': 30.0,
          'buffType': BuffType.BuffForTeamWithoutMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '凶将显形',
      'description': '神变 • 恶曜开眼的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '负愿前行',
      'description': '处于奥义 • 梦想真说施加的梦想一心状态下时，雷电将军的元素爆发伤害命中敌人时，使附近的队伍中所有角色（不包括雷电将军自己）元素爆发的冷却时间缩短1秒。\n该效果每1秒至多触发一次，在持续期间内至多触发5次。',
      'buff': [],
      'hit': [],
    },
  },
  39: {
    Constellation.Con1: {
      'name': '乌眼',
      'description': '天狗咒雷为角色施加攻击力提升效果或命中敌人后，鸦羽天狗霆雷召咒的冷却时间减少1秒。\n该效果每3秒至多触发一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '鸦羽',
      'description': '施放鸦羽天狗霆雷召咒时，会在九条裟罗原本的位置留下能引发一次较弱的天狗咒雷 • 伏的「乌羽」，造成原本30%的伤害。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '心魔',
      'description': '煌煌千道镇式的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '彻证',
      'description': '煌煌千道镇式释放的天狗咒雷 • 雷砾增加至6道。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '咒咏',
      'description': '鸦羽天狗霆雷召咒的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '我界',
      'description': '处于天狗咒雷带来的攻击力提升效果状态下的角色，其雷元素伤害的暴击伤害提高60%。',
      'buff': [
        {
          'stat': Stats.CritDmg,
          'value': 60.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  40: {
    Constellation.Con1: {
      'name': '岩者，六合引之为骨',
      'description': '地心创造的岩脊至多可以同时存在2个。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '石者，八荒韫玉而明',
      'description': '天星陨落时，会为附近的当前场上角色赋予玉璋护盾。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '圭璋，暝仍不移其晖',
      'description': '地心的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '黄琮，破而不夺其坚',
      'description': '天星的影响范围扩大20%。\n此外，天星的石化效果持续时间延长2秒。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '苍璧，驱之长昭天理',
      'description': '天星的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '金玉，礼予天地四方',
      'description': '玉璋护盾受到伤害时，将为当前角色恢复生命值，回复量为伤害的40%。\n单次回复量不超过当前角色最大生命值的8%。',
      'buff': [],
      'hit': [],
    },
  },
  41: {
    Constellation.Con1: {
      'name': '伊甸之花',
      'description': '阿贝多的创生法 • 拟造阳华生成的刹那之花绽放时，为阿贝多自己回复1.2点元素能量。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '显生之宙',
      'description':
          '创生法 • 拟造阳华的刹那之花绽放时，会为阿贝多赋予生灭计数效果，持续30秒：\n• 施放诞生式 • 大地之潮时，清除所有生灭计数效果，并根据清除的层数，提高诞生式 • 大地之潮的爆发伤害与生灭之花造成的伤害；\n• 每层生灭计数，会提高等同于阿贝多防御力的30%的伤害；\n• 该效果至多叠加4次。',
      'buff': [],
      'hit': [
        {
          'name': '每层伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 0.0,
              'extra': {
                Stats.ExtraDamageByDefend: 30.0,
              },
            },
          ],
        },
      ],
    },
    Constellation.Con3: {
      'name': '太阳之华',
      'description': '创生法 • 拟造阳华的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '神性之陨',
      'description': '处于阳华的领域中的队伍中当前场上角色，造成的下落攻击伤害提高30%。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 30.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.Plunging,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '冥古之潮',
      'description': '诞生式 • 大地之潮的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '无垢之土',
      'description': '处在阳华的领域中的队伍中当前场上角色，若处于结晶反应产生的护盾庇护下，造成的伤害提高17%。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 17.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  42: {
    Constellation.Con1: {
      'name': '巍然的青岩',
      'description': '队伍中角色处于岩潮叠嶂的岩嶂包围中时，暴击率提升10%，并提高抗打断能力。',
      'buff': [
        {
          'stat': Stats.CritRate,
          'value': 10.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '不稳的熔岩',
      'description': '星陨剑的荒星被摧毁时会再度发生爆炸，造成等同于星陨剑伤害的额外岩元素范围伤害。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '八方之岩',
      'description': '岩潮叠嶂的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '险峻的重岩',
      'description': '岩潮叠嶂引发的震荡波每击中一个敌人，都会恢复5点元素能量。\n通过这种方式，一次至多恢复25点元素能量。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '天坠之岩',
      'description': '星陨剑的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '永世的磐岩',
      'description': '岩潮叠嶂的岩嶂持续时间延长5秒；\n星陨剑的荒星持续时间延长10秒。',
      'buff': [],
      'hit': [],
    },
  },
  43: {
    Constellation.Con1: {
      'name': '悬星尽散击云碎',
      'description': '普通攻击命中时，会造成范围伤害。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '璇玑合璧镇昆仑',
      'description': '璇玑屏碎裂时，会清除冷却时间。\n该效果每6秒只能触发一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '星罗宿列天权临',
      'description': '天权崩玉的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '攻守易形著神机',
      'description': '璇玑屏会使周围角色的所有元素抗性提升10%。',
      'buff': [
        {
          'stat': Stats.Resistance,
          'value': 10.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '琼屏千扇正天衡',
      'description': '璇玑屏的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '七星璨璨凝流光',
      'description': '施放天权崩玉时，会为凝光生成七枚星璇。',
      'buff': [],
      'hit': [],
    },
  },
  44: {
    Constellation.Con1: {
      'name': '支援就交给我吧',
      'description': '同时处于大扫除与护心铠状态时，护心铠的生命值回复效果触发几率提升至100%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '旋风女仆',
      'description': '诺艾尔的重击的体力消耗降低20%，伤害提升15%。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 15.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Charged,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '女仆不会受伤',
      'description': '护心铠的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '之后会扫干净的',
      'description': '护心铠在效果结束时，或因伤害破碎时，会对周围的敌人造成400%攻击力的岩元素伤害。',
      'buff': [],
      'hit': [
        {
          'name': '岩元素伤害',
          'damageType': DamageType.SkillE,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 400.0,
              'extra': {},
            },
          ],
        },
      ],
    },
    Constellation.Con5: {
      'name': '骑士团扫除专家',
      'description': '大扫除的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '要一尘不染才行',
      'description': '大扫除额外提高诺艾尔防御力50%的攻击力；\n此外，在技能持续时间内，每打倒1个敌人，其持续时间将延长1秒，最多不会超过10秒。',
      'buff': [
        {
          'stat': Stats.AttackBonusByDefend,
          'value': 50.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  45: {
    Constellation.Con1: {
      'name': '犬奔·疾如风',
      'description': '处于五郎自己的大将旗指物或大将威仪领域中的当前场上角色（除了五郎自己）对敌人造成岩元素伤害后，五郎自己的犬坂吠吠方圆阵冷却时间减少2秒。\n该效果每10秒至多触发一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '犬坐·稳如钟',
      'description': '在大将威仪的持续期间，附近的当前场上角色获取结晶反应产生的晶片后，五郎自己的大将威仪的持续时间延长1秒。\n该效果每0.1秒至多触发一次，至多通过这种方式延长3秒持续时间。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '犬爪·势如火',
      'description': '犬坂吠吠方圆阵的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '犬舐·温如水',
      'description': '大将威仪在具有「难破」或「摧碎」的效果时，每1.5秒，为领域内的当前场上角色恢复生命值，回复量相当于五郎自己防御力的50%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '犬突·动如雷',
      'description': '兽牙逐突形胜战法的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '犬勇·忠如山',
      'description': '施放犬坂吠吠方圆阵或兽牙逐突形胜战法后的12秒内，依据施放时的领域等级，提高附近的队伍中所有角色岩元素伤害的暴击伤害：\n• 「坚牢」：提高10%；\n• 「难破」：提高20%；\n• 「摧碎」：提高40%。\n该效果无法叠加，以后生效的为准。',
      'buff': [
        {
          'stat': Stats.CritDmg,
          'value': 40.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  46: {
    Constellation.Con1: {
      'name': '倘若不知，我讲你听',
      'description': '施放最恶鬼王 • 一斗轰临！！后，荒泷一斗获得2层「乱神之怪力」效果。1秒后，荒泷一斗每0.5秒再获得1层「乱神之怪力」效果，持续1.5秒。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '纠集众人，斗倒御岳',
      'description': '施放最恶鬼王 • 一斗轰临！！后，队伍中每个元素类型为岩元素的角色，都将使其冷却时间减少1.5秒，使荒泷一斗的元素能量恢复6点。\n通过这种方式，至多减少4.5秒冷却时间，恢复18点元素能量。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '水陆自在，牛王同行',
      'description': '魔杀绝技 • 赤牛发破！的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '奉行牢狱，茶饭之所',
      'description': '最恶鬼王 • 一斗轰临！！施加的「怒目鬼王」状态结束后，附近的队伍中所有角色的防御力提升20%，攻击力提升20%，持续10秒。',
      'buff': [
        {
          'stat': Stats.AttackBonus,
          'value': 20.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
        {
          'stat': Stats.DefendBonus,
          'value': 20.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '十年花坂，皆知我名',
      'description': '最恶鬼王 • 一斗轰临！！的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '在下荒泷一斗是也',
      'description': '荒泷一斗的重击的暴击伤害提高70%；此外，施展「荒泷逆袈裟」时，有50%的几率不消耗「乱神之怪力」。',
      'buff': [
        {
          'stat': Stats.CritDmg,
          'value': 70.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Charged,
          ],
        },
      ],
      'hit': [],
    },
  },
  47: {
    Constellation.Con1: {
      'name': '心斋',
      'description': '仰灵威召将役咒的可使用次数增加1次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '定蒙',
      'description': '神女遣灵真诀的持续时间延长6秒。领域中的当前场上角色，冰元素伤害的暴击伤害提高15%。',
      'buff': [
        {
          'stat': Stats.CritDmg,
          'value': 15.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '潜虚',
      'description': '仰灵威召将役咒的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '洞观',
      'description': '处于申鹤自己施加的「冰翎」状态下的角色，触发「冰翎」的伤害增加时，申鹤将获得一层「霜霄诀」：\n• 申鹤施放仰灵威召将役咒时，将清除所有「霜霄诀」，并根据清除的层数，每层使本次仰灵威召将役咒造成的伤害提高5%；\n• 该效果至多叠加50次，持续60秒。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 100.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '化神',
      'description': '神女遣灵真诀的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '忘玄',
      'description': '角色通过普通攻击伤害与重击伤害触发「冰翎」的效果时，将不再会减少「冰翎」的生效次数。',
      'buff': [],
      'hit': [],
    },
  },
  48: {
    Constellation.Con1: {
      'name': '飞身趟马',
      'description': '旋云开相的冷却时间减少18%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '诸般切末',
      'description': '施放破嶂见旌仪后，附近队伍中所有角色普通攻击造成的伤害提升15%，持续12秒。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 15.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.Normal,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '牙纛探海',
      'description': '破嶂见旌仪的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '昇堂吊云',
      'description': '云堇触发结晶反应后，防御力提升20%，持续12秒。',
      'buff': [
        {
          'stat': Stats.DefendBonus,
          'value': 20.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '翘楚名坤',
      'description': '旋云开相的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '庄谐并举',
      'description': '处于「飞云旗阵」状态下的角色，普通攻击的攻击速度提升12%。',
      'buff': [],
      'hit': [],
    },
  },
  49: {
    Constellation.Con1: {
      'name': '野狐供真篇',
      'description': '大密法 • 天狐显真每引发一次天狐霆雷，都会为八重神子自己恢复8点元素能量。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '望月吼哕声',
      'description': '杀生樱创造时的初始位阶提升至贰阶，位阶上限提升至肆阶，攻击范围提升60%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '七段妙变化',
      'description': '野干役咒 • 杀生樱的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '绯樱引雷章',
      'description': '杀生樱的落雷命中敌人后，队伍中附近的所有角色获得20%雷元素伤害加成，持续5秒。',
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
    Constellation.Con5: {
      'name': '暴恶嗤笑面',
      'description': '大密法 • 天狐显真的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '大杀生咒禁',
      'description': '杀生樱在攻击时无视敌人60%的防御力。',
      'buff': [
        {
          'stat': Stats.DefendDecrease,
          'value': 60.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
      ],
      'hit': [],
    },
  },
  50: {
    Constellation.Con1: {
      'name': '镜华风姿',
      'description': '对于生命值低于或等于50%的敌人，瞬水剑造成的伤害提升40%。',
      'buff': [
        {
          'stat': Stats.EleDmgBonus,
          'value': 40.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Normal,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '世有源泉',
      'description': '浪闪叠加上限提升至5层；神里绫人处于至少3层浪闪状态下时，将提升50%生命值上限。',
      'buff': [
        {
          'stat': Stats.HpBonus,
          'value': 50.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '无意弄花',
      'description': '神里流 • 镜花的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '不厌细流',
      'description': '施放神里流 • 水囿后，队伍中附近的角色普通攻击的攻击速度提升15%，持续15秒。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '万水一露',
      'description': '神里流 • 水囿的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '滥觞无底',
      'description': '施放神里流 • 镜花之后，神里绫人的下一次瞬水剑攻击命中敌人时，将进行2次额外的瞬水剑攻击，各自能造成神里绫人攻击力450%的伤害。\n此两次瞬水剑攻击不会受到浪闪的增益。',
      'buff': [],
      'hit': [
        {
          'name': '额外攻击',
          'damageType': DamageType.Normal,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 450.0,
              'extra': {},
            },
          ],
        },
      ],
    },
  },
  51: {
    Constellation.Con1: {
      'name': '与谋者，以局入局',
      'description': '萦络纵命索的可使用次数增加1次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '入彀者，多多益善',
      'description': '「玄掷玲珑」协同攻击时，会发射一枚额外的水箭，造成相当于夜兰生命值上限14%的水元素伤害。\n该效果每1.8秒至多触发一次。',
      'buff': [],
      'hit': [
        {
          'name': '水箭伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 0.0,
              'extra': {
                Stats.ExtraDamageByHp: 14.0,
              },
            },
          ],
        },
      ],
    },
    Constellation.Con3: {
      'name': '晃盅者，琼畟药骰',
      'description': '渊图玲珑骰的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '诓惑者，接树移花',
      'description': '依照「络命丝」标记敌人的数量，每次标记将在爆发时使队伍中所有角色的生命值上限提升10%，持续25秒。通过这种方式，生命值上限至多获得40%提升。',
      'buff': [
        {
          'stat': Stats.HpBonus,
          'value': 40.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '坐庄者，三仙戏法',
      'description': '萦络纵命索的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '取胜者，大小通吃',
      'description': '施放渊图玲珑骰后，夜兰将进入「运筹帷幄」状态：\n夜兰的普通攻击将转为发射特殊的「破局矢」。这种箭矢具有与破局矢近似的特性，造成的伤害视为重击伤害，能造成破局矢156%的伤害。\n「运筹帷幄」状态至多持续20秒，将在夜兰发射5枚箭矢后移除。',
      'buff': [],
      'hit': [],
    },
  },
  52: {
    Constellation.Con1: {
      'name': '割舍怜悯之心',
      'description': '御咏鸣神刈山祭的影响范围提升50%。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '割舍侥幸之心',
      'description': '越祓草轮的持续时间延长3秒。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '割舍痛苦之心',
      'description': '越祓雷草之轮的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '割舍封闭之心',
      'description': '处于久岐忍自己的越祓草轮状态下的角色，在普通攻击、重击或下落攻击命中敌人时，雷草标将落在敌人所在的位置，基于久岐忍生命值上限的9.7%，造成雷元素范围伤害。\n该效果每5秒至多触发一次。',
      'buff': [],
      'hit': [
        {
          'name': '雷元素范围伤害',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 0.0,
              'extra': {
                Stats.ExtraDamageByHp: 9.7,
              },
            },
          ],
        },
      ],
    },
    Constellation.Con5: {
      'name': '割舍逢迎之心',
      'description': '御咏鸣神刈山祭的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '割舍软弱之心',
      'description': '久岐忍承受足以使她倒下的伤害时，此次伤害不会使她倒下，这个效果在久岐忍生命值为1时会自动触发，该效果每60秒只能触发一次。\n久岐忍生命值降至25%以下时，会提升自身150点精通，持续15秒，该效果每60秒只能触发一次。',
      'buff': [
        {
          'stat': Stats.Mastery,
          'value': 150.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
  },
  53: {
    Constellation.Con1: {
      'name': '称名少年事件簿',
      'description': '鹿野院平藏登场后的5秒内，普通攻击的攻击速度提升15%，并获得1层勠心拳的「变格」效果，该效果每10秒最多触发一次。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '殊解诸因探案集',
      'description': '聚风蹴产生的缉拿风穴的牵引效果获得提升，并将持续时间延长至1秒。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '暗文隐语谜题册',
      'description': '勠心拳的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '虚言假说百物语',
      'description': '在一次聚风蹴中，「聚风真眼」在第一次爆发后，将为鹿野院平藏恢复9点元素能量，此后每次爆发，都将分别为鹿野院平藏额外恢复1.5点元素能量，\n一次聚风蹴，至多通过这种方式为鹿野院平藏恢复13.5点元素能量。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '禁室密所大图鉴',
      'description': '聚风蹴的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '奇想天开捕物帐',
      'description': '施放勠心拳时，每层「变格」都将为本次勠心拳提升4%暴击率。拥有「正论」时，本次勠心拳的暴击伤害将提升32%。',
      'buff': [
        {
          'stat': Stats.CritRate,
          'value': 16.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
        {
          'stat': Stats.CritDmg,
          'value': 32.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.SkillE,
          ],
        },
      ],
      'hit': [],
    },
  },
  54: {
    Constellation.Con1: {
      'name': '由根须断定肇始',
      'description': '提纳里重击的暴击率提高15%。',
      'buff': [
        {
          'stat': Stats.CritRate,
          'value': 15.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.Charged,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '由茎干剖析来缘',
      'description': '当识果种雷的识蕴领域中存在敌人时，提纳里获得20%草元素伤害加成。\n识蕴领域持续时间结束或其中不存在敌人后，该效果至多持续6秒。',
      'buff': [
        {
          'stat': Stats.DmgBonus,
          'value': 20.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '由枝节知晓造化',
      'description': '造生缠藤箭的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '由片叶管窥枯荣',
      'description': '施放造生缠藤箭时，队伍中附近的所有角色的元素精通提升60点，持续8秒。若造生缠藤箭触发了燃烧、绽放、原激化或蔓激化反应，元素精通将进一步提升60点，并刷新该状态的持续时间。',
      'buff': [
        {
          'stat': Stats.Mastery,
          'value': 60.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
        {
          'stat': Stats.Mastery,
          'value': 60.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '由繁花明了悟觉',
      'description': '识果种雷的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '由硕实品论应果',
      'description': '花筥箭所需的蓄力时间减少0.9秒，并在命中后能产生1枚额外的藏蕴花矢，能造成提纳里攻击力150%的伤害。',
      'buff': [],
      'hit': [
        {
          'name': '藏蕴花矢',
          'damageType': DamageType.Charged,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 150.0,
              'extra': {},
            },
          ],
        },
      ],
    },
  },
  55: {
    Constellation.Con1: {
      'name': '巡护深林',
      'description': '柯莱处于队伍后台时，元素充能效率提升20%。',
      'buff': [
        {
          'stat': Stats.Recharge,
          'value': 20.0,
          'buffType': BuffType.BuffForMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '漫行山薮',
      'description':
          '固有天赋「飞叶迴斜」转变为：\n飞叶轮返回时，将为角色赋予固有天赋「飞叶迴斜」的「新叶」状态，持续对身边的敌人造成相当于柯莱攻击力40%的草元素伤害，持续3秒。\n从施放拂花偈叶开始，到此次新叶状态消失前，如果队伍中自己的角色触发了燃烧、原激化、超激化、蔓激化、绽放、超绽放或烈绽放反应，则使此次新叶效果的持续时间延长3秒。\n新叶效果至多通过这种方式延长一次持续时间；在持续期间再次产生新叶效果时，将移除原有的效果。新叶效果造成的伤害视为元素战技伤害。\n需要解锁固有天赋「飞叶迴斜」',
      'buff': [],
      'hit': [],
    },
    Constellation.Con3: {
      'name': '夏堇芳菲',
      'description': '拂花偈叶的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '骞林馈遗',
      'description': '施放猫猫秘宝时，将使队伍中附近的所有角色（不包括柯莱自己）的元素精通提升60点，持续12秒。',
      'buff': [
        {
          'stat': Stats.Mastery,
          'value': 60.0,
          'buffType': BuffType.BuffForTeamWithoutMe,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '俱象残火',
      'description': '猫猫秘宝的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '坠镞为林',
      'description': '飞叶轮命中时，会产生一个迷你柯里安巴，造成相当于柯莱攻击力200%的草元素伤害。\n每次施放拂花偈叶至多产生1次迷你柯里安巴。',
      'buff': [],
      'hit': [
        {
          'name': '迷你柯里安巴',
          'damageType': DamageType.SkillE,
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
  },
  56: {
    Constellation.Con1: {
      'name': '追加投资',
      'description': '断除烦恼炮命中后产生的售后服务弹增加1枚。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con2: {
      'name': '特许经营',
      'description': '在战斗状态中，当灯中幽精为相连的角色进行治疗时，将从该角色处发射一枚镇灵炮，造成相当于多莉攻击力50%的伤害。',
      'buff': [],
      'hit': [
        {
          'name': '镇灵炮',
          'damageType': DamageType.SkillQ,
          'elementType': SkillElementType.Element,
          'value': [
            {
              'value': 50.0,
              'extra': {},
            },
          ],
        },
      ],
    },
    Constellation.Con3: {
      'name': '百巧千奇',
      'description': '卡萨扎莱宫的无微不至的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con4: {
      'name': '酌盈剂虚',
      'description': '与灯中幽精相连的角色，依据当前的生命值与元素能量，获得以下提升：\n·生命值低于50%时，提升50%受治疗加成；\n·元素能量低于50%时，提升30%元素充能效率。',
      'buff': [
        {
          'stat': Stats.Recharge,
          'value': 30.0,
          'buffType': BuffType.BuffForTeam,
          'damageType': [
            DamageType.All,
          ],
        },
      ],
      'hit': [],
    },
    Constellation.Con5: {
      'name': '物超所值',
      'description': '镇灵之灯·烦恼解决炮的技能等级提高3级。\n至多提升至15级。',
      'buff': [],
      'hit': [],
    },
    Constellation.Con6: {
      'name': '漫掷万镒',
      'description': '多莉施放镇灵之灯·烦恼解决炮后的3秒内，将获得以下效果：\n·雷元素附魔；\n·普通攻击命中敌人时，为队伍中附近的所有角色恢复相当于多莉生命值上限4%的生命值，每0.1秒至多通过这种方式恢复一次生命值。',
      'buff': [],
      'hit': [],
    },
  },
};
