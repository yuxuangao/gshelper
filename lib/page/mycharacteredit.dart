import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:gshelper/object/mycharacter.dart';

import '../common/const.dart';
import '../common/utils.dart';
import '../data/data.dart';
import '../object/mycharacter.dart';

class MyCharacterEditPage extends StatefulWidget {
  @override
  _MyCharacterEditPage createState() => _MyCharacterEditPage();
}

class _MyCharacterEditPage extends State<MyCharacterEditPage> {
  Map<String, Object> _character = null;

  final MyCharacter _myCharacter = MyCharacter();

  final TextEditingController _characterInputController =
      TextEditingController();
  final TextEditingController _levelInputController = TextEditingController();
  final TextEditingController _nickNameInputController =
      TextEditingController();
  final TextEditingController _artifactSandsInputController =
      TextEditingController();
  final TextEditingController _artifactGobletInputController =
      TextEditingController();
  final TextEditingController _artifactCircletInputController =
      TextEditingController();
  final TextEditingController _weaponInputController = TextEditingController();
  final TextEditingController _refineLevelInputController =
      TextEditingController();
  final TextEditingController _artifactHpInputController =
      TextEditingController();
  final TextEditingController _artifactAttackInputController =
      TextEditingController();
  final TextEditingController _artifactDefendInputController =
      TextEditingController();
  final TextEditingController _artifactMasteryInputController =
      TextEditingController();
  final TextEditingController _artifactCritRateInputController =
      TextEditingController();
  final TextEditingController _artifactCritDmgInputController =
      TextEditingController();
  final TextEditingController _artifactRechargeInputController =
      TextEditingController();
  final TextEditingController _skillALevelInputController =
      TextEditingController();
  final TextEditingController _skillELevelInputController =
      TextEditingController();
  final TextEditingController _skillQLevelInputController =
      TextEditingController();

  bool _changed = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return _willPop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(Const.TITLE_MY_CHARACTER_EDIT),
          elevation: 0,
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
              onPressed: () {},
              icon: Text(
                '保存',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
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
                              '角色',
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
                                  controller: _characterInputController,
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    label: Text("角色"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(GsData.getCharacterNames(),
                                        _myCharacter.characterIndex,
                                        (picker, selected) {
                                      _changed = true;
                                      _myCharacter.characterIndex = selected[0];
                                      _character = GsData.getCharacterFromIndex(
                                          selected[0]);
                                      _characterInputController.text = picker
                                          .getSelectedValues()[0]
                                          .toString();
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
                                    border: UnderlineInputBorder(),
                                    label: Text("等级"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(GsData.getLevels(),
                                        _myCharacter.levelIndex,
                                        (picker, selected) {
                                      _changed = true;
                                      _myCharacter.levelIndex = selected[0];
                                      _levelInputController.text = picker
                                          .getSelectedValues()[0]
                                          .toString();
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
                                    border: UnderlineInputBorder(),
                                    label: Text("别名"),
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
                              '圣遗物主属性',
                              style: _getCardTitleStyle(),
                            ),
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
                                  controller: _artifactSandsInputController,
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    label: Text("时之沙"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(
                                        GsData
                                            .getArtifactSandsMainStatNameList(),
                                        _myCharacter.artifactSandsIndex,
                                        (picker, selected) {
                                      _changed = true;
                                      _myCharacter.artifactSandsIndex =
                                          selected[0];
                                      _artifactSandsInputController.text =
                                          picker
                                              .getSelectedValues()[0]
                                              .toString();
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
                                  controller: _artifactGobletInputController,
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    label: Text("空之杯"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(
                                        GsData
                                            .getArtifactGobleMainStatNameList(),
                                        _myCharacter.artifactGobletIndex,
                                        (picker, selected) {
                                      _changed = true;
                                      _myCharacter.artifactGobletIndex =
                                          selected[0];
                                      _artifactGobletInputController.text =
                                          picker
                                              .getSelectedValues()[0]
                                              .toString();
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
                                  controller: _artifactCircletInputController,
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    label: Text("理之冠"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(
                                        GsData
                                            .getArtifactCircletMainStatNameList(),
                                        _myCharacter.artifactCircletIndex,
                                        (picker, selected) {
                                      _changed = true;
                                      _myCharacter.artifactCircletIndex =
                                          selected[0];
                                      _artifactCircletInputController.text =
                                          picker
                                              .getSelectedValues()[0]
                                              .toString();
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
                              '武器',
                              style: _getCardTitleStyle(),
                            ),
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
                                    border: UnderlineInputBorder(),
                                    label: Text("装备武器"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(
                                        GsData.getWeaponNameListByType(
                                            _character != null &&
                                                    _character['weapon'] != null
                                                ? _character['weapon']
                                                : null),
                                        _myCharacter.weaponIndex,
                                        (picker, selected) {
                                      _changed = true;
                                      _myCharacter.weaponIndex = selected[0];
                                      Map<String, Object> weapon =
                                          GsData.getWeaponFromName(picker
                                              .getSelectedValues()[0]
                                              .toString());
                                      _myCharacter.weaponId =
                                          weapon['weapon_id'];
                                      _weaponInputController.text = picker
                                          .getSelectedValues()[0]
                                          .toString();
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
                                    border: UnderlineInputBorder(),
                                    label: Text("精炼等级"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(GsData.getRefineNameList(),
                                        _myCharacter.refineIndex,
                                        (picker, selected) {
                                      _changed = true;
                                      _myCharacter.refineIndex = selected[0];
                                      _refineLevelInputController.text = picker
                                          .getSelectedValues()[0]
                                          .toString();
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
                              '圣遗物详细',
                              style: _getCardTitleStyle(),
                            ),
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
                                  controller: _artifactHpInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    label: Text("生命值"),
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
                                  controller: _artifactAttackInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    label: Text("攻击力"),
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
                                  controller: _artifactDefendInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    label: Text("防御力"),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _artifactMasteryInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    label: Text("元素精通"),
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
                                  controller: _artifactCritRateInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    label: Text("暴击率%"),
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
                                  controller: _artifactCritDmgInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    label: Text("暴击伤害%"),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _artifactRechargeInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    label: Text("元素充能%"),
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
                                child: Container(),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: Container(),
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
                              '技能等级',
                              style: _getCardTitleStyle(),
                            ),
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
                                    border: UnderlineInputBorder(),
                                    label: Text("普通攻击"),
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
                                    border: UnderlineInputBorder(),
                                    label: Text("元素战技"),
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
                                    border: UnderlineInputBorder(),
                                    label: Text("元素爆发"),
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

  void _showPicker(
      List<dynamic> data, int selectedIndex, PickerConfirmCallback onConfirm) {
    new Picker(
      adapter: data is List<PickerItem>
          ? PickerDataAdapter<dynamic>(data: data)
          : PickerDataAdapter<dynamic>(pickerdata: data),
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
