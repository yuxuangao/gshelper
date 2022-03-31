import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../common/const.dart';
import '../common/localdata.dart';
import '../data/data.dart';
import '../object/mycharacter.dart';
import '../object/team.dart';

class TeamEditPage extends StatefulWidget {
  @override
  _TeamEditPage createState() => _TeamEditPage();
}

class _TeamEditPage extends State<TeamEditPage> {
  TextEditingController _nameInputController = TextEditingController();
  LocalData _localData = LocalData.instance;

  List<MyCharacter> _myCharacterList = [];
  Team _team;

  bool _editMode = false;
  bool _firstLoad = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_firstLoad) return;
    _team = (ModalRoute.of(context).settings.arguments as Map<String, Object>)['team'];
    _myCharacterList = (ModalRoute.of(context).settings.arguments as Map<String, Object>)['myCharacterList'];

    if (_team == null) {
      _team = Team();
    } else {
      _editMode = true;
      _nameInputController.text = _team.teamName;
    }

    _firstLoad = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_editMode ? Const.TITLE_TEAM_EDIT : Const.TITLE_TEAM_ADD),
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
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        '队伍名称',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        controller: _nameInputController,
                        style: TextStyle(
                          height: 1.2,
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          border: UnderlineInputBorder(),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.fromLTRB(8, 6, 8, 3),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        '队伍成员',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List<Widget>.generate(
                          4,
                          (index) => _CharacterInputCard(
                            myCharacterList: _myCharacterList,
                            team: _team,
                            index: index,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _save,
                        child: Text('保存队伍'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _save() async {
    _team.teamName = _nameInputController.text;

    if (_team.teamName == null || _team.teamName == '') {
      await _showErrorDialog("未输入队伍名称。");
      return;
    }

    List<int> myCharacterIdList = [..._team.myCharacterIdList];
    myCharacterIdList.removeWhere((element) => element < 0);
    if (myCharacterIdList.length <= 0) {
      await _showErrorDialog("未选择角色。");
      return;
    }
    if (myCharacterIdList.length != myCharacterIdList.toSet().toList().length) {
      await _showErrorDialog("选择了重复角色。");
      return;
    }

    myCharacterIdList.addAll(List.filled(4 - myCharacterIdList.length, -1));
    _team.myCharacterIdList = myCharacterIdList;

    context.loaderOverlay.show();
    await _localData.keepTeam(_team);
    context.loaderOverlay.hide();
    Navigator.pop(context);
  }

  void _showErrorDialog(String error) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: Text(error),
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
  }
}

class _CharacterInputCard extends StatefulWidget {
  final List<MyCharacter> myCharacterList;
  final Team team;
  final int index;

  _CharacterInputCard({@required this.myCharacterList, @required this.team, @required this.index});

  @override
  _CharacterInputCardState createState() => _CharacterInputCardState();
}

class _CharacterInputCardState extends State<_CharacterInputCard> {
  @override
  Widget build(BuildContext context) {
    int myCharacterId = widget.team.myCharacterIdList[widget.index];
    MyCharacter myCharacter = widget.myCharacterList.firstWhere((myCharacter) => myCharacter.myCharacterId == myCharacterId, orElse: () => null);
    if (myCharacter == null) widget.team.myCharacterIdList[widget.index] = -1;
    Map<String, Object> character = myCharacter == null ? null : GsData.getCharacterFromId(myCharacter.characterId);

    return Stack(children: <Widget>[
      Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(0),
        child: myCharacter == null
            ? Column(
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/icon_char.png',
                        width: 30,
                        height: 30,
                        color: Colors.black45,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    padding: EdgeInsets.fromLTRB(0, 4, 0, 2),
                    color: Colors.black12,
                    child: Text(
                      '选择角色',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              )
            : Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(GsData.getRarityBackgroundFilePath(character['rarity'])),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Image.asset(
                      GsData.getCharacterFaceFilePath(character['character_id']),
                      width: 80,
                      height: 80,
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Container(
                    width: 80,
                    padding: EdgeInsets.fromLTRB(0, 4, 0, 2),
                    color: Colors.black12,
                    child: Text(
                      character['name'],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
      ),
      Positioned.fill(
        child: new Material(
          color: Colors.transparent,
          child: new InkWell(
            onTap: () {
              _showChooseSheet();
            },
          ),
        ),
      ),
    ]);
  }

  void _showChooseSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => BottomSheet(
        enableDrag: false,
        backgroundColor: Colors.transparent,
        onClosing: () {},
        builder: (context) => AnimatedContainer(
          height: 500,
          padding: EdgeInsets.all(0),
          duration: Duration(milliseconds: 400),
          child: Column(
            children: <Widget>[
              Container(
                color: Theme.of(context).colorScheme.secondary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.white12),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        '取消',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.white12),
                      ),
                      onPressed: () {
                        setState(() {
                          widget.team.myCharacterIdList[widget.index] = -1;
                        });
                        Navigator.pop(context);
                      },
                      child: Text(
                        '删除选择',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Ink(
                  color: Colors.white,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      MyCharacter myCharacter = widget.myCharacterList[index];
                      Map<String, Object> character = GsData.getCharacterFromId(myCharacter.characterId);
                      return ListTile(
                        title: Text((character['name'] as String) + (myCharacter.nickName == '' ? '' : '（' + myCharacter.nickName + '）')),
                        subtitle: Row(
                          children: <Widget>[
                            Text(GsData.getLevelNameFromIndex(myCharacter.levelIndex)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(GsData.getConstellationName(Constellation.values[myCharacter.consetllationIndex])),
                          ],
                        ),
                        leading: Image.asset(GsData.getCharacterFilePath(myCharacter.characterId)),
                        onTap: () {
                          setState(() {
                            widget.team.myCharacterIdList[widget.index] = myCharacter.myCharacterId;
                          });
                          Navigator.pop(context);
                        },
                      );
                    },
                    separatorBuilder: (context, index) => Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    itemCount: widget.myCharacterList.length,
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
