import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

import '../data/data.dart';
import '../object/mycharacter.dart';
import '../logic/mycharacter.dart';
import '../common/const.dart';
import '../common/utils.dart';

class DatabaseCharacterDamagePage extends StatefulWidget {
  @override
  _DatabaseCharacterDamagePage createState() => _DatabaseCharacterDamagePage();
}

class _DatabaseCharacterDamagePage extends State<DatabaseCharacterDamagePage> {
  MyCharacter _myCharacter = MyCharacter();
  Map<String, Object> _character;

  TextEditingController _levelInputController = TextEditingController();
  TextEditingController _constellationInputController = TextEditingController();
  TextEditingController _weaponInputController = TextEditingController();
  TextEditingController _refineLevelInputController = TextEditingController();
  TextEditingController _artifactType1InputController = TextEditingController();
  TextEditingController _artifactType2InputController = TextEditingController();
  TextEditingController _artifactMainStatInputController = TextEditingController();
  TextEditingController _artifactSubStatInputController = TextEditingController();
  TextEditingController _skillALevelInputController = TextEditingController();
  TextEditingController _skillELevelInputController = TextEditingController();
  TextEditingController _skillQLevelInputController = TextEditingController();

  int _artifactType1Index = -1;
  int _artifactType2Index = -1;
  int _artifactMainStatIndex = -1;
  int _artifactSubStatIndex = -1;

  bool _firstLoad = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_firstLoad) return;

    _myCharacter.characterId = ModalRoute.of(context).settings.arguments;
    _character = GsData.getCharacterFromId(_myCharacter.characterId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Const.TITLE_DATABASE_CHARACTER_DAMAGE),
        elevation: 0,
        bottomOpacity: 0,
        leading: IconButton(
          onPressed: () async {
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ListTile(
                title: Text(
                  _character['name'],
                  style: TextStyle(
                    fontSize: 22,
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
                                controller: _levelInputController,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  label: Text("等级"),
                                  contentPadding: _getTextFieldPadding(),
                                ),
                                onTap: () {
                                  _showPicker(GsData.getLevels(), _myCharacter.levelIndex, (picker, selected) {
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
                                  border: UnderlineInputBorder(),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  label: Text("命座"),
                                  contentPadding: _getTextFieldPadding(),
                                ),
                                onTap: () {
                                  _showPicker(GsData.getConstellationNameList(), _myCharacter.consetllationIndex, (picker, selected) {
                                    _myCharacter.consetllationIndex = selected[0];
                                    _constellationInputController.text = picker.getSelectedValues()[0].toString();
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
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  label: Text("装备武器"),
                                  contentPadding: _getTextFieldPadding(),
                                ),
                                onTap: () {
                                  _showPicker(GsData.getWeaponNameListByType(_character['weapon']), _myCharacter.weaponIndex, (picker, selected) {
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
                                  border: UnderlineInputBorder(),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  label: Text("精炼等级"),
                                  contentPadding: _getTextFieldPadding(),
                                ),
                                onTap: () {
                                  _showPicker(GsData.getRefineNameList(), _myCharacter.refineIndex, (picker, selected) {
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
                            '圣遗物',
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
                                controller: _artifactType1InputController,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  label: Text("套装1"),
                                  contentPadding: _getTextFieldPadding(),
                                ),
                                onTap: () {
                                  _showPicker(GsData.getArtifactTypeNameList(), _artifactType1Index, (picker, selected) {
                                    _artifactType1Index = selected[0];
                                    _artifactType1InputController.text = picker.getSelectedValues()[0].toString();
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
                                controller: _artifactType2InputController,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  label: Text("套装2"),
                                  contentPadding: _getTextFieldPadding(),
                                ),
                                onTap: () {
                                  _showPicker(GsData.getArtifactTypeNameList(), _artifactType2Index, (picker, selected) {
                                    _artifactType2Index = selected[0];
                                    _artifactType2InputController.text = picker.getSelectedValues()[0].toString();
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: Padding(
                              padding: _getInputMargin(),
                              child: TextFormField(
                                readOnly: true,
                                controller: _artifactMainStatInputController,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  label: Text("主词条"),
                                  contentPadding: _getTextFieldPadding(),
                                ),
                                onTap: () {
                                  _showPicker(GsData.getSimulationArtifactMainStatNameList(), _artifactMainStatIndex, (picker, selected) {
                                    _artifactMainStatIndex = selected[0];
                                    _artifactMainStatInputController.text = picker.getSelectedValues()[0].toString();
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: Padding(
                              padding: _getInputMargin(),
                              child: TextFormField(
                                readOnly: true,
                                controller: _artifactSubStatInputController,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  label: Text("副词条"),
                                  contentPadding: _getTextFieldPadding(),
                                ),
                                onTap: () {
                                  _showPicker(GsData.getSimulationArtifactSubStatNameList(), _artifactSubStatIndex, (picker, selected) {
                                    _artifactSubStatIndex = selected[0];
                                    _artifactSubStatInputController.text = picker.getSelectedValues()[0].toString();
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
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  label: Text("普通攻击"),
                                  contentPadding: _getTextFieldPadding(),
                                ),
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
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  label: Text("元素战技"),
                                  contentPadding: _getTextFieldPadding(),
                                ),
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
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  label: Text("元素爆发"),
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
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: _cal,
                  child: Text('计算'),
                ),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _cal() async {
    bool error = false;
    if (_myCharacter.levelIndex < 0) error = true;
    if (_myCharacter.consetllationIndex < 0) error = true;
    if (_myCharacter.weaponIndex < 0) error = true;
    if (_myCharacter.refineIndex < 0) error = true;
    if (_artifactType1Index < 0) error = true;
    if (_artifactType2Index < 0) error = true;
    if (_artifactMainStatIndex < 0) error = true;
    if (_artifactSubStatIndex < 0) error = true;
    if (_skillALevelInputController.text == '') error = true;
    if (_skillELevelInputController.text == '') error = true;
    if (_skillQLevelInputController.text == '') error = true;
    if (error) {
      await showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: Text('输入有误'),
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

    _myCharacter.artifactFlowerId = GsData.getArtifactIdFromIndex(_artifactType1Index);
    _myCharacter.artifactPlumeId = GsData.getArtifactIdFromIndex(_artifactType1Index);
    _myCharacter.artifactSandsId = GsData.getArtifactIdFromIndex(_artifactType2Index);
    _myCharacter.artifactGobletId = GsData.getArtifactIdFromIndex(_artifactType2Index);
    _myCharacter.artifactCircletId = GsData.getArtifactIdFromIndex(_artifactType2Index);

    List<Stats> artifactMainStats = GsData.getSimulationArtifactMainStatValueFromIndex(_artifactMainStatIndex);
    _myCharacter.artifactFlowerIndex = GsData.getArtifactMainStatIndexFromStat(ArtifactPosition.Flower, artifactMainStats[0]);
    _myCharacter.artifactPlumeIndex = GsData.getArtifactMainStatIndexFromStat(ArtifactPosition.Plume, artifactMainStats[1]);
    _myCharacter.artifactSandsIndex = GsData.getArtifactMainStatIndexFromStat(ArtifactPosition.Sands, artifactMainStats[2]);
    _myCharacter.artifactGobletIndex = GsData.getArtifactMainStatIndexFromStat(ArtifactPosition.Goblet, artifactMainStats[3]);
    _myCharacter.artifactCircletIndex = GsData.getArtifactMainStatIndexFromStat(ArtifactPosition.Circlet, artifactMainStats[4]);

    Map<Stats, double> artifactSubStatsValue = GsData.getSimulationArtifactSubStatValueFromIndex(_artifactSubStatIndex);
    _myCharacter.artifactSubStatIndexList = List<int>.generate(
        20, (index) => index < artifactSubStatsValue.length ? GsData.getArtifactSubStatIndexFromStat(artifactSubStatsValue.keys.elementAt(index)) : 0);
    _myCharacter.artifactSubValueList =
        List<double>.generate(20, (index) => index < artifactSubStatsValue.length ? artifactSubStatsValue.values.elementAt(index) : 0.0);

    _myCharacter.skillALevel = int.tryParse(_skillALevelInputController.text) ?? 1;
    _myCharacter.skillELevel = int.tryParse(_skillELevelInputController.text) ?? 1;
    _myCharacter.skillQLevel = int.tryParse(_skillQLevelInputController.text) ?? 1;

    _myCharacter.isAdjusted = false;
    MyCharacterCalculator.adjustMyCharacter(_myCharacter, _character, GsData.getWeaponFromId(_myCharacter.weaponId));
    Navigator.pushNamed(context, '/mycharacterdamage', arguments: _myCharacter);
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
