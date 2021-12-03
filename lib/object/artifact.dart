import '../data/data.dart';

class ArtifactInput {
  int characterIndex = -1;
  int levelIndex = -1;
  int artifactSandsIndex = -1;
  int artifactGobletIndex = -1;
  int artifactCircletIndex = -1;
  double baseAttack = 0;
  double artifactHp = 0;
  double artifactAttack = 0;
  double artifactDefend = 0;
  double artifactMastery = 0;
  double artifactCritRate = 0;
  double artifactCritDmg = 0;
  double artifactRecharge = 0;
}

class ArtifactResult {
  bool hasResult = false;
  String characterName;
  Map<Stats, double> result;
  List<Map<Stats, double>> validStats;
  String errorMessage = "";
}
