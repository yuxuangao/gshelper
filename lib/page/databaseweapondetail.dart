import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sprintf/sprintf.dart';

import '../common/const.dart';
import '../common/utils.dart';
import '../data/data.dart';

class DatabaseWeaponDetailPage extends StatefulWidget {
  @override
  _DatabaseWeaponDetailPage createState() => _DatabaseWeaponDetailPage();
}

class _DatabaseWeaponDetailPage extends State<DatabaseWeaponDetailPage> {
  List<Map<String, Object>> _weaponList = [];
  Map<String, Object> _weapon;
  int _currentIndex = -1;
  double _currentScrollPosition = -1;
  CarouselController _carouselController = CarouselController();

  bool _firstLoad = true;

  @override
  void initState() {
    super.initState();
    _weaponList = GsData.getWeaponListByRarityOrder();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_firstLoad) return;

    _currentIndex = ModalRoute.of(context).settings.arguments;
    _currentScrollPosition = _currentIndex.toDouble();
    _readWeaponInfo();
    _firstLoad = false;
  }

  void _readWeaponInfo() {
    _weapon = _weaponList[_currentIndex];
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
            title: Text(Const.TITLE_DATABASE_WEAPON_DETAIL),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: EdgeInsets.fromLTRB(20, 110, 20, 5),
                child: CarouselSlider.builder(
                  carouselController: _carouselController,
                  itemCount: _weaponList.length,
                  itemBuilder: (context, itemIndex, pageViewIndex) {
                    Map<String, Object> weapon = _weaponList[itemIndex];
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
                                    image: AssetImage(GsData.getRarityBackgroundFilePath(weapon['rarity'])),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Color(0xfffffacd),
                                    width: 2,
                                  ),
                                ),
                                child: Image.asset(
                                  GsData.getWeaponFilePath(weapon['weapon_id']),
                                  width: 70,
                                  height: 70,
                                  alignment: Alignment.bottomCenter,
                                  fit: BoxFit.contain,
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
                        _readWeaponInfo();
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(GsData.getRarityBackgroundFilePath(_weapon['rarity'])),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        GsData.getWeaponFilePath(_weapon['weapon_id']),
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                GsData.getWeaponTypeFilePath(_weapon['type']),
                                width: 30,
                                height: 30,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                _weapon['name'],
                                style: TextStyle(
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                width: 160,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 90,
                                          child: Text(
                                            GsData.getStatName(Stats.Attack),
                                          ),
                                        ),
                                        Flexible(
                                          fit: FlexFit.tight,
                                          child: Text(
                                            sprintf('%.0f', [_weapon['baseAttack']]),
                                            textAlign: TextAlign.end,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 160,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 90,
                                          child: Text(
                                            GsData.getStatName(_weapon['subStat']),
                                          ),
                                        ),
                                        Flexible(
                                          fit: FlexFit.tight,
                                          child: Text(
                                            sprintf(Const.STATS_SHOW_INTEGER.contains(_weapon['subStat']) ? '%.0f' : '%.1f', [_weapon['subStatValue']]) +
                                                (Const.STATS_SHOW_PERCENT.contains(_weapon['subStat']) ? '%' : ''),
                                            textAlign: TextAlign.end,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List<Widget>.generate(
                      Refine.values.length,
                      (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            GsData.getRefineName(Refine.values[index]),
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(Utils.getWeaponDescription(_weapon, Refine.values[index])),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
