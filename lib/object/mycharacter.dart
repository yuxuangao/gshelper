import 'artifact.dart';

class MyCharacter {
  int myCharacterId = -1;
  String nickName = '';
  int characterIndex = -1;
  int characterId = -1;
  int levelIndex = -1;
  int consetllationIndex = -1;
  int artifactSandsIndex = -1;
  int artifactGobletIndex = -1;
  int artifactCircletIndex = -1;
  int weaponIndex = -1;
  int weaponId = -1;
  int refineIndex = -1;
  double artifactHp = 0;
  double artifactAttack = 0;
  double artifactDefend = 0;
  double artifactMastery = 0;
  double artifactCritRate = 0;
  double artifactCritDmg = 0;
  double artifactRecharge = 0;
  int skillALevel = 1;
  int skillELevel = 1;
  int skillQLevel = 1;
}

class MyCharacterResult {
  double hp = 0;
  double attack = 0;
  double defend = 0;
  double mastery = 0;
  double critRate = 0;
  double critDmg = 0;
  double recharge = 0;
  double dmgBonus = 0;
  double phyDmgBonus = 0;
  ArtifactResult artifactResult = ArtifactResult();
}
