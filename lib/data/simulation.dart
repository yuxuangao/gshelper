import 'data.dart';

const SIMULATION_ARTIFACT_MAIN_STAT = [
  {
    'name': '攻伤暴击',
    'value': [Stats.Hp, Stats.Attack, Stats.AttackBonus, Stats.EleDmgBonus, Stats.CritRate],
  },
  {
    'name': '攻伤爆伤',
    'value': [Stats.Hp, Stats.Attack, Stats.AttackBonus, Stats.EleDmgBonus, Stats.CritDmg],
  },
  {
    'name': '攻物暴击',
    'value': [Stats.Hp, Stats.Attack, Stats.AttackBonus, Stats.PhyDmgBonus, Stats.CritRate],
  },
  {
    'name': '攻物爆伤',
    'value': [Stats.Hp, Stats.Attack, Stats.AttackBonus, Stats.PhyDmgBonus, Stats.CritDmg],
  },
  {
    'name': '生伤暴击',
    'value': [Stats.Hp, Stats.Attack, Stats.HpBonus, Stats.EleDmgBonus, Stats.CritRate],
  },
  {
    'name': '生伤爆伤',
    'value': [Stats.Hp, Stats.Attack, Stats.HpBonus, Stats.EleDmgBonus, Stats.CritDmg],
  },
  {
    'name': '充伤暴击',
    'value': [Stats.Hp, Stats.Attack, Stats.Recharge, Stats.EleDmgBonus, Stats.CritRate],
  },
  {
    'name': '充伤爆伤',
    'value': [Stats.Hp, Stats.Attack, Stats.Recharge, Stats.EleDmgBonus, Stats.CritDmg],
  },
  {
    'name': '防伤暴击',
    'value': [Stats.Hp, Stats.Attack, Stats.DefendBonus, Stats.EleDmgBonus, Stats.CritRate],
  },
  {
    'name': '防伤爆伤',
    'value': [Stats.Hp, Stats.Attack, Stats.DefendBonus, Stats.EleDmgBonus, Stats.CritDmg],
  },
  {
    'name': '精精精',
    'value': [Stats.Hp, Stats.Attack, Stats.Mastery, Stats.Mastery, Stats.Mastery],
  },
  {
    'name': '生伤治疗',
    'value': [Stats.Hp, Stats.Attack, Stats.HpBonus, Stats.EleDmgBonus, Stats.HealingBonus],
  },
  {
    'name': '生生治疗',
    'value': [Stats.Hp, Stats.Attack, Stats.HpBonus, Stats.HpBonus, Stats.HealingBonus],
  },
];

const SIMULATION_ARTIFACT_SUB_STAT = [
  {
    'name': '攻5暴击5爆伤5',
    'value': {Stats.AttackBonus: 25.0, Stats.CritRate: 16.5, Stats.CritDmg: 33.0},
  },
  {
    'name': '生5暴击5爆伤5',
    'value': {Stats.HpBonus: 25.0, Stats.CritRate: 16.5, Stats.CritDmg: 33.0},
  },
  {
    'name': '防5暴击5爆伤5',
    'value': {Stats.DefendBonus: 31.0, Stats.CritRate: 16.5, Stats.CritDmg: 33.0},
  },
  {
    'name': '充5暴击5爆伤5',
    'value': {Stats.Recharge: 27.5, Stats.CritRate: 16.5, Stats.CritDmg: 33.0},
  },
  {
    'name': '充3攻3暴击5爆伤5',
    'value': {Stats.Recharge: 16.5, Stats.AttackBonus: 15.0, Stats.CritRate: 16.5, Stats.CritDmg: 33.0},
  },
];
