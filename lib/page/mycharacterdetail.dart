import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';
import 'package:easy_localization/easy_localization.dart';

import '../common/const.dart';
import '../common/utils.dart';
import '../data/data.dart';
import '../object/mycharacter.dart';

class MyCharacterDetailPage extends StatefulWidget {
  @override
  _MyCharacterDetailPage createState() => _MyCharacterDetailPage();
}

class _MyCharacterDetailPage extends State<MyCharacterDetailPage> {
  MyCharacter _myCharacter;
  Map<String, Object> _character;
  Map<Stats, double> _baseStat;
  Map<String, Object> _weapon;
  Map<SkillType, Object> _skill;
  Map<Constellation, Object> _constellation;
  MyCharacterResult _myCharacterResult;

  bool _firstLoad = true;
  bool _isExpanded = true;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _isExpanded = !(_scrollController.hasClients && _scrollController.offset > (160 - kToolbarHeight));
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_firstLoad) return;

    Map<String, Object> data = ModalRoute.of(context).settings.arguments;
    _myCharacter = data['myCharacter'];
    _character = data['character'];
    _baseStat = (_character['stat'] as Map<Levels, Object>)[Levels.values[_myCharacter.levelIndex]];
    _weapon = data['weapon'];
    _skill = GsData.getSkillFromCharacterId(_myCharacter.characterId) ?? {};
    _constellation = GsData.getConstellationFromCharacterId(_myCharacter.characterId, Constellation.values.last) ?? {};
    _myCharacterResult = data['myCharacterResult'];
    _firstLoad = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            elevation: Const.APP_BAR_ELEVATION,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                _character['name'],
                style: TextStyle(
                  color: _isExpanded ? Colors.white : Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(GsData.getRarityBackgroundFilePath(_character['rarity'])),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Image.asset(
                      GsData.getCharacterFaceFilePath(_myCharacter.characterId),
                      height: 120,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'l_stat',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ).tr(),
                ),
                _generateStatRow(Stats.Hp, _myCharacterResult.hp),
                _generateStatRow(Stats.Attack, _myCharacterResult.attack),
                _generateStatRow(Stats.Defend, _myCharacterResult.defend),
                _generateStatRow(Stats.Mastery, _myCharacterResult.mastery),
                _generateStatRow(Stats.HealingBonus, _myCharacterResult.healingBonus),
                Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                _generateStatRow(Stats.CritRate, _myCharacterResult.critRate),
                _generateStatRow(Stats.CritDmg, _myCharacterResult.critDmg),
                _generateStatRow(Stats.Recharge, _myCharacterResult.recharge + 100),
                Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                _generateStatRow(Stats.EleDmgBonus, _myCharacterResult.dmgBonus),
                _generateStatRow(Stats.PhyDmgBonus, _myCharacterResult.phyDmgBonus),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    'l_skill',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ).tr(),
                ),
                _generateActiveSkillRow(SkillType.SkillA, _myCharacter.skillALevel),
                _generateActiveSkillRow(SkillType.SkillE, _myCharacter.skillELevel),
                _generateActiveSkillRow(SkillType.SkillQ, _myCharacter.skillQLevel),
                Column(
                  children: List.generate(
                    (_skill[SkillType.Passive] as List).length,
                    (index) => Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _generateSkillIcon(SkillType.Passive, passiveOrder: index + 1),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  (_skill[SkillType.Passive] as List<Map<String, Object>>)[index]['name'],
                                  style: _getSkillTitleStyle(),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  (_skill[SkillType.Passive] as List<Map<String, Object>>)[index]['description'],
                                  style: _getSkillDescriptionStyle(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    'l_constellations',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ).tr(),
                ),
                Column(
                  children: List.generate(
                    _constellation.length,
                    (index) => Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _generateConstellationIcon(_constellation.keys.elementAt(index)),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                _myCharacter.consetllationIndex > index
                                    ? Text(
                                        (_constellation.values.elementAt(index) as Map<String, Object>)['name'],
                                        style: _getSkillTitleStyle(),
                                      )
                                    : Text(
                                        ((_constellation.values.elementAt(index) as Map<String, Object>)['name'] as String) + '（未解锁）',
                                        style: _getConstellationUnlockedTitleStyle(),
                                      ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  (_constellation.values.elementAt(index) as Map<String, Object>)['description'],
                                  style: _getSkillDescriptionStyle(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _generateStatRow(Stats stat, double value) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 40,
        ),
        Container(
          width: 100,
          child: Text(
            GsData.getStatName(stat),
          ),
        ),
        Container(
          width: 60,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              Const.STATS_SHOW_INTEGER.contains(stat)
                  ? sprintf('%.0f', [value]) + (Const.STATS_SHOW_PERCENT.contains(stat) ? '%' : '')
                  : sprintf('%.1f', [value]) + (Const.STATS_SHOW_PERCENT.contains(stat) ? '%' : ''),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        stat == Stats.Attack
            ? Row(
                children: <Widget>[
                  Text(
                    sprintf('（%.0f + ', [_baseStat[stat] + _weapon['baseAttack']]),
                  ),
                  Text(
                    sprintf('%.0f', [value - _baseStat[Stats.Attack] - _weapon['baseAttack']]),
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                  Text(
                    '）',
                  ),
                ],
              )
            : stat == Stats.Hp || stat == Stats.Defend
                ? Row(
                    children: <Widget>[
                      Text(
                        sprintf('（%.0f + ', [_baseStat[stat]]),
                      ),
                      Text(
                        sprintf('%.0f', [value - _baseStat[stat]]),
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                      ),
                      Text(
                        '）',
                      ),
                    ],
                  )
                : Container(),
      ],
    );
  }

  Widget _generateSkillIcon(SkillType skillType, {int passiveOrder}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/rarity_1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Image.asset(
        GsData.getSkillFilePath(_myCharacter.characterId, skillType, passiveOrder: passiveOrder),
        width: 100,
        height: 100,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _generateConstellationIcon(Constellation constellation) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/rarity_1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Image.asset(
        GsData.getConstellationFilePath(_myCharacter.characterId, constellation),
        width: 100,
        height: 100,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _generateActiveSkillRow(SkillType skillType, int skillLevel) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _generateSkillIcon(skillType),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  (_skill[skillType] as Map<String, Object>)['name'],
                  style: _getSkillTitleStyle(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  (_skill[skillType] as Map<String, Object>)['description'],
                  style: _getSkillDescriptionStyle(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'l_show_skill_level',
                ).tr(args: [skillLevel.toString()]),
                SizedBox(
                  height: 3,
                ),
                Column(
                  children: List.generate(((_skill[skillType] as Map<String, Object>)['buff'] as List<Object>).length, (index) {
                    Map<String, Object> buff = ((_skill[skillType] as Map<String, Object>)['buff'] as List<Object>)[index];
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(buff['name']),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                sprintf('%.1f', [Utils.getSkillValue(buff['value'], skillLevel)]) + Utils.getValueUnitFromStat(buff['stat']),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                ),
                Column(
                  children: List.generate(((_skill[skillType] as Map<String, Object>)['hit'] as List<Object>).length, (index) {
                    Map<String, Object> hit = ((_skill[skillType] as Map<String, Object>)['hit'] as List<Object>)[index];
                    List<Map<String, Object>> valueList = hit['value'];
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(hit['name']),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: List.generate(valueList.length, (index) {
                              String text = '';
                              Map extraMap = valueList[index]['extra'];
                              double value = Utils.getSkillValue(valueList[index]['value'], skillLevel);
                              if (extraMap.length <= 0) {
                                text = sprintf('%.1f', [value]) + '%';
                              } else {
                                if (value != 0) {
                                  text = sprintf('%.1f+', [value]) + '%';
                                }
                                for (MapEntry<Stats, List<double>> extra in extraMap.entries) {
                                  text += sprintf('%.1f%s+', [Utils.getSkillValue(extra.value, skillLevel), Utils.getValueUnitFromStat(extra.key)]);
                                }
                                text = text.substring(0, text.length - 1);
                              }
                              return Text(
                                text,
                                textAlign: TextAlign.end,
                              );
                            }),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
                Column(
                  children: List.generate(((_skill[skillType] as Map<String, Object>)['other'] as List<Object>).length, (index) {
                    Map<String, Object> other = ((_skill[skillType] as Map<String, Object>)['other'] as List<Object>)[index];
                    List<String> valueList = other['value'];
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(other['name']),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                Utils.getSkillOtherValue(valueList, skillLevel),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                ),
                skillType == SkillType.SkillQ
                    ? Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('l_energy').tr(),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Text(
                                      (_skill[skillType] as Map<String, Object>)['energy'].toString(),
                                      textAlign: TextAlign.end,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _getSkillTitleStyle() {
    return TextStyle(
      fontSize: 18,
    );
  }

  TextStyle _getConstellationUnlockedTitleStyle() {
    return TextStyle(
      fontSize: 18,
      color: Colors.black54,
    );
  }

  TextStyle _getSkillDescriptionStyle() {
    return TextStyle(
      color: Colors.black54,
    );
  }
}
