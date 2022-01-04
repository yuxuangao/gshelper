import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sprintf/sprintf.dart';

import '../common/const.dart';
import '../common/localdata.dart';
import '../object/mycharacter.dart';
import '../data/data.dart';
import '../logic/mycharacter.dart';
import '../part/texticonbutton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
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
        title: Text(Const.TITLE),
        elevation: 0,
        bottomOpacity: 0,
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
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Text(
                Const.TITLE,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text(Const.TITLE_ARTIFACT),
              onTap: () {
                Navigator.pushNamed(context, "/artifact");
              },
            ),
            ListTile(
              title: const Text(Const.TITLE_DAMAGE),
              onTap: () {
                Navigator.pushNamed(context, "/damage");
              },
            ),
          ],
        ),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            ListTile(
              title: Text(
                Const.TITLE_MY_CHARACTER,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            Column(
              children: List.generate(_characterList.length, (index) => _CharacterCard(_characterList[index], _refresh)),
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
                      'assets/images/c_' + _myCharacter.characterId.toString() + '.png',
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
                                  GsData.getConstellationName(Constellation.values[_myCharacter.consetllationIndex]),
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 6, 0, 0),
                                child: Text(
                                  '等级: ' + GsData.getLevelNameFromIndex(_myCharacter.levelIndex),
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
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '角色面板',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(12, 4, 0, 0),
                            child: Column(
                              children: <Widget>[
                                _getCharacterStatRow(Stats.Hp, sprintf('%.0f', [_myCharacterResult.hp])),
                                _getCharacterStatRow(Stats.Attack, sprintf('%.0f', [_myCharacterResult.attack])),
                                _getCharacterStatRow(Stats.Defend, sprintf('%.0f', [_myCharacterResult.defend])),
                                Divider(),
                                _getCharacterStatRow(Stats.Mastery, sprintf('%.0f', [_myCharacterResult.mastery])),
                                _getCharacterStatRow(Stats.Recharge, sprintf('%.1f%%', [_myCharacterResult.recharge + 100])),
                              ],
                            ),
                          ),
                        ),
                        VerticalDivider(
                          thickness: 1,
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(12, 4, 0, 0),
                            child: Column(
                              children: <Widget>[
                                _getCharacterStatRow(Stats.CritRate, sprintf('%.1f%%', [_myCharacterResult.critRate])),
                                _getCharacterStatRow(Stats.CritDmg, sprintf('%.1f%%', [_myCharacterResult.critDmg])),
                                Divider(),
                                _getCharacterStatRow(Stats.DmgBonus, sprintf('%.1f%%', [_myCharacterResult.dmgBonus])),
                                _getCharacterStatRow(Stats.PhyDmgBonus, sprintf('%.1f%%', [_myCharacterResult.phyDmgBonus])),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '技能等级',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(12, 4, 0, 0),
                          child: Column(
                            children: <Widget>[
                              _getCharacterSkillRow('普通攻击', _myCharacter.skillALevel),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(12, 4, 0, 0),
                          child: Column(
                            children: <Widget>[
                              _getCharacterSkillRow('元素战技', _myCharacter.skillELevel),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(12, 4, 0, 0),
                          child: Column(
                            children: <Widget>[
                              _getCharacterSkillRow('元素爆发', _myCharacter.skillQLevel),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 8,
                ),
                Image.asset(
                  'assets/images/w_' + _myCharacter.weaponId.toString() + '.png',
                  scale: 3,
                  width: 60,
                ),
                SizedBox(
                  width: 12,
                ),
                Flexible(
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            _weapon['name'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            GsData.getRefineName(Refine.values[_myCharacter.refineIndex]),
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        (_weapon['specialEffectComent'] as Map<Refine, String>)[Refine.values[_myCharacter.refineIndex]],
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(thickness: 1),
            (_artifactSetList != null && _artifactSetList.length > 0)
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '圣遗物套装效果',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Column(
                          children: List.generate(_artifactSetList.length, (index) {
                            Map<String, Object> artifact = GsData.getArtifactFromId(_artifactSetList[index].keys.elementAt(0));
                            ArtifactSetType setType = _artifactSetList[index].values.elementAt(0);
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 6),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    width: 120,
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          artifact['name'],
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          setType == ArtifactSetType.Set2
                                              ? '二件套'
                                              : setType == ArtifactSetType.Set4
                                                  ? '四件套'
                                                  : '',
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      (artifact['setEffect'] as Map<ArtifactSetType, Map<String, Object>>)[setType]['description'],
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  )
                : Container(
                    width: 0,
                    height: 0,
                  ),
            (_artifactSetList != null && _artifactSetList.length > 0)
                ? Divider(
                    thickness: 1,
                  )
                : Container(
                    width: 0,
                    height: 0,
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
                    Navigator.pushNamed(context, '/mycharacterdamage', arguments: _myCharacter);
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
          width: 70,
          child: Text(
            skillName,
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
}
