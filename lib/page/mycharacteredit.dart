import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:easy_localization/easy_localization.dart';

import '../common/const.dart';
import '../common/utils.dart';
import '../common/localdata.dart';
import '../data/data.dart';
import '../object/mycharacter.dart';

class MyCharacterEditPage extends StatefulWidget {
  @override
  _MyCharacterEditPage createState() => _MyCharacterEditPage();
}

enum _InputFlags {
  character,
  level,
  constellation,
  nickName,
  artifactFlower,
  artifactPlume,
  artifactSands,
  artifactGoblet,
  artifactCirclet,
  weapon,
  refine,
  skillA,
  skillE,
  skillQ,
}

class _MyCharacterEditPage extends State<MyCharacterEditPage> {
  Map<String, Object> _character = null;

  MyCharacter _myCharacter;
  final LocalData _localData = LocalData.instance;

  final TextEditingController _characterInputController = TextEditingController();
  final TextEditingController _levelInputController = TextEditingController();
  final TextEditingController _constellationInputController = TextEditingController();
  final TextEditingController _nickNameInputController = TextEditingController();
  final TextEditingController _weaponInputController = TextEditingController();
  final TextEditingController _refineLevelInputController = TextEditingController();
  final TextEditingController _skillALevelInputController = TextEditingController();
  final TextEditingController _skillELevelInputController = TextEditingController();
  final TextEditingController _skillQLevelInputController = TextEditingController();
  final List<TextEditingController> _artifactMainInputControllerList = List.generate(5, (index) => TextEditingController());
  final List<TextEditingController> _artifactMainTypeInputControllerList = List.generate(5, (index) => TextEditingController());
  final List<TextEditingController> _artifactSubStatInputControllerList = List.generate(20, (index) => TextEditingController());
  final List<TextEditingController> _artifactSubValueInputControllerList = List.generate(20, (index) => TextEditingController());

  bool _changed = false;
  bool _editMode = false;
  bool _firstLoad = true;
  List<_InputFlags> _inputErrorFlags = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_firstLoad) return;
    _myCharacter = ModalRoute.of(context).settings.arguments;
    if (_myCharacter == null) {
      _myCharacter = MyCharacter();
    } else {
      _editMode = true;
      _character = GsData.getCharacterFromId(_myCharacter.characterId);
      _characterInputController.text = _character['name'];
      _myCharacter.weaponIndex = GsData.getWeaponIndexFromId(_myCharacter.weaponId);
      if (_myCharacter.weaponIndex >= 0) {
        _weaponInputController.text = GsData.getWeaponFromId(_myCharacter.weaponId)['name'];
      }
      _levelInputController.text = GsData.getLevelNameFromIndex(_myCharacter.levelIndex);
      _constellationInputController.text = GsData.getConstellationName(Constellation.values[_myCharacter.consetllationIndex]);
      _nickNameInputController.text = _myCharacter.nickName;
      _refineLevelInputController.text = GsData.getRefineName(Refine.values[_myCharacter.refineIndex]);
      List<String> artifactNameList = GsData.getArtifactTypeNameList();
      for (int i = 0; i < _myCharacter.artifactMainTypeIndexList.length; i++) {
        _artifactMainTypeInputControllerList[i].text =
            _myCharacter.artifactMainTypeIndexList[i] < 0 || _myCharacter.artifactMainTypeIndexList[i] >= artifactNameList.length
                ? ''
                : artifactNameList[_myCharacter.artifactMainTypeIndexList[i]];
      }
      _artifactMainInputControllerList[0].text = GsData.getStatName(GsData.getArtifactFlowerMainStatFromIndex(_myCharacter.artifactMainStatIndexList[0]));
      _artifactMainInputControllerList[1].text = GsData.getStatName(GsData.getArtifactPlumeMainStatFromIndex(_myCharacter.artifactMainStatIndexList[1]));
      _artifactMainInputControllerList[2].text = GsData.getStatName(GsData.getArtifactSandsMainStatFromIndex(_myCharacter.artifactMainStatIndexList[2]));
      _artifactMainInputControllerList[3].text = GsData.getStatName(GsData.getArtifactGobletMainStatFromIndex(_myCharacter.artifactMainStatIndexList[3]));
      _artifactMainInputControllerList[4].text = GsData.getStatName(GsData.getArtifactCircletMainStatFromIndex(_myCharacter.artifactMainStatIndexList[4]));
      for (int i = 0; i < _myCharacter.artifactSubStatIndexList.length; i++) {
        _artifactSubStatInputControllerList[i].text = GsData.getStatName(GsData.getArtifactSubStatFromIndex(_myCharacter.artifactSubStatIndexList[i]));
        _artifactSubValueInputControllerList[i].text = _myCharacter.artifactSubValueList[i].toString();
      }
      _skillALevelInputController.text = _myCharacter.skillALevel.toString();
      _skillELevelInputController.text = _myCharacter.skillELevel.toString();
      _skillQLevelInputController.text = _myCharacter.skillQLevel.toString();
    }
    _firstLoad = false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return _willPop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(_editMode ? 't_my_character_edit'.tr() : 't_my_character_add'.tr()),
          bottomOpacity: 0,
          leading: IconButton(
            onPressed: () async {
              bool _didQuit = await _willPop();
              if (_didQuit) {
                Navigator.pop(context);
              }
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: _save,
              icon: Text(
                'l_save',
                style: TextStyle(
                  fontSize: 16,
                ),
              ).tr(),
              iconSize: 52,
              padding: EdgeInsets.all(2),
            ),
          ],
        ),
        body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: _getCardMargin(),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          child: Padding(
                            padding: _getCardTitleMargin(),
                            child: Text(
                              'l_character',
                              style: _getCardTitleStyle(),
                            ).tr(),
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
                                  enabled: !_editMode,
                                  controller: _characterInputController,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: _inputErrorFlags.contains(_InputFlags.character) ? Colors.red : Colors.black38)),
                                    labelStyle: TextStyle(color: _inputErrorFlags.contains(_InputFlags.character) ? Colors.red : Colors.black54),
                                    label: Text("l_character").tr(),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(GsData.getCharacterNames(), _myCharacter.characterIndex, (picker, selected) {
                                      _changed = true;
                                      _myCharacter.characterIndex = selected[0];
                                      _character = GsData.getCharacterFromIndex(selected[0]);
                                      _myCharacter.characterId = _character['character_id'];
                                      _characterInputController.text = picker.getSelectedValues()[0].toString();
                                      _myCharacter.weaponId = -1;
                                      _myCharacter.weaponIndex = -1;
                                      _weaponInputController.text = '';
                                    });
                                  },
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  readOnly: true,
                                  controller: _levelInputController,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: _inputErrorFlags.contains(_InputFlags.level) ? Colors.red : Colors.black38)),
                                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                                    labelStyle: TextStyle(color: _inputErrorFlags.contains(_InputFlags.level) ? Colors.red : Colors.black54),
                                    label: Text("l_level").tr(),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(GsData.getLevels(), _myCharacter.levelIndex, (picker, selected) {
                                      _changed = true;
                                      _myCharacter.levelIndex = selected[0];
                                      _levelInputController.text = picker.getSelectedValues()[0].toString();
                                    });
                                  },
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  readOnly: true,
                                  controller: _constellationInputController,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: _inputErrorFlags.contains(_InputFlags.constellation) ? Colors.red : Colors.black38)),
                                    labelStyle: TextStyle(color: _inputErrorFlags.contains(_InputFlags.constellation) ? Colors.red : Colors.black54),
                                    label: Text("l_constellations").tr(),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(GsData.getConstellationNameList(), _myCharacter.consetllationIndex, (picker, selected) {
                                      _changed = true;
                                      _myCharacter.consetllationIndex = selected[0];
                                      _constellationInputController.text = picker.getSelectedValues()[0].toString();
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _nickNameInputController,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: _inputErrorFlags.contains(_InputFlags.nickName) ? Colors.red : Colors.black38)),
                                    labelStyle: TextStyle(color: _inputErrorFlags.contains(_InputFlags.nickName) ? Colors.red : Colors.black54),
                                    label: Text("l_comments").tr(),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onChanged: (text) {
                                    _changed = true;
                                  },
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
                  padding: _getCardMargin(),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          child: Padding(
                            padding: _getCardTitleMargin(),
                            child: Text(
                              'l_weapon',
                              style: _getCardTitleStyle(),
                            ).tr(),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  readOnly: true,
                                  controller: _weaponInputController,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: _inputErrorFlags.contains(_InputFlags.weapon) ? Colors.red : Colors.black38)),
                                    labelStyle: TextStyle(color: _inputErrorFlags.contains(_InputFlags.weapon) ? Colors.red : Colors.black54),
                                    label: Text("l_weapon_equipped").tr(),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(
                                        GsData.getWeaponNameListByType(_character != null && _character['weapon'] != null ? _character['weapon'] : null),
                                        _myCharacter.weaponIndex, (picker, selected) {
                                      _changed = true;
                                      _myCharacter.weaponIndex = selected[0];
                                      Map<String, Object> weapon = GsData.getWeaponFromName(picker.getSelectedValues()[0].toString());
                                      _myCharacter.weaponId = weapon['weapon_id'];
                                      _weaponInputController.text = picker.getSelectedValues()[0].toString();
                                    });
                                  },
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  readOnly: true,
                                  controller: _refineLevelInputController,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: _inputErrorFlags.contains(_InputFlags.refine) ? Colors.red : Colors.black38)),
                                    labelStyle: TextStyle(color: _inputErrorFlags.contains(_InputFlags.refine) ? Colors.red : Colors.black54),
                                    label: Text("l_refine_level").tr(),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(GsData.getRefineNameList(), _myCharacter.refineIndex, (picker, selected) {
                                      _changed = true;
                                      _myCharacter.refineIndex = selected[0];
                                      _refineLevelInputController.text = picker.getSelectedValues()[0].toString();
                                    });
                                  },
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
                _generateArtifactInputCard('c_a_flower'.tr(), GsData.getArtifactFlowerMainStatNameList(), _InputFlags.artifactFlower, 0),
                _generateArtifactInputCard('c_a_plume'.tr(), GsData.getArtifactPlumeMainStatNameList(), _InputFlags.artifactPlume, 1),
                _generateArtifactInputCard('c_a_sands'.tr(), GsData.getArtifactSandsMainStatNameList(), _InputFlags.artifactSands, 2),
                _generateArtifactInputCard('c_a_goblet'.tr(), GsData.getArtifactGobletMainStatNameList(), _InputFlags.artifactGoblet, 3),
                _generateArtifactInputCard('c_a_circlet'.tr(), GsData.getArtifactCircletMainStatNameList(), _InputFlags.artifactCirclet, 4),
                Padding(
                  padding: _getCardMargin(),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          child: Padding(
                            padding: _getCardTitleMargin(),
                            child: Text(
                              'l_skill_level',
                              style: _getCardTitleStyle(),
                            ).tr(),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _skillALevelInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: _inputErrorFlags.contains(_InputFlags.skillA) ? Colors.red : Colors.black38)),
                                    labelStyle: TextStyle(color: _inputErrorFlags.contains(_InputFlags.skillA) ? Colors.red : Colors.black54),
                                    label: Text("c_st_skilla").tr(),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onChanged: (text) {
                                    _changed = true;
                                  },
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _skillELevelInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: _inputErrorFlags.contains(_InputFlags.skillE) ? Colors.red : Colors.black38)),
                                    labelStyle: TextStyle(color: _inputErrorFlags.contains(_InputFlags.skillE) ? Colors.red : Colors.black54),
                                    label: Text("c_st_skille").tr(),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onChanged: (text) {
                                    _changed = true;
                                  },
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _skillQLevelInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: _inputErrorFlags.contains(_InputFlags.skillQ) ? Colors.red : Colors.black38)),
                                    labelStyle: TextStyle(color: _inputErrorFlags.contains(_InputFlags.skillQ) ? Colors.red : Colors.black54),
                                    label: Text("c_st_skillq").tr(),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onChanged: (text) {
                                    _changed = true;
                                  },
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
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _generateArtifactSubInputRow(indexOffset, _InputFlags _inputFlag) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(4, (index) {
        index += indexOffset;
        return index % 2 == 0
            ? Flexible(
                child: Padding(
                  padding: _getInputMargin(),
                  child: TextFormField(
                    readOnly: true,
                    controller: _artifactSubStatInputControllerList[(index / 2).floor()],
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: _inputErrorFlags.contains(_inputFlag) ? Colors.red : Colors.black38)),
                      labelStyle: TextStyle(color: _inputErrorFlags.contains(_inputFlag) ? Colors.red : Colors.black54),
                      label: Text("l_substat".tr() + " " + ((index % 8 + 1) / 2).ceil().toString()),
                      contentPadding: _getTextFieldPadding(),
                    ),
                    onTap: () {
                      _showPicker(GsData.getArtifactSubStatNameList(), _myCharacter.artifactSubStatIndexList[(index / 2).floor()], (picker, selected) {
                        _changed = true;
                        _myCharacter.artifactSubStatIndexList[(index / 2).floor()] = selected[0];
                        _artifactSubStatInputControllerList[(index / 2).floor()].text = picker.getSelectedValues()[0].toString();
                      });
                    },
                  ),
                ),
              )
            : Flexible(
                child: Padding(
                  padding: _getInputMargin(),
                  child: TextFormField(
                    controller: _artifactSubValueInputControllerList[(index / 2).floor()],
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      Utils.getNumberInputFormatter(),
                    ],
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: _inputErrorFlags.contains(_inputFlag) ? Colors.red : Colors.black38)),
                      labelStyle: TextStyle(color: _inputErrorFlags.contains(_inputFlag) ? Colors.red : Colors.black54),
                      label: Text("l_substat".tr() + " " + ((index % 8 + 1) / 2).ceil().toString()),
                      contentPadding: _getTextFieldPadding(),
                    ),
                    onChanged: (text) {
                      _changed = true;
                    },
                  ),
                ),
              );
      }),
    );
  }

  Widget _generateArtifactInputCard(String artifactName, List<String> mainStatList, _InputFlags inputFlag, int artifactIndex) {
    return Padding(
      padding: _getCardMargin(),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Padding(
                padding: _getCardTitleMargin(),
                child: Text(
                  '圣遗物属性（' + artifactName + '）',
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
                      controller: _artifactMainTypeInputControllerList[artifactIndex],
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: _inputErrorFlags.contains(inputFlag) ? Colors.red : Colors.black38)),
                        labelStyle: TextStyle(color: _inputErrorFlags.contains(inputFlag) ? Colors.red : Colors.black54),
                        label: Text("套装"),
                        contentPadding: _getTextFieldPadding(),
                      ),
                      onTap: () {
                        _showPicker(GsData.getArtifactTypeNameList(), _myCharacter.artifactMainTypeIndexList[artifactIndex], (picker, selected) {
                          _changed = true;
                          _myCharacter.artifactMainTypeIndexList[artifactIndex] = selected[0];
                          _artifactMainTypeInputControllerList[artifactIndex].text = picker.getSelectedValues()[0].toString();
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: _getInputMargin(),
                    child: TextFormField(
                      readOnly: true,
                      controller: _artifactMainInputControllerList[artifactIndex],
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: _inputErrorFlags.contains(inputFlag) ? Colors.red : Colors.black38)),
                        labelStyle: TextStyle(color: _inputErrorFlags.contains(inputFlag) ? Colors.red : Colors.black54),
                        label: Text("主属性"),
                        contentPadding: _getTextFieldPadding(),
                      ),
                      onTap: () {
                        _showPicker(mainStatList, _myCharacter.artifactMainStatIndexList[artifactIndex], (picker, selected) {
                          _changed = true;
                          _myCharacter.artifactMainStatIndexList[artifactIndex] = selected[0];
                          _artifactMainInputControllerList[artifactIndex].text = picker.getSelectedValues()[0].toString();
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            _generateArtifactSubInputRow(artifactIndex * 8, inputFlag),
            _generateArtifactSubInputRow(4 + artifactIndex * 8, inputFlag),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
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

  Future<bool> _willPop() async {
    if (!_changed) return Future.value(true);
    bool _didQuit = false;
    await showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: Text('是否不保存直接退出'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              _didQuit = false;
              Navigator.pop(context);
            },
            child: Text('取消'),
          ),
          TextButton(
            onPressed: () {
              _didQuit = true;
              Navigator.pop(context);
            },
            child: Text('确定'),
          ),
        ],
      ),
    );
    return Future.value(_didQuit);
  }

  void _save() async {
    _myCharacter.nickName = _nickNameInputController.text;
    _myCharacter.skillALevel = int.tryParse(_skillALevelInputController.text) ?? -1;
    _myCharacter.skillELevel = int.tryParse(_skillELevelInputController.text) ?? -1;
    _myCharacter.skillQLevel = int.tryParse(_skillQLevelInputController.text) ?? -1;
    for (int i = 0; i < _artifactSubValueInputControllerList.length; i++) {
      _myCharacter.artifactSubValueList[i] = double.tryParse(_artifactSubValueInputControllerList[i].text) ?? -1;
    }
    _myCharacter.artifactFlowerId = GsData.getArtifactIdFromIndex(_myCharacter.artifactMainTypeIndexList[0]);
    _myCharacter.artifactFlowerIndex = _myCharacter.artifactMainStatIndexList[0];
    _myCharacter.artifactPlumeId = GsData.getArtifactIdFromIndex(_myCharacter.artifactMainTypeIndexList[1]);
    _myCharacter.artifactPlumeIndex = _myCharacter.artifactMainStatIndexList[1];
    _myCharacter.artifactSandsId = GsData.getArtifactIdFromIndex(_myCharacter.artifactMainTypeIndexList[2]);
    _myCharacter.artifactSandsIndex = _myCharacter.artifactMainStatIndexList[2];
    _myCharacter.artifactGobletId = GsData.getArtifactIdFromIndex(_myCharacter.artifactMainTypeIndexList[3]);
    _myCharacter.artifactGobletIndex = _myCharacter.artifactMainStatIndexList[3];
    _myCharacter.artifactCircletId = GsData.getArtifactIdFromIndex(_myCharacter.artifactMainTypeIndexList[4]);
    _myCharacter.artifactCircletIndex = _myCharacter.artifactMainStatIndexList[4];

    List<_InputFlags> errorList = [];
    if (_myCharacter.characterId < 0) {
      errorList.add(_InputFlags.character);
    }
    if (_myCharacter.levelIndex < 0) {
      errorList.add(_InputFlags.level);
    }
    if (_myCharacter.weaponId < 0) {
      errorList.add(_InputFlags.weapon);
    }
    if (_myCharacter.refineIndex < 0) {
      errorList.add(_InputFlags.refine);
    }
    if (_myCharacter.artifactFlowerId < 0 || _myCharacter.artifactFlowerIndex < 0) {
      errorList.add(_InputFlags.artifactFlower);
    }
    if (_myCharacter.artifactPlumeId < 0 || _myCharacter.artifactPlumeIndex < 0) {
      errorList.add(_InputFlags.artifactPlume);
    }
    if (_myCharacter.artifactSandsId < 0 || _myCharacter.artifactSandsIndex < 0) {
      errorList.add(_InputFlags.artifactSands);
    }
    if (_myCharacter.artifactGobletId < 0 || _myCharacter.artifactGobletIndex < 0) {
      errorList.add(_InputFlags.artifactGoblet);
    }
    if (_myCharacter.artifactCircletId < 0 || _myCharacter.artifactCircletIndex < 0) {
      errorList.add(_InputFlags.artifactCirclet);
    }
    for (int i = 0; i < _myCharacter.artifactSubStatIndexList.length; i++) {
      if (_myCharacter.artifactSubStatIndexList[i] >= 0 && _myCharacter.artifactSubValueList[i] >= 0) continue;
      if (i < 4)
        errorList.add(_InputFlags.artifactFlower);
      else if (i < 8)
        errorList.add(_InputFlags.artifactPlume);
      else if (i < 12)
        errorList.add(_InputFlags.artifactSands);
      else if (i < 16)
        errorList.add(_InputFlags.artifactGoblet);
      else if (i < 20) errorList.add(_InputFlags.artifactCirclet);
    }
    if (_myCharacter.skillALevel < 0) {
      errorList.add(_InputFlags.skillA);
    }
    if (_myCharacter.skillELevel < 0) {
      errorList.add(_InputFlags.skillE);
    }
    if (_myCharacter.skillQLevel < 0) {
      errorList.add(_InputFlags.skillQ);
    }

    setState(() {
      _inputErrorFlags = errorList;
    });

    if (errorList.length > 0) {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: Text('部分输入有误'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('确定'),
            ),
          ],
        ),
      );
      return;
    }

    context.loaderOverlay.show();
    await _localData.keepMyCharacter(_myCharacter);
    context.loaderOverlay.hide();
    Navigator.pop(context);
  }

  EdgeInsetsGeometry _getCardMargin() {
    return EdgeInsets.fromLTRB(12, 8, 12, 8);
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
}
