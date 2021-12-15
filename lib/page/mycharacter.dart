import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sprintf/sprintf.dart';

import '../common/const.dart';
import '../common/localdata.dart';
import '../object/mycharacter.dart';
import '../data/data.dart';
import '../logic/mycharacter.dart';

class MyCharacterPage extends StatefulWidget {
  @override
  _MyCharacterPage createState() => _MyCharacterPage();
}

class _MyCharacterPage extends State<MyCharacterPage> {
  LocalData _localData = LocalData.instance;
  List<MyCharacter> _characterList = [];

  Future<void> _refresh() async {
    context.loaderOverlay.show();
    var characterList = await _localData.getMyCharacterList();
    setState(() {
      _characterList = characterList;
    });
    context.loaderOverlay.hide();
  }

  @override
  void initState() {
    super.initState();

    Future(() async {
      _refresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Const.TITLE_MY_CHARACTER),
        elevation: 0,
        bottomOpacity: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, "/mycharacteredit").then((value) async {
            await _refresh();
          });
        },
        icon: Icon(Icons.add),
        label: Text('添加角色'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Column(
              children: List.generate(_characterList.length,
                  (index) => CharacterCard(_characterList[index], _refresh)),
            ),
            SizedBox(
              height: 80,
            ),
          ]),
        ),
      ),
    );
  }
}

class CharacterCard extends StatefulWidget {
  final MyCharacter character;
  final Function refresh;

  const CharacterCard(this.character, this.refresh);

  @override
  _CharacterCard createState() => _CharacterCard();
}

class _CharacterCard extends State<CharacterCard> {
  MyCharacter _myCharacter;
  Map<String, Object> _character;
  Map<String, Object> _weapon;
  MyCharacterResult _myCharacterResult;
  LocalData _localData = LocalData.instance;
  bool _needLoadData = false;

  void _loadData() {
    _myCharacter = widget.character;
    _character = GsData.getCharacterFromId(_myCharacter.characterId);
    _weapon = GsData.getWeaponFromId(_myCharacter.weaponId);
    _myCharacterResult =
        MyCharacterCalculator.cal(_myCharacter, _character, _weapon);
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
    if (_myCharacter == null ||
        _character == null ||
        _weapon == null ||
        _myCharacterResult == null) {
      return Container(
        height: 0,
      );
    }
    return Padding(
      padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
                    child: Image.asset(
                      'assets/images/c_' +
                          _myCharacter.characterId.toString() +
                          '.png',
                      height: 60,
                      scale: 3,
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(24, 12, 12, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                                  GsData.getConstellationName(Constellation
                                      .values[_myCharacter.consetllationIndex]),
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 6, 0, 0),
                                child: Text(
                                  '等级: ' +
                                      GsData.getLevelNameFromIndex(
                                          _myCharacter.levelIndex),
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  VerticalDivider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
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
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              height: 1,
            ),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 12, 8, 12),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/w_' +
                              _myCharacter.weaponId.toString() +
                              '.png',
                          scale: 3,
                          width: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text(
                            _weapon['name'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            GsData.getRefineName(
                                Refine.values[_myCharacter.refineIndex]),
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(
                            '圣遗物主属性',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                                child: Text(GsData.getStatName(
                                    GsData.getArtifactSandsMainStatFromIndex(
                                        _myCharacter.artifactSandsIndex))),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                                child: Text(GsData.getStatName(
                                    GsData.getArtifactGlobleMainStatFromIndex(
                                        _myCharacter.artifactGobletIndex))),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                                child: Text(GsData.getStatName(
                                    GsData.getArtifactCircletMainStatFromIndex(
                                        _myCharacter.artifactCircletIndex))),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    thickness: 1,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 16, 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            '角色面板',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 4, 0, 0),
                            child: Column(
                              children: <Widget>[
                                _getCharacterStatRow(Stats.Hp,
                                    sprintf('%.0f', [_myCharacterResult.hp])),
                                _getCharacterStatRow(
                                    Stats.Attack,
                                    sprintf(
                                        '%.0f', [_myCharacterResult.attack])),
                                _getCharacterStatRow(
                                    Stats.Defend,
                                    sprintf(
                                        '%.0f', [_myCharacterResult.defend])),
                                _getCharacterStatRow(
                                    Stats.Mastery,
                                    sprintf(
                                        '%.0f', [_myCharacterResult.mastery])),
                                _getCharacterStatRow(
                                    Stats.CritRate,
                                    sprintf('%.1f%%',
                                        [_myCharacterResult.critRate])),
                                _getCharacterStatRow(
                                    Stats.CritDmg,
                                    sprintf('%.1f%%',
                                        [_myCharacterResult.critDmg])),
                                _getCharacterStatRow(
                                    Stats.Recharge,
                                    sprintf('%.1f%%',
                                        [_myCharacterResult.recharge + 100])),
                                _getCharacterStatRow(
                                    Stats.DmgBonus,
                                    sprintf('%.1f%%',
                                        [_myCharacterResult.dmgBonus])),
                                _getCharacterStatRow(
                                    Stats.PhyDmgBonus,
                                    sprintf('%.1f%%',
                                        [_myCharacterResult.phyDmgBonus])),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Text(
                            '技能等级',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 4, 0, 0),
                            child: Column(
                              children: <Widget>[
                                _getCharacterSkillRow(
                                    '普通攻击', _myCharacter.skillALevel),
                                _getCharacterSkillRow(
                                    '元素战技', _myCharacter.skillELevel),
                                _getCharacterSkillRow(
                                    '元素爆发', _myCharacter.skillQLevel),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, "/mycharacteredit",
                            arguments: _myCharacter)
                        .then((value) async {
                      await widget.refresh();
                      _needLoadData = true;
                    });
                  },
                  icon: Icon(Icons.edit),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 16, 0),
                  child: PopupMenuButton<_MyCharacterMenuItem>(
                    onSelected: (_MyCharacterMenuItem value) async {
                      switch (value) {
                        case _MyCharacterMenuItem.Artifact:
                          _showArtifactDialog();
                          break;
                        case _MyCharacterMenuItem.Damage:
                          break;
                        case _MyCharacterMenuItem.Delete:
                          await _delete();
                          break;
                      }
                    },
                    child: Icon(
                      Icons.more_vert,
                      color: Theme.of(context).primaryColor,
                    ),
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<_MyCharacterMenuItem>>[
                      const PopupMenuItem(
                        value: _MyCharacterMenuItem.Artifact,
                        child: Text('查看圣遗物词条数'),
                      ),
                      const PopupMenuItem(
                        value: _MyCharacterMenuItem.Damage,
                        child: Text('伤害模拟'),
                      ),
                      const PopupMenuItem(
                        value: _MyCharacterMenuItem.Delete,
                        child: Text('删除'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _getCharacterStatRow(Stats stat, String value) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 90,
          child: Text(
            GsData.getStatName(stat),
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _getCharacterSkillRow(String skillName, int value) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 90,
          child: Text(
            skillName,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        Text(
          value.toString(),
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
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
    int columnNumberFirstRow =
        (_myCharacterResult.artifactResult.result.length / 2).floor();
    int index = 0;
    _myCharacterResult.artifactResult.result
        .forEach((Stats stat, double value) {
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
        validStatNameList.add(GsData.getStatNameAbbrevation(stat) +
            (ratio == 1.0 ? '' : '($ratio倍)'));
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
}

enum _MyCharacterMenuItem { Artifact, Damage, Delete }
