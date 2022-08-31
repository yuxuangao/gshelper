import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sprintf/sprintf.dart';
import 'package:easy_localization/easy_localization.dart';

import '../data/data.dart';
import '../common/const.dart';
import '../common/utils.dart';
import '../part/texticonbutton.dart';

class DatabaseCharacterDetailPage extends StatefulWidget {
  @override
  _DatabaseCharacterDetailPage createState() => _DatabaseCharacterDetailPage();
}

class _DatabaseCharacterDetailPage extends State<DatabaseCharacterDetailPage> {
  List<Map<String, Object>> _characterList = [];
  Map<String, Object> _character;
  List<Map<String, Object>> _passiveSkillList;
  Map<SkillType, Object> _skillList;
  Map<Constellation, Object> _constellationList;
  Map<Levels, Map<Stats, double>> _stat;
  int _currentIndex = -1;
  double _currentScrollPosition = -1;
  CarouselController _carouselController = CarouselController();
  Widget _descriptionBlock;

  bool _firstLoad = true;

  @override
  void initState() {
    super.initState();
    _characterList = GsData.getCharacterListByRarityOrder();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_firstLoad) return;

    _currentIndex = ModalRoute.of(context).settings.arguments;
    _currentScrollPosition = _currentIndex.toDouble();
    _readCharacterInfo();
    _firstLoad = false;
  }

  void _readCharacterInfo() {
    _character = _characterList[_currentIndex];
    Map<Levels, Map<Stats, double>> rawStat = _character['stat'];
    _stat = {};
    for (MapEntry<Levels, Map<Stats, double>> statEntry in rawStat.entries) {
      Map<Stats, double> statValue = {...statEntry.value};
      statValue.removeWhere((key, value) => value == 0.0);
      _stat[statEntry.key] = statValue;
    }

    Map<SkillType, Object> skill = GsData.getSkillFromCharacterId(_character['character_id']);
    if (skill != null) {
      _passiveSkillList = skill[SkillType.Passive];
      _skillList = {
        SkillType.SkillA: skill[SkillType.SkillA],
        SkillType.SkillE: skill[SkillType.SkillE],
        SkillType.SkillQ: skill[SkillType.SkillQ],
      };
    } else {
      _passiveSkillList = [];
      _skillList = {};
    }
    _constellationList = GsData.getConstellationFromCharacterId(_character['character_id'], Constellation.Con6) ?? {};

    _descriptionBlock = _getCharacterBlock();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            forceElevated: true,
            pinned: true,
            elevation: 0,
            expandedHeight: 140.0,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            foregroundColor: Theme.of(context).colorScheme.onSecondary,
            title: Text('t_database_character_detail').tr(),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: EdgeInsets.fromLTRB(20, 110, 20, 5),
                child: CarouselSlider.builder(
                  carouselController: _carouselController,
                  itemCount: _characterList.length,
                  itemBuilder: (context, itemIndex, pageViewIndex) {
                    Map<String, Object> character = _characterList[itemIndex];
                    return Transform.scale(
                      scale: max(0.7, 1 - (_currentScrollPosition - itemIndex).abs() / 3),
                      child: InkWell(
                        onTap: () {
                          if (itemIndex == _currentIndex) return;
                          _carouselController.animateToPage(itemIndex);
                        },
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(GsData.getRarityBackgroundFilePath(character['rarity'])),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Color(0xfffffacd),
                                    width: 2,
                                  ),
                                ),
                                child: Image.asset(
                                  GsData.getCharacterFaceFilePath(character['character_id']),
                                  width: 70,
                                  height: 70,
                                  alignment: Alignment.bottomCenter,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    initialPage: _currentIndex,
                    aspectRatio: 0.8,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.2,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                        _readCharacterInfo();
                      });
                    },
                    onScrolled: (value) {
                      setState(() {
                        _currentScrollPosition = value;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Center(
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset(
                        GsData.getCharacterGachaFilePath(_character['character_id']),
                        width: double.infinity,
                        height: 480,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _descriptionBlock = _getCharacterBlock();
                                });
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    _character['name'],
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    GsData.getElementFilePath(_character['element']),
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset(
                                    GsData.getWeaponTypeFilePath(_character['weapon']),
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        TextIconButton(
                          icon: Icons.calculate,
                          label: 't_database_character_damage'.tr(),
                          onPressed: () {
                            Navigator.pushNamed(context, '/databasecharacterdamage', arguments: _character['character_id']);
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                              child: Column(
                                children: List<Widget>.generate(
                                  _passiveSkillList.length,
                                  (index) => _ImageCircleIcon(
                                    image: GsData.getSkillFilePath(_character['character_id'], SkillType.Passive, passiveOrder: index + 1),
                                    onTap: () {
                                      setState(() {
                                        _descriptionBlock = _getPassiveSkillBlock(index);
                                      });
                                    },
                                    color: GsData.getElementBorderColor(_character['element']),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 130),
                              child: Column(
                                children: List<Widget>.generate(
                                  _skillList.length,
                                  (index) => _ImageCircleIcon(
                                    image: GsData.getSkillFilePath(_character['character_id'], _skillList.keys.elementAt(index)),
                                    onTap: () {
                                      setState(() {
                                        _descriptionBlock = _getSkillBlock(index);
                                      });
                                    },
                                    color: GsData.getElementBorderColor(_character['element']),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: List<Widget>.generate(
                            _constellationList.length,
                            (index) => Container(
                              padding: EdgeInsets.only(right: (index - 2.5).abs() * 25 + 5),
                              child: _ImageCircleIcon(
                                image: GsData.getConstellationFilePath(_character['character_id'], _constellationList.keys.elementAt(index)),
                                onTap: () {
                                  setState(() {
                                    _descriptionBlock = _getConstellationBlock(index);
                                  });
                                },
                                color: GsData.getElementBorderColor(_character['element']),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70,
                      ),
                      child: _descriptionBlock,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getPassiveSkillBlock(int index) {
    Map<String, Object> skill = _passiveSkillList[index];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          skill['name'],
          style: _getDescriptionBlockTitleStyle(),
        ),
        Divider(
          color: Theme.of(context).colorScheme.secondary,
          thickness: 1,
        ),
        Text(skill['description']),
      ],
    );
  }

  Widget _getSkillBlock(int index) {
    Map<String, Object> skill = _skillList[_skillList.keys.elementAt(index)];
    List<Map<String, Object>> buffList = (skill['buff'] as List).length <= 0 ? [] : skill['buff'];
    List<Map<String, Object>> hitList = (skill['hit'] as List).length <= 0 ? [] : skill['hit'];
    List<Map<String, Object>> otherList = (skill['other'] as List).length <= 0 ? [] : skill['other'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          skill['name'],
          style: _getDescriptionBlockTitleStyle(),
        ),
        Divider(
          color: Theme.of(context).colorScheme.secondary,
          thickness: 1,
        ),
        Text(skill['description']),
        /*SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List<Widget>.generate(
                    buffList.length,
                    (index) => Container(
                      child: Text(buffList[index]['name']),
                    ),
                  ) +
                  List<Widget>.generate(
                    hitList.length,
                    (index) => Container(
                      child: Text(hitList[index]['name']),
                    ),
                  ) +
                  List<Widget>.generate(
                    otherList.length,
                    (index) => Container(
                      child: Text(otherList[index]['name']),
                    ),
                  ),
            ),
            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List<Widget>.generate(buffList.length, (index) {
                        List<double> valueList = buffList[index]['value'];
                        Stats buffStat = buffList[index]['stat'];
                        return Row(
                          children: List<Widget>.generate(
                            15,
                            (valueIndex) => Container(
                              child: Text(sprintf(Const.STATS_SHOW_INTEGER.contains(buffStat) ? '%.0f' : '%.2f', [Utils.getSkillValue(valueList, valueIndex)]) +
                                  Utils.getValueUnitFromStat(buffStat)),
                            ),
                          ),
                        );
                      }) +
                      List<Widget>.generate(hitList.length, (index) {
                        List<Map<String, Object>> hitValueList = hitList[index]['value'];
                        return Row(
                          children: List<Widget>.generate(15, (valueIndex) {
                            return Container(
                              child: Column(
                                children: List<Widget>.generate(hitValueList.length, (hitOrderIndex) {
                                  String text = '';
                                  double value = Utils.getSkillValue(hitValueList[hitOrderIndex]['value'], valueIndex);
                                  Map<Stats, List<double>> extraMap =
                                      (hitValueList[hitOrderIndex]['extra'] as Map).length <= 0 ? {} : hitValueList[hitOrderIndex]['extra'];
                                  if (extraMap.length <= 0) {
                                    text = sprintf('%.1f', [value]) + '%';
                                  } else {
                                    if (value != 0) {
                                      text = sprintf('%.1f+', [value]) + '%';
                                    }
                                    for (MapEntry<Stats, List<double>> extra in extraMap.entries) {
                                      text += sprintf('%.1f%s+', [Utils.getSkillValue(extra.value, valueIndex), Utils.getValueUnitFromStat(extra.key)]);
                                    }
                                    text = text.substring(0, text.length - 1);
                                  }
                                  return Text(text);
                                }),
                              ),
                            );
                          }),
                        );
                      }) +
                      List<Widget>.generate(otherList.length, (index) {
                        List<String> valueList = otherList[index]['value'];
                        return Row(
                          children: List<Widget>.generate(
                            15,
                            (valueIndex) => Container(
                              child: Text(valueIndex == 0 ? otherList[index]['name'] : Utils.getSkillOtherValue(valueList, valueIndex)),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),*/
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Table(
            columnWidths: Map<int, TableColumnWidth>.fromIterable(
              List.generate(16, (index) => index),
              value: (element) => FixedColumnWidth(70),
            ),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: <TableRow>[
                  TableRow(
                    children: List<TableCell>.generate(
                      16,
                      (index) => TableCell(
                        child: Text(
                          index == 0 ? '' : index.toString() + '级',
                          textAlign: TextAlign.center,
                          style: _getTableCellStyle(),
                        ),
                      ),
                    ),
                  ),
                ] +
                List<TableRow>.generate(buffList.length, (index) {
                  List<double> valueList = buffList[index]['value'];
                  Stats buffStat = buffList[index]['stat'];
                  return TableRow(
                    children: List<TableCell>.generate(
                      16,
                      (valueIndex) => TableCell(
                          child: valueIndex == 0
                              ? Padding(
                                  padding: EdgeInsets.all(3),
                                  child: Text(
                                    buffList[index]['name'],
                                    textAlign: TextAlign.left,
                                    style: _getTableCellStyle(),
                                  ),
                                )
                              : Padding(
                                  padding: EdgeInsets.all(3),
                                  child: Text(
                                    sprintf(Const.STATS_SHOW_INTEGER.contains(buffStat) ? '%.0f' : '%.2f', [Utils.getSkillValue(valueList, valueIndex)]) +
                                        Utils.getValueUnitFromStat(buffStat),
                                    textAlign: TextAlign.left,
                                    style: _getTableCellStyle(),
                                  ),
                                )),
                    ),
                  );
                }) +
                List<TableRow>.generate(hitList.length, (index) {
                  List<Map<String, Object>> hitValueList = hitList[index]['value'];
                  return TableRow(
                    children: List<TableCell>.generate(16, (valueIndex) {
                      if (valueIndex == 0)
                        return TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(3),
                            child: Text(
                              hitList[index]['name'],
                              textAlign: TextAlign.left,
                              style: _getTableCellStyle(),
                            ),
                          ),
                        );

                      return TableCell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List<Widget>.generate(hitValueList.length, (hitOrderIndex) {
                            String text = '';
                            double value = Utils.getSkillValue(hitValueList[hitOrderIndex]['value'], valueIndex);
                            Map<Stats, List<double>> extraMap =
                                (hitValueList[hitOrderIndex]['extra'] as Map).length <= 0 ? {} : hitValueList[hitOrderIndex]['extra'];
                            if (extraMap.length <= 0) {
                              text = sprintf('%.2f', [value]) + '%';
                            } else {
                              if (value != 0) {
                                text = sprintf('%.2f+', [value]) + '%';
                              }
                              for (MapEntry<Stats, List<double>> extra in extraMap.entries) {
                                text += sprintf('%.2f%s+', [Utils.getSkillValue(extra.value, valueIndex), Utils.getValueUnitFromStat(extra.key)]);
                              }
                              text = text.substring(0, text.length - 1);
                            }
                            return Padding(
                              padding: EdgeInsets.all(3),
                              child: Text(
                                text,
                                textAlign: TextAlign.left,
                                style: _getTableCellStyle(),
                              ),
                            );
                          }),
                        ),
                      );
                    }),
                  );
                }) +
                List<TableRow>.generate(otherList.length, (index) {
                  List<String> valueList = otherList[index]['value'];
                  return TableRow(
                    children: List<TableCell>.generate(
                      16,
                      (valueIndex) => TableCell(
                        child: valueIndex == 0
                            ? Padding(
                                padding: EdgeInsets.all(3),
                                child: Text(
                                  otherList[index]['name'],
                                  textAlign: TextAlign.left,
                                  style: _getTableCellStyle(),
                                ),
                              )
                            : Padding(
                                padding: EdgeInsets.all(3),
                                child: Text(
                                  valueIndex == 0 ? otherList[index]['name'] : Utils.getSkillOtherValue(valueList, valueIndex),
                                  textAlign: TextAlign.left,
                                  style: _getTableCellStyle(),
                                ),
                              ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }

  Widget _getConstellationBlock(int index) {
    Map<String, Object> constellation = _constellationList[_constellationList.keys.elementAt(index)];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          constellation['name'],
          style: _getDescriptionBlockTitleStyle(),
        ),
        Divider(
          color: Theme.of(context).colorScheme.secondary,
          thickness: 1,
        ),
        Text(constellation['description']),
      ],
    );
  }

  Widget _getCharacterBlock() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  _character['name'],
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  GsData.getElementFilePath(_character['element']),
                  width: 22,
                  height: 22,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  GsData.getWeaponTypeFilePath(_character['weapon']),
                  width: 22,
                  height: 22,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            Image.asset(
              GsData.getRarityStarFilePath(_character['rarity']),
              height: 22,
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
        Divider(
          color: Theme.of(context).colorScheme.secondary,
          thickness: 1,
        ),
        Table(
          children: <TableRow>[
                TableRow(
                  children: List<TableCell>.generate(
                    Levels.values.length + 1,
                    (index) => TableCell(
                      child: Text(
                        index == 0 ? "" : GsData.getLevelNameFromIndex(index - 1),
                      ),
                    ),
                  ),
                ),
              ] +
              List<TableRow>.generate(
                _stat[Levels.values[0]].length,
                (index) => TableRow(
                  children: [
                        TableCell(
                          child: Text(GsData.getStatName(_stat[Levels.values[0]].keys.elementAt(index))),
                        ),
                      ] +
                      List<TableCell>.generate(
                        Levels.values.length,
                        (levelIndex) {
                          Stats stat = _stat[Levels.values[levelIndex]].keys.elementAt(index);
                          return TableCell(
                            child: Text(sprintf(Const.STATS_SHOW_INTEGER.contains(stat) ? "%.0f" : "%.1f", [_stat[Levels.values[levelIndex]][stat]]) +
                                (Const.STATS_SHOW_PERCENT.contains(stat) ? '%' : '')),
                          );
                        },
                      ),
                ),
              ),
        ),
      ],
    );
  }

  TextStyle _getDescriptionBlockTitleStyle() {
    return TextStyle(
      fontSize: 19,
    );
  }

  TextStyle _getTableCellStyle() {
    return TextStyle(
      fontSize: 13,
    );
  }
}

class _ImageCircleIcon extends StatelessWidget {
  final String image;
  final Function onTap;
  final double radius = 50;
  final Color color;

  _ImageCircleIcon({Key key, this.image, this.onTap, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Stack(
        children: <Widget>[
          Container(
            width: radius,
            height: radius,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            width: radius,
            height: radius,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color.withAlpha(200),
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
          Positioned.fill(
            child: new Material(
              color: Colors.transparent,
              child: new InkWell(
                borderRadius: BorderRadius.circular(radius),
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
