import 'package:flutter/material.dart';

import '../common/const.dart';
import '../data/data.dart';

class DatabaseCharacterListPage extends StatefulWidget {
  @override
  _DatabaseCharacterListPage createState() => _DatabaseCharacterListPage();
}

class _DatabaseCharacterListPage extends State<DatabaseCharacterListPage> {
  List<Map<String, Object>> _characterList = [];

  @override
  void initState() {
    super.initState();
    _characterList = GsData.getCharacterListByRarityOrder();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Const.TITLE_DATABASE_CHARACTER),
        elevation: 0,
        bottomOpacity: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 15,
            ),
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              //spacing: 10.0,
              runSpacing: 10.0,
              children: List.generate(
                _characterList.length + 10,
                (index) => index >= _characterList.length
                    ? Container(
                        width: 80,
                      )
                    : _CharacterCard(
                        character: _characterList[index],
                        index: index,
                      ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class _CharacterCard extends StatelessWidget {
  final Map<String, Object> character;
  final int index;

  const _CharacterCard({Key key, this.character, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
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
                character['name'],
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
        rect: Rect.fromLTWH(5, 67, 70, 18),
        child: Image.asset(
          GsData.getRarityStarFilePath(character['rarity']),
          fit: BoxFit.contain,
        ),
      ),
      Positioned.fill(
        child: new Material(
          color: Colors.transparent,
          child: new InkWell(
            onTap: () => {
              Navigator.pushNamed(
                context,
                '/databasecharacterdetail',
                arguments: index,
              )
            },
          ),
        ),
      ),
    ]);
  }
}
