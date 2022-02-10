import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';

import '../common/const.dart';
import '../object/artifact.dart';
import '../data/data.dart';

class HomeArtifactPage extends StatefulWidget {
  final List<Artifact> artifactList;
  final bool isLoading;

  HomeArtifactPage({Key key, @required this.artifactList, @required this.isLoading}) : super(key: key);

  @override
  _HomeArtifactPage createState() => _HomeArtifactPage();
}

class _HomeArtifactPage extends State<HomeArtifactPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        widget.isLoading
            ? CircularProgressIndicator()
            : Expanded(
                child: ListView.builder(
                  itemCount: widget.artifactList.length * 2 + 1,
                  itemBuilder: (context, index) {
                    if (index == widget.artifactList.length * 2) {
                      return SizedBox(
                        height: 60,
                      );
                    }
                    if (index % 2 == 1) {
                      return Divider(height: 0.5);
                    }

                    Artifact artifact = widget.artifactList[(index / 2).floor()];
                    Map<String, Object> artifactData = GsData.getArtifactFromId(artifact.artifactId);
                    return ListTile(
                      isThreeLine: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      leading: Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: ClipPath(
                              clipper: _ArtifactClipper(),
                              child: Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(GsData.getRarityBackgroundFilePath(GsData.getArtifactFromId(artifact.artifactId)['rarity'])),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Image.asset(
                                  GsData.getArtifactFilePath(artifact.artifactId, artifact.position),
                                  width: 40,
                                  height: 40,
                                  scale: 2,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(3),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(GsData.getRarityBackgroundFilePath(GsData.getCharacterFromId(artifact.characterId)['rarity'])),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Image.asset(
                              GsData.getCharacterFaceFilePath(artifact.characterId),
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                      title: Text((artifactData['piece_name'] as Map<ArtifactPosition, String>)[artifact.position]),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            sprintf('%s（%s）', [artifactData['name'], GsData.getArtifactPositionName(artifact.position)]),
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            GsData.getStatName(artifact.mainStat) +
                                '： ' +
                                sprintf([Stats.Attack, Stats.Defend, Stats.Hp, Stats.Mastery].contains(artifact.mainStat) ? '%.0f' : '%.1f',
                                    [GsData.getArtifactMainStatValue(artifact.mainStat)]) +
                                (Const.STATS_SHOW_PERCENT.contains(artifact.mainStat) ? '%' : ''),
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              artifact.subStatList.length,
                              (index) => Column(
                                children: <Widget>[
                                  Text(
                                    GsData.getStatName(artifact.subStatList[index]),
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Text(
                                    sprintf(Const.STATS_SHOW_INTEGER.contains(artifact.subStatList[index]) ? '%.0f' : '%.1f', [artifact.subValueList[index]]) +
                                        (Const.STATS_SHOW_PERCENT.contains(artifact.subStatList[index]) ? '%' : ''),
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/artifactdetail', arguments: artifact);
                      },
                    );
                  },
                ),
              ),
      ],
    );
  }
}

class _ArtifactClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..addRRect(RRect.fromLTRBR(0, 0, size.width, size.height, Radius.circular(6)))
      ..addOval(Rect.fromCircle(center: Offset(size.width - 3, 3), radius: 15))
      ..fillType = PathFillType.evenOdd;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
