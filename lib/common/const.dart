import '../data/data.dart';

class Const {
  static const NUMBER_CHARACTERS = '一二三四五六七八九十';
  static const STATS_SHOW_PERCENT = [
    Stats.AttackBonus,
    Stats.AttackBonusByBaseAttack,
    Stats.AttackBonusByDefend,
    Stats.AttackBonusByHp,
    Stats.AttackBonusByRecharge,
    Stats.AttackBonusByRechargeOver100,
    Stats.CritDmg,
    Stats.CritRate,
    Stats.DefendBonus,
    Stats.DefendDecrease,
    Stats.DmgBonus,
    Stats.EleDmgBonus,
    Stats.ExtraDamageByAttack,
    Stats.ExtraDamageByAttackUsed,
    Stats.ExtraDamageByHp,
    Stats.ExtraDamageByDefend,
    Stats.ExtraDamageByDefendUsed,
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
    Stats.MasteryByMastery,
    Stats.CritRateByCritRate,
  ];

  static const STATS_SHOW_INTEGER = [
    Stats.Attack,
    Stats.Defend,
    Stats.Hp,
    Stats.Mastery,
  ];

  static const double APP_BAR_ELEVATION = 1.2;
}
