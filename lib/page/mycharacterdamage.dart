import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:sprintf/sprintf.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:mongol/mongol.dart';

import '../common/const.dart';
import '../common/utils.dart';
import '../object/mycharacterdamage.dart';
import '../object/damage.dart';
import '../data/data.dart';
import '../logic/mycharacter.dart';

class MyCharacterDamage extends StatefulWidget {
  @override
  _MyCharacterDamage createState() => _MyCharacterDamage();
}

class _MyCharacterDamage extends State<MyCharacterDamage> {
  MyCharacterDamageInput _input = MyCharacterDamageInput();
  MyCharacterDamageResult _damageResult = MyCharacterDamageResult();

  TextEditingController _enemyInputController = TextEditingController();
  TextEditingController _enemyLevelInputController = TextEditingController();
  TextEditingController _hpInputController = TextEditingController();
  TextEditingController _hpBonusInputController = TextEditingController();
  TextEditingController _attackInputController = TextEditingController();
  TextEditingController _attackBonusInputController = TextEditingController();
  TextEditingController _defendInputController = TextEditingController();
  TextEditingController _defendBonusInputController = TextEditingController();
  TextEditingController _masteryInputController = TextEditingController();
  TextEditingController _rechargeInputController = TextEditingController();
  TextEditingController _critRateInputController = TextEditingController();
  TextEditingController _critDmgInputController = TextEditingController();
  TextEditingController _dmgBonusInputController = TextEditingController();
  TextEditingController _phyDmgBonusInputController = TextEditingController();
  TextEditingController _extraDamageInputController = TextEditingController();
  TextEditingController _resistanceDscreaseInputController = TextEditingController();
  TextEditingController _defendDscreaseInputController = TextEditingController();

  bool _firstLoad = true;
  bool _extraBuffSheet = false;
  int _currentPageSelection = 0;
  int _currentDamageResultSelection = 0;

  void _setInitValue() {
    _enemyInputController.text = GsData.getEnemyNameList()[_input.enemyIndex];
    _enemyLevelInputController.text = _input.enemyLevel.toString();
    _hpInputController.text = _input.hp.toString();
    _hpBonusInputController.text = _input.hpBonus.toString();
    _attackInputController.text = _input.attack.toString();
    _attackBonusInputController.text = _input.attackBouns.toString();
    _defendInputController.text = _input.defend.toString();
    _defendBonusInputController.text = _input.defendBonus.toString();
    _masteryInputController.text = _input.mastery.toString();
    _rechargeInputController.text = _input.recharge.toString();
    _critRateInputController.text = _input.critRate.toString();
    _critDmgInputController.text = _input.critDmg.toString();
    _dmgBonusInputController.text = _input.dmgBonus.toString();
    _phyDmgBonusInputController.text = _input.phyDmgBonus.toString();
    _extraDamageInputController.text = _input.extraDmage.toString();
    _resistanceDscreaseInputController.text = _input.restinanceDecrease.toString();
    _defendDscreaseInputController.text = _input.defendDecrease.toString();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_firstLoad) return;

    _input.myCharacter = ModalRoute.of(context).settings.arguments;
    _input.character = GsData.getCharacterFromId(_input.myCharacter.characterId);
    _input.weapon = GsData.getWeaponFromId(_input.myCharacter.weaponId);
    _input.skill = GsData.getSkillFromCharacterId(_input.myCharacter.characterId);
    _input.constellation = GsData.getConstellationFromCharacterId(_input.myCharacter.characterId, Constellation.values[_input.myCharacter.consetllationIndex]);
    _input.myCharacterResult = MyCharacterCalculator.cal(_input.myCharacter, _input.character, _input.weapon);
    _generateBuffList();
    _setInitValue();
    _firstLoad = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Const.TITLE_MY_CHARACTER_DAMAGE),
        elevation: 0,
        bottomOpacity: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: MaterialSegmentedControl(
                children: {
                  0: Text('伤害选项', style: _getTabTextStyle()),
                  1: Text('计算结果', style: _getTabTextStyle()),
                },
                selectionIndex: _currentPageSelection,
                borderColor: Theme.of(context).primaryColor,
                selectedColor: Theme.of(context).primaryColor,
                unselectedColor: Colors.white,
                borderRadius: 0.0,
                horizontalPadding: EdgeInsets.all(0),
                verticalOffset: 14,
                onSegmentChosen: (index) {
                  setState(() {
                    _currentPageSelection = index;
                  });
                  if (index == 1) {
                    _cal();
                  }
                },
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: _currentPageSelection,
                children: <Widget>[
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        _CharacterCard(_input),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: _getCardTitleMargin(),
                                    child: Text(
                                      '敌人',
                                      style: _getCardTitleStyle(),
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      child: Padding(
                                        padding: _getInputMargin(),
                                        child: TextFormField(
                                          readOnly: true,
                                          controller: _enemyInputController,
                                          decoration: InputDecoration(
                                            border: UnderlineInputBorder(),
                                            floatingLabelBehavior: FloatingLabelBehavior.always,
                                            label: Text("敌人"),
                                            contentPadding: _getTextFieldPadding(),
                                          ),
                                          onTap: () {
                                            _showPicker(GsData.getEnemyNameList(), _input.enemyIndex, (picker, selected) {
                                              _input.enemyIndex = selected[0];
                                              _enemyInputController.text = picker.getSelectedValues()[0].toString();
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: _getInputMargin(),
                                        child: TextFormField(
                                          controller: _enemyLevelInputController,
                                          keyboardType: TextInputType.number,
                                          inputFormatters: [
                                            Utils.getNumberInputFormatter(),
                                          ],
                                          decoration: InputDecoration(
                                            border: UnderlineInputBorder(),
                                            floatingLabelBehavior: FloatingLabelBehavior.always,
                                            label: Text("敌人等级"),
                                            contentPadding: _getTextFieldPadding(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: _getCardTitleMargin(),
                                    child: Text(
                                      'buff',
                                      style: _getCardTitleStyle(),
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                Column(
                                  children: List.generate(
                                    _input.buffList.length,
                                    (index) => CheckboxListTile(
                                      value: _input.buffActiveList[index],
                                      onChanged: (isChecked) {
                                        setState(() {
                                          _input.buffActiveList[index] = isChecked;
                                        });
                                      },
                                      isThreeLine: true,
                                      controlAffinity: ListTileControlAffinity.leading,
                                      title: Text(
                                        _input.buffList[index]['skillName'].toString() +
                                            (_input.buffList[index]['name'] == null || _input.buffList[index]['name'] == ''
                                                ? ''
                                                : '（' + _input.buffList[index]['name'] + '）'),
                                      ),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            _input.buffList[index]['skillDescription'],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            _input.buffList[index]['buffTypeName'].toString() +
                                                '： ' +
                                                _input.buffList[index]['statName'].toString() +
                                                '  ' +
                                                _input.buffList[index]['valueString'].toString() +
                                                (Const.STATS_SHOW_PERCENT.contains(_input.buffList[index]['stat']) ? '%' : ''),
                                          ),
                                          Text(
                                            '生效范围： ' + _input.buffList[index]['damageTypeName'].toString(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                          child: Card(
                            child: ExpansionPanelList(
                              expansionCallback: (int index, bool isExpanded) {
                                setState(() {
                                  _extraBuffSheet = !isExpanded;
                                });
                              },
                              expandedHeaderPadding: EdgeInsets.all(0),
                              children: <ExpansionPanel>[
                                ExpansionPanel(
                                  canTapOnHeader: true,
                                  isExpanded: _extraBuffSheet,
                                  headerBuilder: (context, isExpanded) => Padding(
                                    padding: _getCardTitleMargin(),
                                    child: Text(
                                      '额外buff',
                                      style: _getCardTitleStyle(),
                                    ),
                                  ),
                                  body: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Divider(
                                        thickness: 1,
                                        height: 1,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          _getExtraBuffInput(_hpInputController, '生命值'),
                                          _getExtraBuffInput(_hpBonusInputController, '生命值%'),
                                          _getExtraBuffInput(_defendInputController, '防御力'),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          _getExtraBuffInput(_attackInputController, '攻击力'),
                                          _getExtraBuffInput(_attackBonusInputController, '攻击力%'),
                                          _getExtraBuffInput(_defendBonusInputController, '防御力%'),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          _getExtraBuffInput(_critRateInputController, '暴击率%'),
                                          _getExtraBuffInput(_critDmgInputController, '暴击伤害%'),
                                          _getExtraBuffInput(_masteryInputController, '元素精通'),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          _getExtraBuffInput(_dmgBonusInputController, '元素伤害%'),
                                          _getExtraBuffInput(_phyDmgBonusInputController, '物理伤害%'),
                                          _getExtraBuffInput(_rechargeInputController, '充能效率%'),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          _getExtraBuffInput(_extraDamageInputController, '额外伤害'),
                                          _getExtraBuffInput(_resistanceDscreaseInputController, '减抗%'),
                                          _getExtraBuffInput(_defendDscreaseInputController, '减防%'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: double.infinity,
                          child: MaterialSegmentedControl(
                            children: _generateDamageResultTypeMap(),
                            selectionIndex: _currentDamageResultSelection,
                            borderColor: Theme.of(context).primaryColor,
                            selectedColor: Theme.of(context).primaryColor,
                            unselectedColor: Colors.white,
                            borderRadius: 32.0,
                            onSegmentChosen: (index) {
                              setState(() {
                                _currentDamageResultSelection = index;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        _generateDamageResult(),
                        SizedBox(
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _generateBuffList() {
    Map weaponBuffStats = (_input.weapon['specialEffect'] as Map<Refine, Object>)[Refine.values[_input.myCharacter.refineIndex]];
    for (MapEntry<Stats, double> buffEntry in weaponBuffStats.entries) {
      if ((_input.weapon['specialEffectAlways'] as List<dynamic>).contains(buffEntry.key)) continue;
      Map<String, Object> buff = {
        'skillName': '武器特效',
        'name': '',
        'skillDescription': (_input.weapon['specialEffectComent'] as Map<Refine, String>)[Refine.values[_input.myCharacter.refineIndex]],
        'stat': buffEntry.key,
        'statName': GsData.getStatName(buffEntry.key),
        'value': buffEntry.value,
        'valueString': sprintf(Const.STATS_SHOW_INTEGER.contains(buffEntry.key) ? '%.0f' : '%.2f', [buffEntry.value]),
        'buffType': BuffType.BuffForMe,
        'buffTypeName': GsData.getBuffTypeName(BuffType.BuffForMe),
        'damageType': (_input.weapon['specialEffectDamageType'] as Map<Stats, Object>)[buffEntry.key],
      };
      buff['damageTypeName'] =
          List.generate((buff['damageType'] as List<DamageType>).length, (index) => GsData.getDamageTypeName((buff['damageType'] as List<DamageType>)[index]))
              .join('，');
      _input.buffList.add(buff);
      _input.buffActiveList.add(true);
    }

    List<Map<int, ArtifactSetType>> artifactSetList = MyCharacterCalculator.getArtifactSet(_input.myCharacter);
    for (Map<int, ArtifactSetType> artifactSetMap in artifactSetList) {
      int artifactId = artifactSetMap.keys.elementAt(0);
      Map<String, Object> artifact = GsData.getArtifactFromId(artifactId);
      ArtifactSetType setType = artifactSetMap.values.elementAt(0);
      Map<String, Object> setEffect = (artifact['setEffect'] as Map<ArtifactSetType, Object>)[setType];

      if ((setEffect['effect'] as Map).length <= 0) continue;
      if ((setEffect['effect'] as Map).length - (setEffect['effectAlways'] as List).length <= 0) continue;

      for (MapEntry<Stats, double> effectEntry in (setEffect['effect'] as Map<Stats, double>).entries) {
        Stats stat = effectEntry.key;
        double value = effectEntry.value;
        if ((setEffect['effectAlways'] as List<dynamic>).contains(stat)) continue;

        Map<String, Object> buff = {
          'skillName': artifact['name'],
          'name': setType == ArtifactSetType.Set2
              ? '二件套'
              : setType == ArtifactSetType.Set4
                  ? '四件套'
                  : '',
          'skillDescription': setEffect['description'],
          'stat': stat,
          'statName': GsData.getStatName(stat),
          'value': value,
          'valueString': sprintf(Const.STATS_SHOW_INTEGER.contains(stat) ? '%.0f' : '%.2f', [value]),
          'buffType': BuffType.BuffForMe,
          'buffTypeName': GsData.getBuffTypeName(BuffType.BuffForMe),
          'damageType': (setEffect['damageType'] as Map<Stats, Object>)[stat],
        };
        buff['damageTypeName'] =
            List.generate((buff['damageType'] as List<DamageType>).length, (index) => GsData.getDamageTypeName((buff['damageType'] as List<DamageType>)[index]))
                .join('，');
        _input.buffList.add(buff);
        _input.buffActiveList.add(true);
      }
    }

    if (_input.skill == null) return;

    for (MapEntry<SkillType, Object> skillMap in _input.skill.entries) {
      SkillType skillType = skillMap.key;
      Object skill = skillMap.value;

      if (skillType == SkillType.Passive) {
        for (Map<String, Object> passiveSkill in skill) {
          for (Map<String, Object> buff in passiveSkill['buff']) {
            Map<String, Object> newBuff = {...buff};
            newBuff['skillName'] = '被动技能：' + passiveSkill['name'];
            newBuff['skillDescription'] = passiveSkill['description'];
            newBuff['name'] = '';
            newBuff['statName'] = GsData.getStatName(newBuff['stat']);
            newBuff['valueString'] = sprintf(Const.STATS_SHOW_INTEGER.contains(newBuff['stat']) ? '%.0f' : '%.2f', [newBuff['value']]);
            newBuff['buffTypeName'] = GsData.getBuffTypeName(newBuff['buffType']);
            newBuff['damageTypeName'] = List.generate(
                    (newBuff['damageType'] as List<DamageType>).length, (index) => GsData.getDamageTypeName((newBuff['damageType'] as List<DamageType>)[index]))
                .join('，');
            _input.buffList.add(newBuff);
            _input.buffActiveList.add(true);
          }
        }
      } else {
        for (Map<String, Object> buff in (skill as Map<String, Object>)['buff']) {
          Map<String, Object> newBuff = {...buff};
          switch (skillType) {
            case SkillType.SkillA:
              newBuff['skillName'] = '普通攻击：' + (skill as Map<String, Object>)['name'];
              newBuff['value'] = Utils.getSkillValue(newBuff['value'], _input.myCharacter.skillALevel);
              break;
            case SkillType.SkillE:
              newBuff['skillName'] = '元素战技：' + (skill as Map<String, Object>)['name'];
              newBuff['value'] = Utils.getSkillValue(newBuff['value'], _input.myCharacter.skillELevel);
              break;
            case SkillType.SkillQ:
              newBuff['skillName'] = '元素爆发：' + (skill as Map<String, Object>)['name'];
              newBuff['value'] = Utils.getSkillValue(newBuff['value'], _input.myCharacter.skillQLevel);
              break;
            default:
              newBuff['skillName'] = (skill as Map<String, Object>)['name'];
          }
          newBuff['skillDescription'] = (skill as Map<String, Object>)['description'];
          newBuff['statName'] = GsData.getStatName(newBuff['stat']);
          newBuff['valueString'] = sprintf(Const.STATS_SHOW_INTEGER.contains(newBuff['stat']) ? '%.0f' : '%.2f', [newBuff['value']]);
          newBuff['buffTypeName'] = GsData.getBuffTypeName(newBuff['buffType']);
          newBuff['damageTypeName'] = List.generate(
                  (newBuff['damageType'] as List<DamageType>).length, (index) => GsData.getDamageTypeName((newBuff['damageType'] as List<DamageType>)[index]))
              .join('，');
          _input.buffList.add(newBuff);
          _input.buffActiveList.add(true);
        }
      }
    }

    if (_input.constellation == null) return;

    for (MapEntry<Constellation, Object> constellationMap in _input.constellation.entries) {
      int constellationIndex = constellationMap.key.index;
      Map<String, Object> constellation = constellationMap.value;
      for (Map<String, Object> buff in constellation['buff']) {
        Map<String, Object> newBuff = {...buff};
        newBuff['skillName'] = '命座' + Utils.generateNumberCharacter(constellationIndex) + '：' + constellation['name'];
        newBuff['skillDescription'] = constellation['description'];
        newBuff['name'] = '';
        newBuff['statName'] = GsData.getStatName(newBuff['stat']);
        newBuff['valueString'] = sprintf(Const.STATS_SHOW_INTEGER.contains(newBuff['stat']) ? '%.0f' : '%.2f', [newBuff['value']]);
        newBuff['buffTypeName'] = GsData.getBuffTypeName(newBuff['buffType']);
        newBuff['damageTypeName'] = List.generate(
                (newBuff['damageType'] as List<DamageType>).length, (index) => GsData.getDamageTypeName((newBuff['damageType'] as List<DamageType>)[index]))
            .join('，');
        _input.buffList.add(newBuff);
        _input.buffActiveList.add(true);
      }
    }
  }

  Widget _generateDamageResult() {
    double lineHeight = 40;
    List<Widget> columnSkillNameList = [
      Container(
        height: lineHeight,
        child: Center(
          child: Text(''),
        ),
      )
    ];
    List<Widget> columnHitNameList = [
      Container(
        height: lineHeight,
        child: Center(
          child: Text(''),
        ),
      )
    ];
    List<Widget> columnDmgWithoutCrit = [
      Container(
        height: lineHeight,
        child: Center(
          child: Text(
            '未暴击伤害',
            textAlign: TextAlign.center,
          ),
        ),
      )
    ];
    List<Widget> columnDmgWithCrit = [
      Container(
        height: lineHeight,
        child: Center(
          child: Text(
            '暴击时伤害',
            textAlign: TextAlign.center,
          ),
        ),
      )
    ];
    List<Widget> columnDmgAvg = [
      Container(
        height: lineHeight,
        child: Center(
          child: Text(
            '平均伤害',
            textAlign: TextAlign.center,
          ),
        ),
      )
    ];

    Map<String, Map<String, DamageResult>> damageResult = {};
    if (_currentDamageResultSelection == 0) {
      damageResult = _damageResult.physicalResult;
    } else if (_currentDamageResultSelection == 1) {
      damageResult = _damageResult.elementResult;
    } else {
      damageResult = _damageResult.reactionResult[_damageResult.reactionResult.keys.elementAt(_currentDamageResultSelection - 2)];
    }

    for (MapEntry<String, Map<String, DamageResult>> skillEntry in damageResult.entries) {
      if (skillEntry.value.length <= 0) continue;
      columnSkillNameList.add(Container(
        height: lineHeight * skillEntry.value.length,
        child: Center(
          child: MongolText(skillEntry.key),
        ),
      ));
      for (MapEntry<String, DamageResult> hitMap in skillEntry.value.entries) {
        DamageResult hitDamageResult = hitMap.value;
        columnHitNameList.add(Container(
          height: lineHeight,
          child: Center(
            child: Text(
              hitMap.key,
              textAlign: TextAlign.center,
            ),
          ),
        ));
        columnDmgWithoutCrit.add(Container(
          height: lineHeight,
          child: Center(
            child: Text(sprintf('%.0f', [hitDamageResult.damageWithoutCrit])),
          ),
        ));
        columnDmgWithCrit.add(Container(
          height: lineHeight,
          child: Center(
            child: Text(sprintf('%.0f', [hitDamageResult.damageWithCrit])),
          ),
        ));
        columnDmgAvg.add(Container(
          height: lineHeight,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(right: 8),
              child: Text(
                sprintf('%.0f', [hitDamageResult.damageAverage]),
              ),
            ),
          ),
        ));
      }
      columnSkillNameList.add(Divider(thickness: 1));
      columnHitNameList.add(Divider(thickness: 1));
      columnDmgWithoutCrit.add(Divider(thickness: 1));
      columnDmgWithCrit.add(Divider(thickness: 1));
      columnDmgAvg.add(Divider(thickness: 1));
    }

    columnSkillNameList.removeLast();
    columnHitNameList.removeLast();
    columnDmgWithoutCrit.removeLast();
    columnDmgWithCrit.removeLast();
    columnDmgAvg.removeLast();

    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          child: Column(
            children: columnSkillNameList,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Column(
            children: columnHitNameList,
          ),
        ),
        Flexible(
          child: Column(
            children: columnDmgWithoutCrit,
          ),
        ),
        Flexible(
          child: Column(
            children: columnDmgWithCrit,
          ),
        ),
        Flexible(
          child: Column(
            children: columnDmgAvg,
          ),
        ),
      ],
    );
  }

  Map<int, Widget> _generateDamageResultTypeMap() {
    Map<int, Widget> result = {
      0: Text('物理'),
      1: Text(GsData.getElementName(_input.character['element']) + '元素'),
    };
    int index = 2;
    for (String reactionName in _damageResult.reactionResult.keys) {
      result.addAll({
        index++: Text(reactionName),
      });
    }
    return result;
  }

  void _cal() {
    _input.enemyLevel = int.tryParse(_enemyLevelInputController.text) ?? 90;
    _input.hp = double.tryParse(_hpInputController.text) ?? 0.0;
    _input.hpBonus = double.tryParse(_hpBonusInputController.text) ?? 0.0;
    _input.defend = double.tryParse(_defendInputController.text) ?? 0.0;
    _input.defendBonus = double.tryParse(_defendBonusInputController.text) ?? 0.0;
    _input.attack = double.tryParse(_attackInputController.text) ?? 0.0;
    _input.attackBouns = double.tryParse(_attackBonusInputController.text) ?? 0.0;
    _input.critRate = double.tryParse(_critRateInputController.text) ?? 0.0;
    _input.critDmg = double.tryParse(_critDmgInputController.text) ?? 0.0;
    _input.mastery = double.tryParse(_masteryInputController.text) ?? 0.0;
    _input.dmgBonus = double.tryParse(_dmgBonusInputController.text) ?? 0.0;
    _input.phyDmgBonus = double.tryParse(_phyDmgBonusInputController.text) ?? 0.0;
    _input.recharge = double.tryParse(_rechargeInputController.text) ?? 0.0;
    _input.extraDmage = double.tryParse(_extraDamageInputController.text) ?? 0.0;
    _input.restinanceDecrease = double.tryParse(_resistanceDscreaseInputController.text) ?? 0.0;
    _input.defendDecrease = double.tryParse(_defendDscreaseInputController.text) ?? 0.0;
    MyCharacterDamageResult damageResult = MyCharacterCalculator.calDamage(_input);
    setState(() {
      _damageResult = damageResult;
    });
  }

  void _showPicker(List<dynamic> data, int selectedIndex, PickerConfirmCallback onConfirm) {
    new Picker(
      adapter: data is List<PickerItem> ? PickerDataAdapter<dynamic>(data: data) : PickerDataAdapter<dynamic>(pickerdata: data),
      selecteds: [max(selectedIndex, 0)],
      hideHeader: true,
      title: new Text("请选择"),
      cancelText: "取消",
      confirmText: "确认",
      onConfirm: onConfirm,
      itemExtent: 35,
      height: 200,
      diameterRatio: 2.0,
      squeeze: 1.0,
    ).showDialog(context);
  }

  Widget _getExtraBuffInput(TextEditingController inputController, String title) {
    return Flexible(
      child: Padding(
        padding: _getInputMargin(),
        child: TextFormField(
          controller: inputController,
          keyboardType: TextInputType.number,
          inputFormatters: [
            Utils.getNumberInputFormatter(),
          ],
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            label: Text(title),
            contentPadding: _getTextFieldPadding(),
          ),
        ),
      ),
    );
  }

  EdgeInsetsGeometry _getCardTitleMargin() {
    return EdgeInsets.fromLTRB(12, 12, 12, 8);
  }

  EdgeInsetsGeometry _getInputMargin() {
    return EdgeInsets.fromLTRB(8, 0, 8, 12);
  }

  EdgeInsetsGeometry _getTextFieldPadding() {
    return EdgeInsets.fromLTRB(8, 16, 8, 4);
  }

  TextStyle _getCardTitleStyle() {
    return TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle _getTabTextStyle() {
    return TextStyle(
      fontSize: 16,
    );
  }
}

class _CharacterCard extends StatelessWidget {
  final MyCharacterDamageInput _input;

  const _CharacterCard(this._input) : assert(_input != null);

  Widget build(BuildContext context) {
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
                      'assets/images/c_' + _input.myCharacter.characterId.toString() + '.png',
                      height: 60,
                      scale: 3,
                    ),
                  ),
                  SizedBox(
                    width: 180,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(24, 12, 12, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            _input.character['name'],
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
                                  GsData.getConstellationName(Constellation.values[_input.myCharacter.consetllationIndex]),
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 6, 0, 0),
                                child: Text(
                                  '等级: ' + GsData.getLevelNameFromIndex(_input.myCharacter.levelIndex),
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
                          child: Text(_input.myCharacter.nickName),
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
                          'assets/images/w_' + _input.myCharacter.weaponId.toString() + '.png',
                          scale: 3,
                          width: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text(
                            _input.weapon['name'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            GsData.getRefineName(Refine.values[_input.myCharacter.refineIndex]),
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
                                child: Text(GsData.getStatName(GsData.getArtifactSandsMainStatFromIndex(_input.myCharacter.artifactSandsIndex))),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                                child: Text(GsData.getStatName(GsData.getArtifactGobletMainStatFromIndex(_input.myCharacter.artifactGobletIndex))),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                                child: Text(GsData.getStatName(GsData.getArtifactCircletMainStatFromIndex(_input.myCharacter.artifactCircletIndex))),
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
                                _getCharacterStatRow(Stats.Hp, sprintf('%.0f', [_input.myCharacterResult.hp])),
                                _getCharacterStatRow(Stats.Attack, sprintf('%.0f', [_input.myCharacterResult.attack])),
                                _getCharacterStatRow(Stats.Defend, sprintf('%.0f', [_input.myCharacterResult.defend])),
                                _getCharacterStatRow(Stats.Mastery, sprintf('%.0f', [_input.myCharacterResult.mastery])),
                                _getCharacterStatRow(Stats.HealingBonus, sprintf('%.1f', [_input.myCharacterResult.healingBonus])),
                                _getCharacterStatRow(Stats.CritRate, sprintf('%.1f%%', [_input.myCharacterResult.critRate])),
                                _getCharacterStatRow(Stats.CritDmg, sprintf('%.1f%%', [_input.myCharacterResult.critDmg])),
                                _getCharacterStatRow(Stats.Recharge, sprintf('%.1f%%', [_input.myCharacterResult.recharge + 100])),
                                _getCharacterStatRow(Stats.DmgBonus, sprintf('%.1f%%', [_input.myCharacterResult.dmgBonus])),
                                _getCharacterStatRow(Stats.PhyDmgBonus, sprintf('%.1f%%', [_input.myCharacterResult.phyDmgBonus])),
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
                                _getCharacterSkillRow('普通攻击', _input.myCharacter.skillALevel),
                                _getCharacterSkillRow('元素战技', _input.myCharacter.skillELevel),
                                _getCharacterSkillRow('元素爆发', _input.myCharacter.skillQLevel),
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
}
