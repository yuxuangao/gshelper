import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../common/localdata.dart';
import '../data/data.dart';
import '../object/team.dart';
import '../object/mycharacter.dart';
import '../part/texticonbutton.dart';
import '../logic/mycharacter.dart';

class HomeTeam extends StatefulWidget {
  final Function refresh;
  final List<Team> teamList;
  final bool isLoading;
  final List<MyCharacter> myCharacterList;

  const HomeTeam({Key key, @required this.refresh, @required this.teamList, @required this.isLoading, @required this.myCharacterList}) : super(key: key);

  @override
  _HomeTeam createState() => _HomeTeam();
}

class _HomeTeam extends State<HomeTeam> {
  @override
  void initState() {
    super.initState();

    Future(() async {
      widget.refresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xffeaeaea),
      child: Column(
        children: <Widget>[
          widget.isLoading
              ? Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: widget.teamList.length + 1,
                    itemBuilder: (context, index) => index < widget.teamList.length
                        ? _TeamCard(widget.teamList[index], widget.refresh, widget.myCharacterList)
                        : SizedBox(
                            height: 40,
                          ),
                  ),
                ),
        ],
      ),
    );
  }
}

class _TeamCard extends StatefulWidget {
  final Team team;
  final Function refresh;
  final List<MyCharacter> allMyCharacterList;

  const _TeamCard(this.team, this.refresh, this.allMyCharacterList);

  @override
  _TeamCardState createState() => _TeamCardState();
}

class _TeamCardState extends State<_TeamCard> {
  List<MyCharacter> _myCharacterList;
  List<Map<String, Object>> _characterList;
  LocalData _localData = LocalData.instance;

  void _loadData() {
    _myCharacterList = [];
    _characterList = [];
    for (int myCharacterId in widget.team.myCharacterIdList) {
      MyCharacter myCharacter = widget.allMyCharacterList.firstWhere((element) => element.myCharacterId == myCharacterId, orElse: () => null);
      if (myCharacter != null) {
        MyCharacterCalculator.adjustMyCharacter(myCharacter, GsData.getCharacterFromId(myCharacter.characterId), GsData.getWeaponFromId(myCharacter.weaponId));
        _myCharacterList.add(myCharacter);
        _characterList.add(GsData.getCharacterFromId(myCharacter.characterId));
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    _loadData();
    if (_myCharacterList.isEmpty) return Container();

    return Card(
      elevation: 1,
      margin: EdgeInsets.only(bottom: 5, top: 5),
      shape: RoundedRectangleBorder(),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Text(
                      widget.team.teamName,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      _myCharacterList.length,
                      (index) => _CharacterCard(
                        character: _characterList[index],
                        myCharacter: _myCharacterList[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1,
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextIconButton(
                label: 'l_damage_simulator'.tr(),
                icon: Icons.calculate,
                onPressed: _showDamageChooseDialog,
              ),
              TextIconButton(
                label: 'l_edit'.tr(),
                icon: Icons.drive_file_rename_outline,
                onPressed: () {
                  Navigator.pushNamed(context, '/teamedit', arguments: {
                    'team': widget.team,
                    'myCharacterList': widget.allMyCharacterList,
                  }).then((value) async {
                    await widget.refresh();
                  });
                },
              ),
              TextIconButton(
                label: 'l_delete'.tr(),
                icon: Icons.delete,
                onPressed: _delete,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _showDamageChooseDialog() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text('l_choose_damage_character').tr(),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: List<Widget>.generate(_myCharacterList.length, (index) {
            MyCharacter myCharacter = _myCharacterList[index];
            Map<String, Object> character = _characterList[index];
            return ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/mycharacterdamage', arguments: {
                  'myCharacter': myCharacter,
                  'teamMyCharacterList': _myCharacterList,
                  'teamCharacterList': _characterList,
                });
              },
              leading: Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Image.asset(GsData.getCharacterFilePath(myCharacter.characterId)),
              ),
              title: Text(character['name']),
              subtitle: Text(GsData.getConstellationName(Constellation.values[myCharacter.consetllationIndex]) +
                  '  ' +
                  GsData.getLevelNameFromIndex(myCharacter.levelIndex)),
            );
          }),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('l_close').tr(),
          ),
        ],
      ),
    );
  }

  Future<void> _delete() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: Text('m_confirm_delete').tr(),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('l_cancel').tr(),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              await _localData.deleteTeam(widget.team.teamId);
              widget.refresh();
            },
            child: Text('l_ok').tr(),
          ),
        ],
      ),
    );
  }
}

class _CharacterCard extends StatelessWidget {
  final Map<String, Object> character;
  final MyCharacter myCharacter;

  const _CharacterCard({Key key, @required this.character, @required this.myCharacter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(0),
              clipBehavior: Clip.antiAlias,
              elevation: 2,
              child: Column(
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
                      GsData.getLevelNameFromIndex(myCharacter.levelIndex),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fromRect(
              rect: Rect.fromLTWH(3, 3, 20, 20),
              child: Image.asset(
                GsData.getElementFilePath(character['element']),
                fit: BoxFit.contain,
              ),
            ),
            Positioned.fromRect(
              rect: Rect.fromLTWH(61, 0, 18, 18),
              child: myCharacter.consetllationIndex > 0
                  ? Container(
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          myCharacter.consetllationIndex.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ),
            Positioned.fromRect(
              rect: Rect.fromLTWH(5, 67, 70, 18),
              child: Image.asset(
                GsData.getRarityStarFilePath(character['rarity']),
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        Container(
          width: 80,
          padding: EdgeInsets.only(top: 6),
          child: Text(
            character['name'],
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
