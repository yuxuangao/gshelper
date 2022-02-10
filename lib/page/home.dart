import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:gshelper/page/homeartifact.dart';

import '../common/const.dart';
import '../common/localdata.dart';
import '../object/mycharacter.dart';
import '../object/artifact.dart';
import 'homemycharacter.dart';
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

  bool _isLoadingMyCharacter = true;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Const.TITLE),
        elevation: 0,
        bottomOpacity: 0,
      ),
      bottomNavigationBar: StyleProvider(
        style: _BottomNavigationBarStyle(),
        child: ConvexAppBar(
          items: <TabItem>[
            TabItem(
              icon: Image.asset(
                'assets/images/icon_char.png',
                color: _currentPage == _HomePageBody.MyCharacter ? Colors.white : Colors.white60,
              ),
              title: Const.TITLE_MY_CHARACTER,
            ),
            TabItem(
              icon: Image.asset(
                'assets/images/icon_artifact.png',
                color: _currentPage == _HomePageBody.Artifact ? Colors.white : Colors.white60,
              ),
              title: Const.TITLE_MY_ARTIFACT,
            ),
            TabItem(
              icon: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(90),
                ),
                child: Icon(
                  Icons.add,
                  color: Theme.of(context).primaryColor,
                  size: 36,
                ),
              ),
            ),
            TabItem(
              icon: Image.asset(
                'assets/images/icon_rep.png',
                color: _currentPage == _HomePageBody.Team ? Colors.white : Colors.white60,
              ),
              title: Const.TITLE_MY_TEAM,
            ),
            TabItem(
              icon: Image.asset(
                'assets/images/icon_gadget.png',
                color: _currentPage == _HomePageBody.Tools ? Colors.white : Colors.white60,
              ),
              title: Const.TITLE_TOOLS,
            ),
          ],
          style: TabStyle.fixedCircle,
          initialActiveIndex: _currentPage.index,
          color: Colors.white60,
          backgroundColor: Theme.of(context).primaryColor,
          activeColor: Colors.white,
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
          Text('team'),
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
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 30,
          ),
          duration: Duration(milliseconds: 400),
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/mycharacteredit").then((value) async {
                    await _myCharacterRefresh();
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/icon_char.png',
                        color: Theme.of(context).selectedRowColor,
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '添加角色',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/mycharacteredit").then((value) async {
                    await _myCharacterRefresh();
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/icon_rep.png',
                        color: Theme.of(context).selectedRowColor,
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '添加组队',
                        style: TextStyle(
                          fontSize: 18,
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
