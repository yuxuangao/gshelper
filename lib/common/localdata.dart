import 'dart:io';
import 'package:gshelper/object/artifact.dart';
import 'package:gshelper/object/mycharacter.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

import '../data/data.dart';

class LocalData {
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
  static final tableColumnMyCharacterArtifactSands = 'artifact_sands';
  static final tableColumnMyCharacterArtifactGoblet = 'artifact_goblet';
  static final tableColumnMyCharacterArtifactCirclet = 'artifact_circlet';
  static final tableColumnMyCharacterWeaponId = 'weapon_id';
  static final tableColumnMyCharacterWeaponRefine = 'weapon_refine';
  static final tableColumnMyCharacterArtifactHp = 'artifact_hp';
  static final tableColumnMyCharacterArtifactAttack = 'artifact_attack';
  static final tableColumnMyCharacterArtifactDefend = 'artifact_defend';
  static final tableColumnMyCharacterArtifactMastery = 'artifact_mastery';
  static final tableColumnMyCharacterArtifactCritRate = 'artifact_crit_rate';
  static final tableColumnMyCharacterArtifactCritDmg = 'artifact_crit_dmg';
  static final tableColumnMyCharacterArtifactRecharge = 'artifact_recharge';
  static final tableColumnMyCharacterSkillALevel = 'skill_a_level';
  static final tableColumnMyCharacterSkillELevel = 'skill_e_level';
  static final tableColumnMyCharacterSkillQLevel = 'skill_q_level';

  LocalData._privateConstructor();
  static final LocalData instance = LocalData._privateConstructor();

  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
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
      CREATE TABLE $tableNameMyCharacter (
        $tableColumnMyCharacterMyCharacterId INTEGER PRIMARY KEY,
        $tableColumnMyCharacterNickName TEXT,
        $tableColumnMyCharacterCharacterId INTEGER,
        $tableColumnMyCharacterLevel INTEGER,
        $tableColumnMyCharacterArtifactSands INTEGER,
        $tableColumnMyCharacterArtifactGoblet INTEGER,
        $tableColumnMyCharacterArtifactCirclet INTEGER,
        $tableColumnMyCharacterWeaponId INTEGER,
        $tableColumnMyCharacterWeaponRefine INTEGER,
        $tableColumnMyCharacterArtifactHp REAL,
        $tableColumnMyCharacterArtifactAttack REAL,
        $tableColumnMyCharacterArtifactDefend REAL,
        $tableColumnMyCharacterArtifactMastery REAL,
        $tableColumnMyCharacterArtifactCritRate REAL,
        $tableColumnMyCharacterArtifactCritDmg REAL,
        $tableColumnMyCharacterArtifactRecharge REAL,
        $tableColumnMyCharacterSkillALevel INTEGER,
        $tableColumnMyCharacterSkillELevel INTEGER,
        $tableColumnMyCharacterSkillQLevel INTEGER
      );
     ''');
  }

  Future<void> debug() async {
    /*Database db = await database;
    await db.execute('''
      CREATE TABLE $tableNameMyCharacter (
        $tableColumnMyCharacterMyCharacterId INTEGER PRIMARY KEY,
        $tableColumnMyCharacterNickName TEXT,
        $tableColumnMyCharacterCharacterId INTEGER,
        $tableColumnMyCharacterLevel INTEGER,
        $tableColumnMyCharacterArtifactSands INTEGER,
        $tableColumnMyCharacterArtifactGoblet INTEGER,
        $tableColumnMyCharacterArtifactCirclet INTEGER,
        $tableColumnMyCharacterWeaponId INTEGER,
        $tableColumnMyCharacterWeaponRefine INTEGER,
        $tableColumnMyCharacterArtifactHp REAL,
        $tableColumnMyCharacterArtifactAttack REAL,
        $tableColumnMyCharacterArtifactDefend REAL,
        $tableColumnMyCharacterArtifactMastery REAL,
        $tableColumnMyCharacterArtifactCritRate REAL,
        $tableColumnMyCharacterArtifactCritDmg REAL,
        $tableColumnMyCharacterArtifactRecharge REAL,
        $tableColumnMyCharacterSkillALevel INTEGER,
        $tableColumnMyCharacterSkillELevel INTEGER,
        $tableColumnMyCharacterSkillQLevel INTEGER
      );
    ''');*/
  }

  Future<void> keepArtifactInput(ArtifactInput input) async {
    Map<String, Object> character =
        GsData.getCharacterFromIndex(input.characterIndex);
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
    List<Map> searchResult = await db.query(tableNameArtifactInput,
        where: '$tableColumnArtifactInputCharacterId = ?',
        whereArgs: [character['character_id']]);
    if (searchResult.length > 0) {
      await db.update(tableNameArtifactInput, values,
          where: '$tableColumnArtifactInputCharacterId = ?',
          whereArgs: [character['character_id']]);
    } else {
      values.addAll({
        tableColumnArtifactInputCharacterId: character['character_id'],
      });
      await db.insert('artifact_input', values);
    }
  }

  Future<Map<String, Object>> searchArtifactInput(int characterIndex) async {
    Map<String, Object> character =
        GsData.getCharacterFromIndex(characterIndex);
    if (character == null) return null;

    Database db = await database;
    List<Map<String, Object>> searchResult = await db.query(
        tableNameArtifactInput,
        where: '$tableColumnArtifactInputCharacterId = ?',
        whereArgs: [character['character_id']]);
    if (searchResult.length <= 0) return null;
    return searchResult[0];
  }

  Future<void> keepMyCharacter(MyCharacter character) async {
    var values = {
      tableColumnMyCharacterNickName: character.nickName,
      tableColumnMyCharacterCharacterId: character.characterId,
      tableColumnMyCharacterLevel: character.levelIndex,
      tableColumnMyCharacterArtifactSands: character.artifactSandsIndex,
      tableColumnMyCharacterArtifactGoblet: character.artifactGobletIndex,
      tableColumnMyCharacterArtifactCirclet: character.artifactCircletIndex,
      tableColumnMyCharacterWeaponId: character.weaponId,
      tableColumnMyCharacterWeaponRefine: character.refineIndex,
      tableColumnMyCharacterArtifactHp: character.artifactHp,
      tableColumnMyCharacterArtifactAttack: character.artifactAttack,
      tableColumnMyCharacterArtifactDefend: character.artifactDefend,
      tableColumnMyCharacterArtifactMastery: character.artifactMastery,
      tableColumnMyCharacterArtifactCritRate: character.artifactCritRate,
      tableColumnMyCharacterArtifactCritDmg: character.artifactCritDmg,
      tableColumnMyCharacterArtifactRecharge: character.artifactRecharge,
      tableColumnMyCharacterSkillALevel: character.skillALevel,
      tableColumnMyCharacterSkillELevel: character.skillELevel,
      tableColumnMyCharacterSkillQLevel: character.skillQLevel,
    };

    Database db = await database;
    if (character.myCharacterId < 0) {
      //db.insert(table, values);
    } else {
      //db.update(tableNameMyCharacter, values, where: );
    }
  }
}
