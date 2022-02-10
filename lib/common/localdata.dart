import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:permission_handler/permission_handler.dart';

import '../data/data.dart';
import '../object/mycharacter.dart';
import '../object/artifact.dart';

class LocalData {
  static final _databaseFolder = "/storage/emulated/0/gshelper";
  static final _databaseName = "gshelper.db";
  static final _databaseVersion = 1;

  static final tableNameArtifactInput = 'artifact_input';
  static final tableColumnArtifactInputCharacterId = 'character_id';
  static final tableColumnArtifactInputLevel = 'level';
  static final tableColumnArtifactInputArtifactSands = 'artifact_sands';
  static final tableColumnArtifactInputArtifactGoblet = 'artifact_goblet';
  static final tableColumnArtifactInputArtifactCirclet = 'artifact_circlet';
  static final tableColumnArtifactInputBaseAttack = 'base_attack';
  static final tableColumnArtifactInputArtifactHp = 'artifact_hp';
  static final tableColumnArtifactInputArtifactAttack = 'artifact_attack';
  static final tableColumnArtifactInputArtifactDefend = 'artifact_defend';
  static final tableColumnArtifactInputArtifactMastery = 'artifact_mastery';
  static final tableColumnArtifactInputArtifactCritRate = 'artifact_crit_rate';
  static final tableColumnArtifactInputArtifactCritDmg = 'artifact_crit_dmg';
  static final tableColumnArtifactInputArtifactRecharge = 'artifact_recharge';

  static final tableNameMyCharacter = 'my_character';
  static final tableColumnMyCharacterMyCharacterId = 'my_character_id';
  static final tableColumnMyCharacterNickName = 'nick_name';
  static final tableColumnMyCharacterCharacterId = 'character_id';
  static final tableColumnMyCharacterLevel = 'level';
  static final tableColumnMyCharacterConstellation = 'constellation';
  static final tableColumnMyCharacterWeaponId = 'weapon_id';
  static final tableColumnMyCharacterWeaponRefine = 'weapon_refine';
  static final tableColumnMyCharacterArtifactFlowerType = 'artifact_flower_type';
  static final tableColumnMyCharacterArtifactPlumeType = 'artifact_plume_type';
  static final tableColumnMyCharacterArtifactSandsType = 'artifact_sands_type';
  static final tableColumnMyCharacterArtifactGobletType = 'artifact_goblet_type';
  static final tableColumnMyCharacterArtifactCircletType = 'artifact_circlet_type';
  static final tableColumnMyCharacterArtifactFlower = 'artifact_flower';
  static final tableColumnMyCharacterArtifactPlume = 'artifact_plume';
  static final tableColumnMyCharacterArtifactSands = 'artifact_sands';
  static final tableColumnMyCharacterArtifactGoblet = 'artifact_goblet';
  static final tableColumnMyCharacterArtifactCirclet = 'artifact_circlet';
  static final tableColumnMyCharacterSkillALevel = 'skill_a_level';
  static final tableColumnMyCharacterSkillELevel = 'skill_e_level';
  static final tableColumnMyCharacterSkillQLevel = 'skill_q_level';

  static final tableNameMyCharacterArtifactSubStat = 'my_character_sub_stat';
  static final tableColumnMyCharacterArtifactSubStatMyCharacterId = 'my_character_id';
  static final tableColumnMyCharacterArtifactSubStatStatIndex = 'stat_index';
  static final tableColumnMyCharacterArtifactSubStatStatValue = 'stat_value';
  static final tableColumnMyCharacterArtifactSubStatOrder = 'order_no';

  static final tableNameCode = 'code';
  static final tableColumnCodeCodeId = 'code_id';
  static final tableColumnCodeContent = 'code_content';

  LocalData._privateConstructor();
  static final LocalData instance = LocalData._privateConstructor();

  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    /*Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);*/
    var statusStorage = await Permission.storage.status;
    var statusManageStorage = await Permission.manageExternalStorage.status;
    var statusMedia = await Permission.accessMediaLocation.status;
    if (statusStorage.isDenied) {
      statusStorage = await Permission.storage.request();
    }
    if (statusManageStorage.isDenied) {
      statusManageStorage = await Permission.manageExternalStorage.request();
    }
    if (statusMedia.isDenied) {
      statusMedia = await Permission.accessMediaLocation.request();
    }

    if (statusStorage.isGranted && statusManageStorage.isGranted && statusMedia.isGranted) {
      Directory dir = Directory(_databaseFolder);
      if (!await dir.exists()) {
        await dir.create(recursive: true);
      }
      return await openDatabase(_databaseFolder + '/' + _databaseName, version: _databaseVersion, onCreate: _onCreate);
    } else {
      return null;
    }
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $tableNameArtifactInput (
        $tableColumnArtifactInputCharacterId INTEGER PRIMARY KEY,
        $tableColumnArtifactInputLevel INTEGER,
        $tableColumnArtifactInputArtifactSands INTEGER,
        $tableColumnArtifactInputArtifactGoblet INTEGER,
        $tableColumnArtifactInputArtifactCirclet INTEGER,
        $tableColumnArtifactInputBaseAttack REAL,
        $tableColumnArtifactInputArtifactHp REAL,
        $tableColumnArtifactInputArtifactAttack REAL,
        $tableColumnArtifactInputArtifactDefend REAL,
        $tableColumnArtifactInputArtifactMastery REAL,
        $tableColumnArtifactInputArtifactCritRate REAL,
        $tableColumnArtifactInputArtifactCritDmg REAL,
        $tableColumnArtifactInputArtifactRecharge REAL
      );
    ''');
    await db.execute('''
        CREATE TABLE $tableNameMyCharacter (
        $tableColumnMyCharacterMyCharacterId INTEGER PRIMARY KEY,
        $tableColumnMyCharacterNickName TEXT,
        $tableColumnMyCharacterCharacterId INTEGER,
        $tableColumnMyCharacterLevel INTEGER,
        $tableColumnMyCharacterConstellation INTEGER,
        $tableColumnMyCharacterWeaponId INTEGER,
        $tableColumnMyCharacterWeaponRefine INTEGER,
        $tableColumnMyCharacterArtifactFlowerType INTEGER,
        $tableColumnMyCharacterArtifactPlumeType INTEGER,
        $tableColumnMyCharacterArtifactSandsType INTEGER,
        $tableColumnMyCharacterArtifactGobletType INTEGER,
        $tableColumnMyCharacterArtifactCircletType INTEGER,
        $tableColumnMyCharacterArtifactFlower INTEGER,
        $tableColumnMyCharacterArtifactPlume INTEGER,
        $tableColumnMyCharacterArtifactSands INTEGER,
        $tableColumnMyCharacterArtifactGoblet INTEGER,
        $tableColumnMyCharacterArtifactCirclet INTEGER,
        $tableColumnMyCharacterSkillALevel INTEGER,
        $tableColumnMyCharacterSkillELevel INTEGER,
        $tableColumnMyCharacterSkillQLevel INTEGER
      );
    ''');
    await db.execute('''
        CREATE TABLE $tableNameMyCharacterArtifactSubStat (
        $tableColumnMyCharacterArtifactSubStatMyCharacterId INTEGER,
        $tableColumnMyCharacterArtifactSubStatStatIndex INTEGER,
        $tableColumnMyCharacterArtifactSubStatStatValue REAL,
        $tableColumnMyCharacterArtifactSubStatOrder INTEGER,
        PRIMARY KEY ($tableColumnMyCharacterArtifactSubStatMyCharacterId, $tableColumnMyCharacterArtifactSubStatOrder)
      );
    ''');
    await db.execute('''
        CREATE TABLE $tableNameCode (
        $tableColumnCodeCodeId INTEGER PRIMARY KEY,
        $tableColumnCodeContent TEXT
      );
    ''');
  }

  Future<void> debug() async {
    /*Database db = await database;
    await db.execute('''
        CREATE TABLE $tableNameCode (
        $tableColumnCodeCodeId INTEGER PRIMARY KEY,
        $tableColumnCodeContent TEXT
      );
    ''');*/
  }

  Future<void> keepArtifactInput(ArtifactInput input) async {
    Map<String, Object> character = GsData.getCharacterFromIndex(input.characterIndex);
    if (character == null) return;
    var values = {
      tableColumnArtifactInputLevel: input.levelIndex,
      tableColumnArtifactInputArtifactSands: input.artifactSandsIndex,
      tableColumnArtifactInputArtifactGoblet: input.artifactGobletIndex,
      tableColumnArtifactInputArtifactCirclet: input.artifactCircletIndex,
      tableColumnArtifactInputBaseAttack: input.baseAttack,
      tableColumnArtifactInputArtifactHp: input.artifactHp,
      tableColumnArtifactInputArtifactAttack: input.artifactAttack,
      tableColumnArtifactInputArtifactDefend: input.artifactDefend,
      tableColumnArtifactInputArtifactMastery: input.artifactMastery,
      tableColumnArtifactInputArtifactCritRate: input.artifactCritRate,
      tableColumnArtifactInputArtifactCritDmg: input.artifactCritDmg,
      tableColumnArtifactInputArtifactRecharge: input.artifactRecharge,
    };

    Database db = await database;
    if (db == null) return;

    List<Map> searchResult = await db.query(tableNameArtifactInput, where: '$tableColumnArtifactInputCharacterId = ?', whereArgs: [character['character_id']]);
    if (searchResult.length > 0) {
      await db.update(tableNameArtifactInput, values, where: '$tableColumnArtifactInputCharacterId = ?', whereArgs: [character['character_id']]);
    } else {
      values.addAll({
        tableColumnArtifactInputCharacterId: character['character_id'],
      });
      await db.insert('artifact_input', values);
    }
  }

  Future<Map<String, Object>> searchArtifactInput(int characterIndex) async {
    Map<String, Object> character = GsData.getCharacterFromIndex(characterIndex);
    if (character == null) return null;

    Database db = await database;
    if (db == null) return null;

    List<Map<String, Object>> searchResult =
        await db.query(tableNameArtifactInput, where: '$tableColumnArtifactInputCharacterId = ?', whereArgs: [character['character_id']]);
    if (searchResult.length <= 0) return null;
    return searchResult[0];
  }

  Future<void> keepMyCharacter(MyCharacter character) async {
    var myCharacterTableValues = {
      tableColumnMyCharacterNickName: character.nickName,
      tableColumnMyCharacterCharacterId: character.characterId,
      tableColumnMyCharacterLevel: character.levelIndex,
      tableColumnMyCharacterConstellation: character.consetllationIndex,
      tableColumnMyCharacterWeaponId: character.weaponId,
      tableColumnMyCharacterWeaponRefine: character.refineIndex,
      tableColumnMyCharacterArtifactFlowerType: character.artifactFlowerId,
      tableColumnMyCharacterArtifactPlumeType: character.artifactPlumeId,
      tableColumnMyCharacterArtifactSandsType: character.artifactSandsId,
      tableColumnMyCharacterArtifactGobletType: character.artifactGobletId,
      tableColumnMyCharacterArtifactCircletType: character.artifactCircletId,
      tableColumnMyCharacterArtifactFlower: character.artifactFlowerIndex,
      tableColumnMyCharacterArtifactPlume: character.artifactPlumeIndex,
      tableColumnMyCharacterArtifactSands: character.artifactSandsIndex,
      tableColumnMyCharacterArtifactGoblet: character.artifactGobletIndex,
      tableColumnMyCharacterArtifactCirclet: character.artifactCircletIndex,
      tableColumnMyCharacterSkillALevel: character.skillALevel,
      tableColumnMyCharacterSkillELevel: character.skillELevel,
      tableColumnMyCharacterSkillQLevel: character.skillQLevel,
    };

    Database db = await database;
    if (db == null) return;

    int myCharacterId;
    if (character.myCharacterId < 0) {
      myCharacterId =
          (((await db.rawQuery('SELECT MAX($tableColumnMyCharacterMyCharacterId) AS max_id FROM $tableNameMyCharacter'))[0]['max_id'] ?? 0) as int) + 1;
      myCharacterTableValues.addAll({
        tableColumnMyCharacterMyCharacterId: myCharacterId,
      });
      await db.insert(tableNameMyCharacter, myCharacterTableValues);
    } else {
      myCharacterId = character.myCharacterId;
      await db.update(tableNameMyCharacter, myCharacterTableValues, where: '$tableColumnMyCharacterMyCharacterId = ?', whereArgs: [character.myCharacterId]);
    }

    await db.delete(tableNameMyCharacterArtifactSubStat, where: '$tableColumnMyCharacterArtifactSubStatMyCharacterId = ?', whereArgs: [myCharacterId]);
    for (int i = 0; i < character.artifactSubStatIndexList.length; i++) {
      var subStatValues = {
        tableColumnMyCharacterArtifactSubStatMyCharacterId: myCharacterId,
        tableColumnMyCharacterArtifactSubStatStatIndex: character.artifactSubStatIndexList[i],
        tableColumnMyCharacterArtifactSubStatStatValue: character.artifactSubValueList[i],
        tableColumnMyCharacterArtifactSubStatOrder: i + 1,
      };
      await db.insert(tableNameMyCharacterArtifactSubStat, subStatValues);
    }
  }

  Future<List<MyCharacter>> getMyCharacterList() async {
    Database db = await database;
    if (db == null) return [];

    List<Map<String, Object>> searchResult = await db.query(tableNameMyCharacter);

    List<MyCharacter> result = [];
    for (var line in searchResult) {
      MyCharacter character = MyCharacter();
      character.myCharacterId = line[tableColumnMyCharacterMyCharacterId];
      character.characterId = line[tableColumnMyCharacterCharacterId];
      character.levelIndex = line[tableColumnMyCharacterLevel];
      character.consetllationIndex = line[tableColumnMyCharacterConstellation];
      character.nickName = line[tableColumnMyCharacterNickName];
      character.weaponId = line[tableColumnMyCharacterWeaponId];
      character.refineIndex = line[tableColumnMyCharacterWeaponRefine];
      character.artifactFlowerIndex = line[tableColumnMyCharacterArtifactFlower];
      character.artifactPlumeIndex = line[tableColumnMyCharacterArtifactPlume];
      character.artifactSandsIndex = line[tableColumnMyCharacterArtifactSands];
      character.artifactGobletIndex = line[tableColumnMyCharacterArtifactGoblet];
      character.artifactCircletIndex = line[tableColumnMyCharacterArtifactCirclet];
      character.artifactFlowerId = line[tableColumnMyCharacterArtifactFlowerType];
      character.artifactPlumeId = line[tableColumnMyCharacterArtifactPlumeType];
      character.artifactSandsId = line[tableColumnMyCharacterArtifactSandsType];
      character.artifactGobletId = line[tableColumnMyCharacterArtifactGobletType];
      character.artifactCircletId = line[tableColumnMyCharacterArtifactCircletType];
      character.skillALevel = line[tableColumnMyCharacterSkillALevel];
      character.skillELevel = line[tableColumnMyCharacterSkillELevel];
      character.skillQLevel = line[tableColumnMyCharacterSkillQLevel];

      List<Map<String, Object>> subStatResult = await db
          .query(tableNameMyCharacterArtifactSubStat, where: '$tableColumnMyCharacterArtifactSubStatMyCharacterId = ?', whereArgs: [character.myCharacterId]);
      for (int i = 0; i < character.artifactSubStatIndexList.length; i++) {
        if (subStatResult.length <= i) break;
        var subStatLine = subStatResult[i];
        character.artifactSubStatIndexList[i] = subStatLine[tableColumnMyCharacterArtifactSubStatStatIndex];
        character.artifactSubValueList[i] = subStatLine[tableColumnMyCharacterArtifactSubStatStatValue];
      }

      character.artifactList.add(Artifact(
        myCharacterId: character.myCharacterId,
        characterId: character.characterId,
        artifactId: character.artifactFlowerId,
        position: ArtifactPosition.Flower,
        mainStat: GsData.getArtifactFlowerMainStatFromIndex(character.artifactFlowerIndex),
        subStatList: List.generate(4, (index) => GsData.getArtifactSubStatFromIndex(character.artifactSubStatIndexList[index])),
        subValueList: List.generate(4, (index) => character.artifactSubValueList[index]),
      ));
      character.artifactList.add(Artifact(
        myCharacterId: character.myCharacterId,
        characterId: character.characterId,
        artifactId: character.artifactPlumeId,
        position: ArtifactPosition.Plume,
        mainStat: GsData.getArtifactPlumeMainStatFromIndex(character.artifactPlumeIndex),
        subStatList: List.generate(4, (index) => GsData.getArtifactSubStatFromIndex(character.artifactSubStatIndexList[index + 4])),
        subValueList: List.generate(4, (index) => character.artifactSubValueList[index + 4]),
      ));
      character.artifactList.add(Artifact(
        myCharacterId: character.myCharacterId,
        characterId: character.characterId,
        artifactId: character.artifactSandsId,
        position: ArtifactPosition.Sands,
        mainStat: GsData.getArtifactSandsMainStatFromIndex(character.artifactSandsIndex),
        subStatList: List.generate(4, (index) => GsData.getArtifactSubStatFromIndex(character.artifactSubStatIndexList[index + 8])),
        subValueList: List.generate(4, (index) => character.artifactSubValueList[index + 8]),
      ));
      character.artifactList.add(Artifact(
        myCharacterId: character.myCharacterId,
        characterId: character.characterId,
        artifactId: character.artifactGobletId,
        position: ArtifactPosition.Goblet,
        mainStat: GsData.getArtifactGobletMainStatFromIndex(character.artifactGobletIndex),
        subStatList: List.generate(4, (index) => GsData.getArtifactSubStatFromIndex(character.artifactSubStatIndexList[index + 8])),
        subValueList: List.generate(4, (index) => character.artifactSubValueList[index + 8]),
      ));
      character.artifactList.add(Artifact(
        myCharacterId: character.myCharacterId,
        characterId: character.characterId,
        artifactId: character.artifactCircletId,
        position: ArtifactPosition.Circlet,
        mainStat: GsData.getArtifactCircletMainStatFromIndex(character.artifactCircletIndex),
        subStatList: List.generate(4, (index) => GsData.getArtifactSubStatFromIndex(character.artifactSubStatIndexList[index + 8])),
        subValueList: List.generate(4, (index) => character.artifactSubValueList[index + 8]),
      ));

      result.add(character);
    }
    return result;
  }

  Future<void> deleteMyCharacter(int myCharacterId) async {
    Database db = await database;
    if (db == null) return;

    db.delete(tableNameMyCharacter, where: '$tableColumnMyCharacterMyCharacterId = ?', whereArgs: [myCharacterId]);
  }

  Future<Map<int, String>> getCodeList() async {
    Database db = await database;
    if (db == null) return {};

    List<Map<String, Object>> searchResult = await db.query(tableNameCode);
    Map<int, String> result = {};
    for (Map<String, Object> line in searchResult) {
      result.addAll({line[tableColumnCodeCodeId]: line[tableColumnCodeContent]});
    }

    return result;
  }

  Future<void> keepCode(int codeId, String code) async {
    Database db = await database;
    if (db == null) return;

    if (codeId < 0) {
      codeId = (((await db.rawQuery('SELECT MAX($tableColumnCodeCodeId) AS max_id FROM $tableNameCode'))[0]['max_id'] ?? 0) as int) + 1;
      await db.insert(tableNameCode, {tableColumnCodeCodeId: codeId, tableColumnCodeContent: code});
    } else {
      await db.update(tableNameCode, {tableColumnCodeContent: code}, where: '$tableColumnCodeCodeId = ?', whereArgs: [codeId]);
    }
  }

  Future<void> deleteCode(int codeId) async {
    Database db = await database;
    if (db == null) return;

    db.delete(tableNameCode, where: '$tableColumnCodeCodeId = ?', whereArgs: [codeId]);
  }
}
