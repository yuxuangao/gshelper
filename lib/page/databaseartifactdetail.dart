import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';

import '../data/data.dart';

class DatabaseArtifactDetailPage extends StatefulWidget {
  @override
  _DatabaseArtifactDetailPage createState() => _DatabaseArtifactDetailPage();
}

class _DatabaseArtifactDetailPage extends State<DatabaseArtifactDetailPage> {
  List<Map<String, Object>> _artifactList = [];
  Map<String, Object> _artifact;
  int _currentIndex = -1;
  double _currentScrollPosition = -1;
  CarouselController _carouselController = CarouselController();

  bool _firstLoad = true;

  @override
  void initState() {
    super.initState();
    _artifactList = GsData.getArtifactListByRarityOrder();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_firstLoad) return;

    _currentIndex = ModalRoute.of(context).settings.arguments;
    _currentScrollPosition = _currentIndex.toDouble();
    _readArtifactInfo();
    _firstLoad = false;
  }

  void _readArtifactInfo() {
    _artifact = _artifactList[_currentIndex];
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
            title: Text('t_database_artifact_detail').tr(),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: EdgeInsets.fromLTRB(20, 110, 20, 5),
                child: CarouselSlider.builder(
                  carouselController: _carouselController,
                  itemCount: _artifactList.length,
                  itemBuilder: (context, itemIndex, pageViewIndex) {
                    Map<String, Object> artifact = _artifactList[itemIndex];
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
                                    image: AssetImage(GsData.getRarityBackgroundFilePath(artifact['rarity'])),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Color(0xfffffacd),
                                    width: 2,
                                  ),
                                ),
                                child: Image.asset(
                                  GsData.getArtifactFilePath(artifact['artifact_id'], ArtifactPosition.Flower),
                                  width: 70,
                                  height: 70,
                                  alignment: Alignment.center,
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
                        _readArtifactInfo();
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
                ListTile(
                  title: Text(
                    _artifact['name'],
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List<Widget>.generate(
                      ArtifactPosition.values.length,
                      (index) => Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(GsData.getRarityBackgroundFilePath(_artifact['rarity'])),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              GsData.getArtifactFilePath(_artifact['artifact_id'], ArtifactPosition.values[index]),
                              width: 55,
                              height: 55,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            width: 65,
                            child: Text(
                              (_artifact['piece_name'] as Map<ArtifactPosition, String>)[ArtifactPosition.values[index]],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _artifact['name'].toString() + ' 二件套',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(((_artifact['setEffect'] as Map<ArtifactSetType, Object>)[ArtifactSetType.Set2] as Map<String, Object>)['description']),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        _artifact['name'].toString() + ' 四件套',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(((_artifact['setEffect'] as Map<ArtifactSetType, Object>)[ArtifactSetType.Set4] as Map<String, Object>)['description']),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
