import 'package:flutter/material.dart';

import '../common/const.dart';
import '../data/data.dart';

class DatabaseArtifactListPage extends StatefulWidget {
  @override
  _DatabaseArtifactListPage createState() => _DatabaseArtifactListPage();
}

class _DatabaseArtifactListPage extends State<DatabaseArtifactListPage> {
  List<Map<String, Object>> _artifactList = [];

  @override
  void initState() {
    super.initState();
    _artifactList = GsData.getArtifactListByRarityOrder();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Const.TITLE_DATABASE_ARTIFACT),
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
                _artifactList.length + 10,
                (index) => index >= _artifactList.length
                    ? Container(
                        width: 80,
                      )
                    : _ArtifactCard(
                        artifact: _artifactList[index],
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

class _ArtifactCard extends StatelessWidget {
  final Map<String, Object> artifact;
  final int index;

  const _ArtifactCard({Key key, @required this.artifact, @required this.index}) : super(key: key);

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
                  image: AssetImage(GsData.getRarityBackgroundFilePath(artifact['rarity'])),
                  fit: BoxFit.cover,
                ),
              ),
              child: Image.asset(
                GsData.getArtifactFilePath(artifact['artifact_id'], ArtifactPosition.Flower),
                width: 80,
                height: 80,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
            ),
            Container(
              width: 80,
              padding: EdgeInsets.fromLTRB(4, 4, 4, 2),
              color: Colors.black12,
              child: Text(
                (artifact['name'] as String) + '\n',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              ),
            ),
          ],
        ),
      ),
      Positioned.fromRect(
        rect: Rect.fromLTWH(5, 67, 70, 18),
        child: Image.asset(
          GsData.getRarityStarFilePath(artifact['rarity']),
          fit: BoxFit.contain,
        ),
      ),
      Positioned.fill(
        child: new Material(
          color: Colors.transparent,
          child: new InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/databaseartifactdetail',
                arguments: index,
              );
            },
          ),
        ),
      ),
    ]);
  }
}
