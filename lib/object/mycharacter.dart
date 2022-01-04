import 'artifact.dart';

class MyCharacter {
  int myCharacterId = -1;
  String nickName = '';
  int characterIndex = -1;
  int characterId = -1;
  int levelIndex = -1;
  int consetllationIndex = -1;
  int artifactFlowerIndex = 0;
  int artifactPlumeIndex = 0;
  int artifactSandsIndex = -1;
  int artifactGlobletIndex = -1;
  int artifactCircletIndex = -1;
  int artifactFlowerId = -1;
  int artifactPlumeId = -1;
  int artifactSandsId = -1;
  int artifactGobletId = -1;
  int artifactCircletId = -1;
  int weaponIndex = -1;
  int weaponId = -1;
  int refineIndex = -1;
  List<int> artifactMainTypeIndexList = List.generate(5, (index) => -1);
  List<int> artifactMainStatIndexList = List.generate(5, (index) => -1);
  List<int> artifactSubStatIndexList = List.generate(20, (index) => -1);
  List<double> artifactSubValueList = List.generate(20, (index) => 0.0);
  double artifactHp = 0.0;
  double artifactAttack = 0.0;
  double artifactDefend = 0.0;
  double artifactMastery = 0.0;
  double artifactCritRate = 0.0;
  double artifactCritDmg = 0.0;
  double artifactRecharge = 0.0;
  int skillALevel = 1;
  int skillELevel = 1;
  int skillQLevel = 1;
}

class MyCharacterResult {
  double hp = 0;
  double baseHp = 0;
  double attack = 0;
  double baseAttack = 0;
  double defend = 0;
  double baseDefend = 0;
  double mastery = 0;
  double critRate = 0;
  double critDmg = 0;
  double recharge = 0;
  double dmgBonus = 0;
  double phyDmgBonus = 0;
  ArtifactResult artifactResult = ArtifactResult();
}
