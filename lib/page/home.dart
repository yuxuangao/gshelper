import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:easy_localization/easy_localization.dart';

import '../common/const.dart';
import '../common/localdata.dart';
import '../object/mycharacter.dart';
import '../object/artifact.dart';
import '../object/team.dart';
import 'homemycharacter.dart';
import 'homeartifact.dart';
import 'hometeam.dart';
import 'hometools.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  _HomePageBody _currentPage = _HomePageBody.MyCharacter;

  LocalData _localData = LocalData.instance;
  List<MyCharacter> _myCharacterList = [];
  List<Artifact> _artifactList = [];
  List<Team> _teamList = [];

  bool _isLoadingMyCharacter = true;
  bool _isLoadingTeam = true;

  Future<void> _myCharacterRefresh() async {
    setState(() {
      _isLoadingMyCharacter = true;
    });
    var myCharacterList = await _localData.getMyCharacterList();
    List<Artifact> artifactList = [];
    for (MyCharacter myCharacter in myCharacterList) {
      artifactList.addAll(myCharacter.artifactList);
    }
    setState(() {
      _myCharacterList = myCharacterList;
      _artifactList = artifactList;
      _isLoadingMyCharacter = false;
    });
  }

  Future<void> _teamRefresh() async {
    setState(() {
      _isLoadingTeam = true;
    });
    var teamList = await _localData.getTeamList();
    setState(() {
      _teamList = teamList;
      _isLoadingTeam = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('t_title').tr(),
        bottomOpacity: 0,
      ),
      bottomNavigationBar: StyleProvider(
        style: _BottomNavigationBarStyle(),
        child: ConvexAppBar(
          items: <TabItem>[
            TabItem(
              icon: Image.asset(
                'assets/images/icon_char.png',
                color: _currentPage == _HomePageBody.MyCharacter ? Theme.of(context).colorScheme.secondary : Colors.black54,
              ),
              title: 't_my_character'.tr(),
            ),
            TabItem(
              icon: Image.asset(
                'assets/images/icon_artifact.png',
                color: _currentPage == _HomePageBody.Artifact ? Theme.of(context).colorScheme.secondary : Colors.black54,
              ),
              title: 't_my_artifact'.tr(),
            ),
            TabItem(
              icon: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(90),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 36,
                ),
              ),
            ),
            TabItem(
              icon: Image.asset(
                'assets/images/icon_rep.png',
                color: _currentPage == _HomePageBody.Team ? Theme.of(context).colorScheme.secondary : Colors.black54,
              ),
              title: 't_my_team'.tr(),
            ),
            TabItem(
              icon: Image.asset(
                'assets/images/icon_gadget.png',
                color: _currentPage == _HomePageBody.Tools ? Theme.of(context).colorScheme.secondary : Colors.black54,
              ),
              title: 't_tools'.tr(),
            ),
          ],
          style: TabStyle.fixedCircle,
          initialActiveIndex: _currentPage.index,
          color: Colors.black54,
          backgroundColor: Theme.of(context).colorScheme.primary,
          activeColor: Theme.of(context).colorScheme.secondary,
          elevation: 2,
          onTap: (index) {
            setState(() {
              _currentPage = _HomePageBody.values[index];
            });
          },
          onTabNotify: (index) {
            if (index == _HomePageBody.Add.index) {
              _showAddSheet();
              return false;
            }
            return true;
          },
        ),
      ),
      body: IndexedStack(
        index: _currentPage.index,
        children: <Widget>[
          HomeMyCharacterPage(
            characterList: _myCharacterList,
            refresh: _myCharacterRefresh,
            isLoading: _isLoadingMyCharacter,
          ),
          HomeArtifactPage(
            artifactList: _artifactList,
            isLoading: _isLoadingMyCharacter,
          ),
          Text('error'),
          HomeTeam(
            refresh: _teamRefresh,
            teamList: _teamList,
            isLoading: _isLoadingTeam,
            myCharacterList: _myCharacterList,
          ),
          HomeToolsPage(),
        ],
      ),
    );
  }

  void _showAddSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => BottomSheet(
        enableDrag: false,
        backgroundColor: Colors.transparent,
        onClosing: () {},
        builder: (context) => AnimatedContainer(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10), bottom: Radius.circular(0)),
          ),
          //margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 60,
          ),
          duration: Duration(milliseconds: 400),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/mycharacteredit").then((value) async {
                    await _myCharacterRefresh();
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary.withAlpha(50),
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Image.asset(
                            'assets/images/icon_char.png',
                            color: Theme.of(context).colorScheme.secondary,
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              't_my_character_add',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ).tr(),
                            Text(
                              't_my_character_add_description',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 13,
                              ),
                            ).tr(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/teamedit", arguments: {'myCharacterList': _myCharacterList}).then((value) async {
                    await _teamRefresh();
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary.withAlpha(50),
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Image.asset(
                            'assets/images/icon_rep.png',
                            color: Theme.of(context).colorScheme.secondary,
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              't_team_add',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ).tr(),
                            Text(
                              't_team_add_description',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 13,
                              ),
                            ).tr(),
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
      ),
    );
  }
}

class _BottomNavigationBarStyle extends StyleHook {
  @override
  double get activeIconMargin => 5;

  @override
  double get activeIconSize => 40;

  @override
  double get iconSize => null;

  @override
  TextStyle textStyle(Color color) {
    return TextStyle(
      height: 1.5,
      fontSize: 10,
      color: color,
    );
  }
}

enum _HomePageBody { MyCharacter, Artifact, Add, Team, Tools }
