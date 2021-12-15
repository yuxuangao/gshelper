import '../object/mycharacter.dart';
import '../object/artifact.dart';
import '../data/data.dart';
import 'artifact.dart';

class MyCharacterCalculator {
  static MyCharacterResult cal(MyCharacter myCharacter,
      Map<String, Object> character, Map<String, Object> weapon) {
    MyCharacterResult result = MyCharacterResult();

    Levels level = GsData.getLevelFromIndex(myCharacter.levelIndex);
    Map<Stats, double> baseStats =
        (character['stat'] as Map<Levels, Object>)[level];
    double baseAttack = baseStats[Stats.Attack] + weapon['baseAttack'];
    Stats subStat = weapon['subStat'];
    double subStatValue = weapon['subStatValue'];

    result.critRate = baseStats[Stats.CritRate] +
        (subStat == Stats.CritRate ? subStatValue : 0) +
        myCharacter.artifactCritRate;
    result.critDmg = baseStats[Stats.CritDmg] +
        (subStat == Stats.CritDmg ? subStatValue : 0) +
        myCharacter.artifactCritDmg;
    result.recharge = baseStats[Stats.Recharge] +
        (subStat == Stats.Recharge ? subStatValue : 0) +
        myCharacter.artifactRecharge;
    result.dmgBonus = baseStats[Stats.DmgBonus] +
        (subStat == Stats.DmgBonus ? subStatValue : 0) +
        (GsData.getArtifactGlobleMainStatFromIndex(
                    myCharacter.artifactGobletIndex) ==
                Stats.DmgBonus
            ? GsData.getArtifactMainStatValue(Stats.DmgBonus)
            : 0);
    result.phyDmgBonus = baseStats[Stats.PhyDmgBonus] +
        (subStat == Stats.PhyDmgBonus ? subStatValue : 0) +
        (GsData.getArtifactGlobleMainStatFromIndex(
                    myCharacter.artifactGobletIndex) ==
                Stats.PhyDmgBonus
            ? GsData.getArtifactMainStatValue(Stats.PhyDmgBonus)
            : 0);
    result.hp = baseStats[Stats.Hp] +
        (subStat == Stats.Hp ? subStatValue : 0) +
        (subStat == Stats.HpBonus
            ? baseStats[Stats.Hp] * subStatValue / 100
            : 0) +
        baseStats[Stats.Hp] * baseStats[Stats.HpBonus] / 100 +
        myCharacter.artifactHp;
    result.attack = baseAttack +
        (subStat == Stats.Attack ? subStatValue : 0) +
        (subStat == Stats.AttackBonus ? baseAttack * subStatValue / 100 : 0) +
        (subStat == Stats.AttackBonusByHp
            ? result.hp * subStatValue / 100
            : 0) +
        (subStat == Stats.AttackBonusByRecharge
            ? result.recharge * subStatValue / 100
            : 0) +
        baseAttack * baseStats[Stats.AttackBonus] / 100 +
        myCharacter.artifactAttack;
    result.defend = baseStats[Stats.Defend] +
        (subStat == Stats.Defend ? subStatValue : 0) +
        (subStat == Stats.DefendBonus
            ? baseStats[Stats.Defend] * subStatValue / 100
            : 0) +
        baseStats[Stats.Defend] * baseStats[Stats.DefendBonus] / 100 +
        myCharacter.artifactDefend;
    result.mastery = baseStats[Stats.Mastery] +
        (subStat == Stats.Mastery ? subStatValue : 0) +
        myCharacter.artifactMastery;

    ArtifactInput artifactInput = ArtifactInput();
    artifactInput.characterId = myCharacter.characterId;
    artifactInput.levelIndex = myCharacter.levelIndex;
    artifactInput.artifactSandsIndex = myCharacter.artifactSandsIndex;
    artifactInput.artifactGobletIndex = myCharacter.artifactGobletIndex;
    artifactInput.artifactCircletIndex = myCharacter.artifactCircletIndex;
    artifactInput.baseAttack = weapon['baseAttack'];
    artifactInput.artifactHp = myCharacter.artifactHp;
    artifactInput.artifactAttack = myCharacter.artifactAttack;
    artifactInput.artifactDefend = myCharacter.artifactDefend;
    artifactInput.artifactMastery = myCharacter.artifactMastery;
    artifactInput.artifactCritRate = myCharacter.artifactCritRate;
    artifactInput.artifactCritDmg = myCharacter.artifactCritDmg;
    artifactInput.artifactRecharge = myCharacter.artifactRecharge;
    result.artifactResult = ArtifactCalculator.cal(artifactInput);

    return result;
  }
}
