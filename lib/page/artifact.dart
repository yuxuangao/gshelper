import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:sprintf/sprintf.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:easy_localization/easy_localization.dart';

import '../common/const.dart';
import '../common/utils.dart';
import '../common/localdata.dart';
import '../object/artifact.dart';
import '../data/data.dart';
import '../logic/artifact.dart';

class ArtifactPage extends StatefulWidget {
  @override
  _ArtifactPage createState() => _ArtifactPage();
}

class _ArtifactPage extends State<ArtifactPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final LocalData _localData = LocalData.instance;

  ArtifactInput _artifactInput = ArtifactInput();
  ArtifactResult _artifactResult = ArtifactResult();

  final TextEditingController _characterInputController = TextEditingController();
  final TextEditingController _levelInputController = TextEditingController();
  final TextEditingController _artifactSandsInputController = TextEditingController();
  final TextEditingController _artifactGobletInputController = TextEditingController();
  final TextEditingController _artifactCircletInputController = TextEditingController();
  final TextEditingController _baseAttackInputController = TextEditingController();
  final TextEditingController _artifactHpInputController = TextEditingController();
  final TextEditingController _artifactAttackInputController = TextEditingController();
  final TextEditingController _artifactDefendInputController = TextEditingController();
  final TextEditingController _artifactMasteryInputController = TextEditingController();
  final TextEditingController _artifactCritRateInputController = TextEditingController();
  final TextEditingController _artifactCritDmgInputController = TextEditingController();
  final TextEditingController _artifactRechargeInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('t_artifact').tr(),
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
        child: Form(
          key: _formKey,
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
                                    label: Text("角色"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(GsData.getCharacterNames(), _artifactInput.characterIndex, _changeCharacter);
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
                                    label: Text("等级"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(GsData.getLevels(), _artifactInput.levelIndex, (picker, selected) {
                                      _artifactInput.levelIndex = selected[0];
                                      _levelInputController.text = picker.getSelectedValues()[0].toString();
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
                                    label: Text("时之沙"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(GsData.getArtifactSandsMainStatNameList(), _artifactInput.artifactSandsIndex, (picker, selected) {
                                      _artifactInput.artifactSandsIndex = selected[0];
                                      _artifactSandsInputController.text = picker.getSelectedValues()[0].toString();
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
                                    label: Text("空之杯"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(GsData.getArtifactGobletMainStatNameList(), _artifactInput.artifactGobletIndex, (picker, selected) {
                                      _artifactInput.artifactGobletIndex = selected[0];
                                      _artifactGobletInputController.text = picker.getSelectedValues()[0].toString();
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
                                    label: Text("理之冠"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                  onTap: () {
                                    _showPicker(GsData.getArtifactCircletMainStatNameList(), _artifactInput.artifactCircletIndex, (picker, selected) {
                                      _artifactInput.artifactCircletIndex = selected[0];
                                      _artifactCircletInputController.text = picker.getSelectedValues()[0].toString();
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
                              '武器攻击力',
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
                                  controller: _baseAttackInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    label: Text("武器攻击力"),
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
                                    label: Text("生命值"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
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
                                    label: Text("攻击力"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
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
                                    label: Text("防御力"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
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
                                    label: Text("元素精通"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
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
                                    label: Text("暴击率%"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
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
                                    label: Text("暴击伤害%"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
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
                                    label: Text("元素充能%"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
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
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: ElevatedButton(
                    onPressed: _calculate,
                    child: Text("计算"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: _getResultTitleMargin(),
                  child: Text(
                    _artifactResult.errorMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: !_artifactResult.hasResult
                      ? <Widget>[
                          SizedBox(
                            height: 12,
                          ),
                        ]
                      : _generateResultArea(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _generateResultArea() {
    List<Widget> subColumns1 = [SizedBox(width: 12)];
    List<Widget> subColumns2 = [SizedBox(width: 12)];
    int columnNumberFirstRow = (_artifactResult.result.length / 2).floor();
    int index = 0;
    _artifactResult.result.forEach((Stats stat, double value) {
      if (index++ < columnNumberFirstRow) {
        subColumns1.add(Column(
          children: <Widget>[
            Text(
              GsData.getStatName(stat),
              style: _getResultTextStyle(),
            ),
            Text(
              sprintf("%.2f", [value]),
              style: _getResultTextStyle(),
            ),
          ],
        ));
        subColumns1.add(SizedBox(width: 18));
      } else {
        subColumns2.add(Column(
          children: <Widget>[
            Text(
              GsData.getStatName(stat),
              style: _getResultTextStyle(),
            ),
            Text(
              sprintf("%.2f", [value]),
              style: _getResultTextStyle(),
            ),
          ],
        ));
        subColumns2.add(SizedBox(width: 12));
      }
    });

    List<Widget> validStatResultRows = [];
    for (var validStat in _artifactResult.validStats) {
      double statResult = 0.0;
      List<String> validStatNameList = [];
      validStat.forEach((Stats stat, double ratio) {
        validStatNameList.add(GsData.getStatNameAbbrevation(stat) + (ratio == 1.0 ? '' : '($ratio倍)'));
        statResult += _artifactResult.result[stat] * ratio;
      });
      validStatResultRows.add(Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          SizedBox(
            width: 50,
          ),
          Text(
            validStatNameList.join('，'),
            style: _getResultTextStyle(),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            sprintf("%.2f", [statResult]),
            style: _getResultTextStyle(),
          ),
        ],
      ));
      validStatResultRows.add(SizedBox(height: 8));
    }

    List<Widget> result = [
      Padding(
        padding: _getResultTitleMargin(),
        child: Text(
          '圣遗物计算结果',
          style: _getResultTextStyle(),
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
        padding: _getResultTitleMargin(),
        child: Text(
          '有效词条数',
          style: _getResultTextStyle(),
        ),
      ),
    ];
    result.addAll(validStatResultRows);
    result.add(SizedBox(height: 100));

    return result;
  }

  void _calculate() {
    FocusScope.of(context).unfocus();
    _artifactInput.baseAttack = double.tryParse(_baseAttackInputController.text) ?? 0.0;
    _artifactInput.artifactHp = double.tryParse(_artifactHpInputController.text) ?? 0.0;
    _artifactInput.artifactAttack = double.tryParse(_artifactAttackInputController.text) ?? 0.0;
    _artifactInput.artifactDefend = double.tryParse(_artifactDefendInputController.text) ?? 0.0;
    _artifactInput.artifactMastery = double.tryParse(_artifactMasteryInputController.text) ?? 0.0;
    _artifactInput.artifactCritRate = double.tryParse(_artifactCritRateInputController.text) ?? 0.0;
    _artifactInput.artifactCritDmg = double.tryParse(_artifactCritDmgInputController.text) ?? 0.0;
    _artifactInput.artifactRecharge = double.tryParse(_artifactRechargeInputController.text) ?? 0.0;
    setState(() {
      _artifactResult = ArtifactCalculator.cal(_artifactInput);
      if (_artifactResult.hasResult) {
        _localData.keepArtifactInput(_artifactInput);
      }
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

  void _changeCharacter(Picker picker, List<int> selected) async {
    _artifactInput = ArtifactInput();
    _levelInputController.text = '';
    _artifactSandsInputController.text = '';
    _artifactGobletInputController.text = '';
    _artifactCircletInputController.text = '';
    _baseAttackInputController.text = '';
    _artifactHpInputController.text = '';
    _artifactAttackInputController.text = '';
    _artifactDefendInputController.text = '';
    _artifactMasteryInputController.text = '';
    _artifactCritRateInputController.text = '';
    _artifactCritDmgInputController.text = '';
    _artifactRechargeInputController.text = '';
    setState(() {
      _artifactResult.hasResult = false;
      _artifactResult.errorMessage = '';
    });
    if (selected[0] < 0) {
      return;
    }

    _artifactInput.characterIndex = selected[0];
    _characterInputController.text = picker.getSelectedValues()[0].toString();
    context.loaderOverlay.show();

    Map<String, Object> keptInput = await _localData.searchArtifactInput(selected[0]);
    if (keptInput == null) {
      context.loaderOverlay.hide();
      return;
    }

    _artifactInput.levelIndex = keptInput[LocalData.tableColumnArtifactInputLevel];
    _levelInputController.text = GsData.getLevels()[_artifactInput.levelIndex];
    _artifactInput.artifactSandsIndex = keptInput[LocalData.tableColumnArtifactInputArtifactSands];
    _artifactSandsInputController.text = GsData.getArtifactSandsMainStatNameList()[_artifactInput.artifactSandsIndex];
    _artifactInput.artifactGobletIndex = keptInput[LocalData.tableColumnArtifactInputArtifactGoblet];
    _artifactGobletInputController.text = GsData.getArtifactGobletMainStatNameList()[_artifactInput.artifactGobletIndex];
    _artifactInput.artifactCircletIndex = keptInput[LocalData.tableColumnArtifactInputArtifactCirclet];
    _artifactCircletInputController.text = GsData.getArtifactCircletMainStatNameList()[_artifactInput.artifactCircletIndex];
    _baseAttackInputController.text = keptInput[LocalData.tableColumnArtifactInputBaseAttack].toString();
    _artifactHpInputController.text = keptInput[LocalData.tableColumnArtifactInputArtifactHp].toString();
    _artifactAttackInputController.text = keptInput[LocalData.tableColumnArtifactInputArtifactAttack].toString();
    _artifactDefendInputController.text = keptInput[LocalData.tableColumnArtifactInputArtifactDefend].toString();
    _artifactMasteryInputController.text = keptInput[LocalData.tableColumnArtifactInputArtifactMastery].toString();
    _artifactCritRateInputController.text = keptInput[LocalData.tableColumnArtifactInputArtifactCritRate].toString();
    _artifactCritDmgInputController.text = keptInput[LocalData.tableColumnArtifactInputArtifactCritDmg].toString();
    _artifactRechargeInputController.text = keptInput[LocalData.tableColumnArtifactInputArtifactRecharge].toString();

    context.loaderOverlay.hide();
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

  EdgeInsetsGeometry _getResultTitleMargin() {
    return EdgeInsets.fromLTRB(18, 8, 18, 8);
  }

  TextStyle _getCardTitleStyle() {
    return TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle _getResultTextStyle() {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
  }
}
