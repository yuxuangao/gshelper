import 'mycharacter.dart';
import 'damage.dart';
import '../data/data.dart';

class MyCharacterDamageInput {
  MyCharacter myCharacter;
  Map<String, Object> character;
  Map<String, Object> weapon;
  Map<SkillType, Object> skill;
  Map<Constellation, Object> constellation;
  MyCharacterResult myCharacterResult;
  List<Map<String, Object>> buffList = [];
  List<bool> buffActiveList = [];

  List<MyCharacter> teamMyCharacterList = [];
  List<MyCharacterResult> teamMyCharacterResultList = [];
  Map<int, List<Map<String, Object>>> teamBuffList = {};
  Map<int, List<bool>> teamBuffActiveList = {};

  int enemyIndex = 0;
  int enemyLevel = 90;

  double hp = 0.0;
  double hpBonus = 0.0;
  double attack = 0.0;
  double attackBouns = 0.0;
  double defend = 0.0;
  double defendBonus = 0.0;
  double mastery = 0.0;
  double recharge = 0.0;
  double critRate = 0.0;
  double critDmg = 0.0;
  double dmgBonus = 0.0;
  double phyDmgBonus = 0.0;
  double extraDmage = 0.0;
  double restinanceDecrease = 0.0;
  double defendDecrease = 0.0;
}

class MyCharacterDamageResult {
  Map<String, Map<String, DamageResult>> physicalResult = {};
  Map<String, Map<String, DamageResult>> elementResult = {};
  Map<String, Map<String, Map<String, DamageResult>>> reactionResult = {};
}
