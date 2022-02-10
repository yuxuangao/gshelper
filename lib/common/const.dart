import '../data/data.dart';

class Const {
  static const TITLE = "原神工具";
  static const TITLE_ARTIFACT = "圣遗物词条数计算";
  static const TITLE_DAMAGE = '伤害计算器';
  static const TITLE_MY_CHARACTER = '我的角色';
  static const TITLE_MY_CHARACTER_EDIT = '编辑角色';
  static const TITLE_MY_CHARACTER_ADD = '添加角色';
  static const TITLE_MY_CHARACTER_DAMAGE = '伤害模拟';
  static const TITLE_MY_ARTIFACT = '圣遗物';
  static const TITLE_ARTIFACT_DETAIL = "圣遗物详情";
  static const TITLE_WEAPON_DETAIL = '武器详情';
  static const TITLE_MY_TEAM = '我的队伍';
  static const TITLE_TOOLS = '工具';
  static const TITLE_CODE = '兑换码管理';
  static const TITLE_DATABASE = '数据库';
  static const TITLE_DATABASE_CHARACTER = '角色列表';
  static const TITLE_DATABASE_WEAPON = '武器列表';
  static const TITLE_DATABASE_ARTIFACT = '圣遗物列表';
  static const TITLE_DATABASE_CHARACTER_DETAIL = '角色详情';
  static const TITLE_DATABASE_CHARACTER_DAMAGE = '简易伤害模拟';

  static const NUMBER_CHARACTERS = '一二三四五六七八九十';
  static const STATS_SHOW_PERCENT = [
    Stats.AttackBonus,
    Stats.AttackBonusByDefend,
    Stats.AttackBonusByHp,
    Stats.AttackBonusByRecharge,
    Stats.AttackBonusByRechargeOver100,
    Stats.CritDmg,
    Stats.CritRate,
    Stats.DefendBonus,
    Stats.DefendDecrease,
    Stats.DmgBonus,
    Stats.ExtraDamageByAttack,
    Stats.ExtraDamageByHp,
    Stats.ExtraDmageByDefend,
    Stats.DmgBonusByRecharge,
    Stats.DmgBonusByRechargeOver100,
    Stats.DmgBonusByHealingForHpExtraDamage,
    Stats.DmgBonusByEnergy,
    Stats.DmgBonusByMastery,
    Stats.DmgBonusExtra,
    Stats.HealingBonus,
    Stats.HpBonus,
    Stats.PhyDmgBonus,
    Stats.Recharge,
    Stats.Resistance,
    Stats.ResistanceDecreaseElement,
    Stats.ResistanceDecreasePhysical,
    Stats.ShieldStrength,
    Stats.VaporizeBonus,
    Stats.MeltBonus,
    Stats.RatioExtra,
    Stats.RatioExtraByAttack,
    Stats.RatioExtraByMastery,
  ];

  static const STATS_SHOW_INTEGER = [
    Stats.Attack,
    Stats.Defend,
    Stats.Hp,
    Stats.Mastery,
  ];
}
