import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';

import '../common/localdata.dart';
import '../object/mycharacter.dart';
import '../object/artifact.dart';
import '../data/data.dart';
import '../logic/mycharacter.dart';
import '../part/texticonbutton.dart';

class HomeMyCharacterPage extends StatefulWidget {
  final Function refresh;
  final List<MyCharacter> characterList;
  final bool isLoading;

  HomeMyCharacterPage({Key key, @required this.characterList, @required this.refresh, @required this.isLoading}) : super(key: key);

  @override
  _HomeMyCharacterPage createState() => _HomeMyCharacterPage();
}

class _HomeMyCharacterPage extends State<HomeMyCharacterPage> {
  @override
  void initState() {
    super.initState();

    Future(() async {
      widget.refresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xffeaeaea),
      child: Column(
        children: <Widget>[
          widget.isLoading
              ? Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: widget.characterList.length + 1,
                    itemBuilder: (context, index) => index < widget.characterList.length
                        ? _CharacterCard(widget.characterList[index], widget.refresh)
                        : SizedBox(
                            height: 40,
                          ),
                  ),
                ),
        ],
      ),
    );
  }
}

class _CharacterCard extends StatefulWidget {
  final MyCharacter character;
  final Function refresh;

  const _CharacterCard(this.character, this.refresh);

  @override
  _CharacterCardState createState() => _CharacterCardState();
}

class _CharacterCardState extends State<_CharacterCard> {
  MyCharacter _myCharacter;
  Map<String, Object> _character;
  Map<String, Object> _weapon;
  List<Map<int, ArtifactSetType>> _artifactSetList;
  MyCharacterResult _myCharacterResult;
  LocalData _localData = LocalData.instance;
  bool _needLoadData = false;

  void _loadData() {
    _myCharacter = widget.character;
    _character = GsData.getCharacterFromId(_myCharacter.characterId);
    _weapon = GsData.getWeaponFromId(_myCharacter.weaponId);
    MyCharacterCalculator.adjustMyCharacter(_myCharacter, _character, _weapon);
    _artifactSetList = MyCharacterCalculator.getArtifactSet(_myCharacter);
    _myCharacterResult = MyCharacterCalculator.cal(_myCharacter, _character, _weapon);
    _needLoadData = false;
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    if (_needLoadData) _loadData();
    if (_myCharacter == null || _character == null || _weapon == null || _myCharacterResult == null) {
      return Container(
        height: 0,
      );
    }
    return Card(
      elevation: 0.8,
      shape: RoundedRectangleBorder(),
      margin: EdgeInsets.only(bottom: 5, top: 5),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/mycharacterdetail", arguments: {
                'myCharacter': _myCharacter,
                'character': _character,
                'weapon': _weapon,
                'artifactSetList': _artifactSetList,
                'myCharacterResult': _myCharacterResult,
              });
            },
            splashColor: Colors.white10,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
                    child: Image.asset(
                      GsData.getCharacterFilePath(_myCharacter.characterId),
                      height: 160,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        _character['name'],
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
                            child: Text(
                              GsData.getConstellationName(Constellation.values[_myCharacter.consetllationIndex]),
                              style: _getCharacterPropertyTextStyle(),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 6, 0, 0),
                            child: Text(
                              GsData.getLevelNameFromIndex(_myCharacter.levelIndex),
                              style: _getCharacterPropertyTextStyle(),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '天赋',
                            style: _getCharacterPropertyTextStyle(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            _myCharacter.skillALevel.toString(),
                            style: _getCharacterPropertyTextStyle(),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            _myCharacter.skillELevel.toString(),
                            style: _getCharacterPropertyTextStyle(),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            _myCharacter.skillQLevel.toString(),
                            style: _getCharacterPropertyTextStyle(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '备注',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(6, 2, 0, 0),
                        child: Text(_myCharacter.nickName),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1,
            indent: 30,
            endIndent: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/weapondetail', arguments: _myCharacter);
                },
                splashColor: Colors.white10,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      GsData.getWeaponFilePath(_myCharacter.weaponId),
                      scale: 2,
                      width: 120,
                    ),
                    Text(
                      _weapon['name'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      GsData.getRefineName(Refine.values[_myCharacter.refineIndex]),
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 1,
                        ),
                        _getArtifactIcon(_myCharacter.artifactList[0]),
                        _getArtifactIcon(_myCharacter.artifactList[1]),
                        SizedBox(
                          width: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _getArtifactIcon(_myCharacter.artifactList[2]),
                        _getArtifactIcon(_myCharacter.artifactList[3]),
                        _getArtifactIcon(_myCharacter.artifactList[4]),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Divider(
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextIconButton(
                label: '词条数',
                icon: Icons.menu_book,
                onPressed: () {
                  _showArtifactDialog();
                },
              ),
              TextIconButton(
                label: '伤害模拟',
                icon: Icons.calculate,
                onPressed: () {
                  Navigator.pushNamed(context, '/mycharacterdamage', arguments: {'myCharacter': _myCharacter});
                },
              ),
              TextIconButton(
                label: '角色数据',
                icon: Icons.description,
                onPressed: () {
                  List<Map<String, Object>> characterList = GsData.getCharacterListByRarityOrder();
                  int index = characterList.indexWhere((element) => element['character_id'] == _myCharacter.characterId);
                  Navigator.pushNamed(context, '/databasecharacterdetail', arguments: index);
                },
              ),
              TextIconButton(
                label: '编辑',
                icon: Icons.drive_file_rename_outline,
                onPressed: () {
                  Navigator.pushNamed(context, "/mycharacteredit", arguments: _myCharacter).then((value) async {
                    await widget.refresh();
                    _needLoadData = true;
                  });
                },
              ),
              TextIconButton(
                label: '删除',
                icon: Icons.delete,
                onPressed: () async {
                  await _delete();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getArtifactIcon(Artifact artifact) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/artifactdetail', arguments: artifact);
      },
      splashColor: Colors.white10,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(GsData.getRarityBackgroundFilePath(GsData.getArtifactFromId(artifact.artifactId)['rarity'])),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 2,
                ),
              ),
              child: Image.asset(
                GsData.getArtifactFilePath(artifact.artifactId, artifact.position),
                width: 45,
                height: 45,
                scale: 2,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              width: 60,
              child: Text(
                (GsData.getArtifactFromId(artifact.artifactId)['piece_name'] as Map<ArtifactPosition, String>)[artifact.position] + '\n',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _delete() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: Text('是否删除'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('取消'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              await _localData.deleteMyCharacter(_myCharacter.myCharacterId);
              widget.refresh();
            },
            child: Text('确定'),
          ),
        ],
      ),
    );
  }

  Future<void> _showArtifactDialog() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text('圣遗物词条数'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: _generateResultArea(),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('关闭'),
          ),
        ],
      ),
    );
  }

  List<Widget> _generateResultArea() {
    List<Widget> subColumns1 = [];
    List<Widget> subColumns2 = [];
    int columnNumberFirstRow = (_myCharacterResult.artifactResult.result.length / 2).ceil();
    int index = 0;
    _myCharacterResult.artifactResult.result.forEach((Stats stat, double value) {
      if (index++ < columnNumberFirstRow) {
        subColumns1.add(Column(
          children: <Widget>[
            Text(
              GsData.getStatName(stat),
              style: _getArtifactResultTextStyle(),
            ),
            Text(
              sprintf("%.2f", [value]),
              style: _getArtifactResultTextStyle(),
            ),
          ],
        ));
        subColumns1.add(SizedBox(width: 18));
      } else {
        subColumns2.add(Column(
          children: <Widget>[
            Text(
              GsData.getStatName(stat),
              style: _getArtifactResultTextStyle(),
            ),
            Text(
              sprintf("%.2f", [value]),
              style: _getArtifactResultTextStyle(),
            ),
          ],
        ));
        subColumns2.add(SizedBox(width: 12));
      }
    });

    List<Widget> validStatResultRows = [];
    for (var validStat in _myCharacterResult.artifactResult.validStats) {
      double statResult = 0.0;
      List<String> validStatNameList = [];
      validStat.forEach((Stats stat, double ratio) {
        validStatNameList.add(GsData.getStatNameAbbrevation(stat) + (ratio == 1.0 ? '' : '($ratio倍)'));
        statResult += _myCharacterResult.artifactResult.result[stat] * ratio;
      });
      validStatResultRows.add(Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            validStatNameList.join('，'),
            style: _getArtifactResultTextStyle(),
          ),
          Text(
            sprintf("%.2f", [statResult]),
            style: _getArtifactResultTextStyle(),
          ),
        ],
      ));
      validStatResultRows.add(SizedBox(height: 8));
    }

    List<Widget> result = [
      Padding(
        padding: _getArtifactResultTitleMargin(),
        child: Text(
          '圣遗物词条数',
          style: _getArtifactTitleTextStyle(),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: subColumns1,
      ),
      SizedBox(
        height: 8,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: subColumns2,
      ),
      SizedBox(
        height: 32,
      ),
      Padding(
        padding: _getArtifactResultTitleMargin(),
        child: Text(
          '有效词条数',
          style: _getArtifactTitleTextStyle(),
        ),
      ),
    ];
    result.addAll(validStatResultRows);

    return result;
  }

  EdgeInsetsGeometry _getArtifactResultTitleMargin() {
    return EdgeInsets.fromLTRB(18, 8, 18, 8);
  }

  TextStyle _getArtifactResultTextStyle() {
    return TextStyle(
      fontSize: 14,
    );
  }

  TextStyle _getArtifactTitleTextStyle() {
    return TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle _getCharacterPropertyTextStyle() {
    return TextStyle(color: Colors.black54);
  }
}
