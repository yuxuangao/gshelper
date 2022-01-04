import '../data/data.dart';
import '../object/artifact.dart';

class ArtifactCalculator {
  static ArtifactResult cal(ArtifactInput input) {
    ArtifactResult result = ArtifactResult();

    var character;
    if (input.characterId >= 0) {
      character = GsData.getCharacterFromId(input.characterId);
    } else {
      character = GsData.getCharacterFromIndex(input.characterIndex);
    }
    if (character == null) {
      result.errorMessage = "未选择角色";
      return result;
    }
    Levels level = GsData.getLevelFromIndex(input.levelIndex);
    if (level == null) {
      result.errorMessage = "未选择等级";
      return result;
    }
    Stats sandsMainStat = GsData.getArtifactSandsMainStatFromIndex(input.artifactSandsIndex);
    if (sandsMainStat == null) {
      result.errorMessage = "未选择时之砂主属性";
      return result;
    }
    Stats globleMainStat = GsData.getArtifactGlobletMainStatFromIndex(input.artifactGobletIndex);
    if (globleMainStat == null) {
      result.errorMessage = "未选择空之杯主属性";
      return result;
    }
    Stats circletMainStat = GsData.getArtifactCircletMainStatFromIndex(input.artifactCircletIndex);
    if (circletMainStat == null) {
      result.errorMessage = "未选择理之冠主属性";
      return result;
    }
    Map<Stats, double> artifactBaseStat = GsData.getArtifactBaseStat();
    Map<Stats, double> artifactMainStat = GsData.getArtifactMainStat();
    Map<Stats, double> artifactSubStatWordValue = GsData.getArtifactSubStatWordValue();

    result.characterName = character['name'];
    result.validStats = character['valid_stat'];
    Map<Levels, Object> characterStat = character['stat'];
    Map<Stats, double> characterBaseStat = characterStat[level];

    result.result = {
      Stats.Hp: 0.0,
      Stats.Attack: 0.0,
      Stats.Defend: 0.0,
      Stats.Mastery: 0.0,
      Stats.CritRate: 0.0,
      Stats.CritDmg: 0.0,
      Stats.Recharge: 0.0,
    };

    result.result[Stats.Hp] = ((input.artifactHp - artifactBaseStat[Stats.Hp]) / characterBaseStat[Stats.Hp] * 100 -
            characterBaseStat[Stats.HpBonus] -
            _getArtifactMainStat(sandsMainStat, globleMainStat, circletMainStat, Stats.HpBonus, artifactMainStat)) /
        artifactSubStatWordValue[Stats.Hp];
    result.result[Stats.Attack] = ((input.artifactAttack - artifactBaseStat[Stats.Attack]) / (characterBaseStat[Stats.Attack] + input.baseAttack) * 100 -
            characterBaseStat[Stats.AttackBonus] -
            _getArtifactMainStat(sandsMainStat, globleMainStat, circletMainStat, Stats.AttackBonus, artifactMainStat)) /
        artifactSubStatWordValue[Stats.Attack];
    result.result[Stats.Defend] = (input.artifactDefend / characterBaseStat[Stats.Defend] * 100 -
            characterBaseStat[Stats.DefendBonus] -
            _getArtifactMainStat(sandsMainStat, globleMainStat, circletMainStat, Stats.DefendBonus, artifactMainStat)) /
        artifactSubStatWordValue[Stats.Defend];
    result.result[Stats.Mastery] =
        (input.artifactMastery - _getArtifactMainStat(sandsMainStat, globleMainStat, circletMainStat, Stats.Mastery, artifactMainStat)) /
            artifactSubStatWordValue[Stats.Mastery];
    result.result[Stats.CritRate] =
        (input.artifactCritRate - _getArtifactMainStat(sandsMainStat, globleMainStat, circletMainStat, Stats.CritRate, artifactMainStat)) /
            artifactSubStatWordValue[Stats.CritRate];
    result.result[Stats.CritDmg] =
        (input.artifactCritDmg - _getArtifactMainStat(sandsMainStat, globleMainStat, circletMainStat, Stats.CritDmg, artifactMainStat)) /
            artifactSubStatWordValue[Stats.CritDmg];
    result.result[Stats.Recharge] =
        (input.artifactRecharge - _getArtifactMainStat(sandsMainStat, globleMainStat, circletMainStat, Stats.Recharge, artifactMainStat)) /
            artifactSubStatWordValue[Stats.Recharge];

    result.result.forEach((Stats stat, double value) {
      if (value < 0) {
        result.errorMessage = '内容可能输入有误';
        return false;
      }
    });

    result.hasResult = true;

    return result;
  }

  static double _getArtifactMainStat(Stats sandsMainStat, Stats globleMainStat, Stats circletMainStat, Stats need, Map<Stats, double> artifactMainStat) {
    double result = 0.0;
    if (sandsMainStat == need) result += artifactMainStat[need];
    if (globleMainStat == need) result += artifactMainStat[need];
    if (circletMainStat == need) result += artifactMainStat[need];
    return result;
  }
}
