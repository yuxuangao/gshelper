import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';

import '../common/const.dart';
import '../common/utils.dart';
import '../object/damage.dart';
import '../logic/damage.dart';

class DamagePage extends StatefulWidget {
  @override
  _DamagePage createState() => _DamagePage();
}

class _DamagePage extends State<DamagePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  DamageInput _damageInput = DamageInput();
  DamageResult _damageResult = DamageResult();

  final TextEditingController _attackInputController = TextEditingController();
  final TextEditingController _masteryInputController = TextEditingController();
  final TextEditingController _damageBonusInputController = TextEditingController();
  final TextEditingController _critRateInputController = TextEditingController();
  final TextEditingController _critDmgInputController = TextEditingController();
  final TextEditingController _skillRatioInputController = TextEditingController();
  final TextEditingController _characterLevelInputController = TextEditingController();
  final TextEditingController _enemyLevelInputController = TextEditingController();
  final TextEditingController _defendDecreaseInputController = TextEditingController();
  final TextEditingController _enemyResistanceInputController = TextEditingController();
  final TextEditingController _resistanceDecreaseInputController = TextEditingController();
  final TextEditingController _damageBonusForOtherInputController = TextEditingController();
  final TextEditingController _elementRatioInputController = TextEditingController();
  final TextEditingController _elementEnhanceInputController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _attackInputController.text = (_damageInput.attack ?? '').toString();
    _masteryInputController.text = (_damageInput.mastery ?? '').toString();
    _damageBonusInputController.text = (_damageInput.damageBonus ?? '').toString();
    _critRateInputController.text = (_damageInput.critRate ?? '').toString();
    _critDmgInputController.text = (_damageInput.critDmg ?? '').toString();
    _skillRatioInputController.text = (_damageInput.skillRatio ?? '').toString();
    _characterLevelInputController.text = (_damageInput.characterLevel ?? '').toString();
    _enemyLevelInputController.text = (_damageInput.enemyLevel ?? '').toString();
    _defendDecreaseInputController.text = (_damageInput.defendDecrease ?? '').toString();
    _enemyResistanceInputController.text = (_damageInput.enemyResistance ?? '').toString();
    _resistanceDecreaseInputController.text = (_damageInput.resistanceDecrease ?? '').toString();
    _damageBonusForOtherInputController.text = (_damageInput.damageBonusForOther ?? '').toString();
    _elementRatioInputController.text = (_damageInput.elementRatio ?? '').toString();
    _elementEnhanceInputController.text = (_damageInput.elementEnhance ?? '').toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Const.TITLE_DAMAGE),
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
                  height: 12,
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
                              '??????????????????',
                              style: _getCardTitleStyle(),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _attackInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    label: Text("?????????"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _masteryInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    label: Text("????????????"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _damageBonusInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    label: Text("????????????%"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
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
                                  controller: _critRateInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    label: Text("?????????%"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _critDmgInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    label: Text("????????????%"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(child: Padding(padding: _getInputMargin())),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          child: Padding(
                            padding: _getCardTitleMargin(),
                            child: Text(
                              '????????????',
                              style: _getCardTitleStyle(),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                          padding: _getInputMargin(),
                          child: TextFormField(
                            controller: _skillRatioInputController,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              Utils.getNumberInputFormatter(),
                            ],
                            decoration: InputDecoration(
                              label: Text("????????????"),
                              contentPadding: _getTextFieldPadding(),
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
                              '?????????',
                              style: _getCardTitleStyle(),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _characterLevelInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    label: Text("????????????"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
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
                                    label: Text("????????????"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _defendDecreaseInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    label: Text("??????%"),
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
                              '??????',
                              style: _getCardTitleStyle(),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _enemyResistanceInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    label: Text("????????????%"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _resistanceDecreaseInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    label: Text("??????%"),
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
                              '????????????',
                              style: _getCardTitleStyle(),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _damageBonusForOtherInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    label: Text("????????????%"),
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
                              '????????????',
                              style: _getCardTitleStyle(),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _elementRatioInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    label: Text("????????????"),
                                    contentPadding: _getTextFieldPadding(),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: _getInputMargin(),
                                child: TextFormField(
                                  controller: _elementEnhanceInputController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    Utils.getNumberInputFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    label: Text("????????????%"),
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
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: ElevatedButton(
                    onPressed: _calculate,
                    child: Text("??????"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: _getResultTitleMargin(),
                  child: Text(
                    _damageResult.errorMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: !_damageResult.hasResult
                      ? <Widget>[
                          SizedBox(
                            height: 12,
                          ),
                        ]
                      : <Widget>[
                          Padding(
                            padding: _getResultTitleMargin(),
                            child: Text(
                              '??????????????????',
                              style: _getResultTextStyle(),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                '??????????????????',
                                style: _getResultTextStyle(),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                sprintf("%.0f", [_damageResult.damageWithoutCrit]),
                                style: _getResultTextStyle(),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                '???????????????',
                                style: _getResultTextStyle(),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                sprintf("%.0f", [_damageResult.damageWithCrit]),
                                style: _getResultTextStyle(),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                '????????????',
                                style: _getResultTextStyle(),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                sprintf("%.0f", [_damageResult.damageAverage]),
                                style: _getResultTextStyle(),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                        ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _calculate() {
    FocusScope.of(context).unfocus();

    _damageInput.attack = double.tryParse(_attackInputController.text);
    _damageInput.mastery = double.tryParse(_masteryInputController.text);
    _damageInput.damageBonus = double.tryParse(_damageBonusInputController.text);
    _damageInput.critRate = double.tryParse(_critRateInputController.text);
    _damageInput.critDmg = double.tryParse(_critDmgInputController.text);
    _damageInput.skillRatio = double.tryParse(_skillRatioInputController.text);
    _damageInput.characterLevel = int.tryParse(_characterLevelInputController.text);
    _damageInput.enemyLevel = int.tryParse(_enemyLevelInputController.text);
    _damageInput.defendDecrease = double.tryParse(_defendDecreaseInputController.text);
    _damageInput.enemyResistance = double.tryParse(_enemyResistanceInputController.text);
    _damageInput.resistanceDecrease = double.tryParse(_resistanceDecreaseInputController.text);
    _damageInput.damageBonusForOther = double.tryParse(_damageBonusForOtherInputController.text);
    _damageInput.elementRatio = double.tryParse(_elementRatioInputController.text);
    _damageInput.elementEnhance = double.tryParse(_elementEnhanceInputController.text);

    setState(() {
      _damageResult = DamageCalculator.cal(_damageInput);
    });
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
