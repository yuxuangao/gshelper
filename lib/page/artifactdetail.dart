import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';

import '../object/artifact.dart';
import '../common/const.dart';
import '../data/data.dart';

class ArtifactDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Artifact artifact = ModalRoute.of(context).settings.arguments;
    Map<String, Object> artifactData = GsData.getArtifactFromId(artifact.artifactId);

    return Scaffold(
      appBar: AppBar(
        title: Text(Const.TITLE_ARTIFACT_DETAIL),
        bottomOpacity: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
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
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(GsData.getRarityBackgroundFilePath(artifactData['rarity'])),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    GsData.getArtifactFilePath(artifact.artifactId, artifact.position),
                    width: 100,
                    height: 100,
                    scale: 2,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        (artifactData['piece_name'] as Map<ArtifactPosition, String>)[artifact.position],
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Column(
                        children: List.generate(artifact.subStatList.length + 1, (index) {
                          String statName;
                          String valueStr;
                          if (index == 0) {
                            statName = GsData.getStatName(artifact.mainStat);
                            valueStr = sprintf(Const.STATS_SHOW_INTEGER.contains(artifact.mainStat) ? '%.0f' : '%.1f',
                                    [GsData.getArtifactMainStatValue(artifact.mainStat)]) +
                                (Const.STATS_SHOW_PERCENT.contains(artifact.mainStat) ? '%' : '');
                          } else {
                            statName = GsData.getStatName(artifact.subStatList[index - 1]);
                            valueStr = sprintf(
                                    Const.STATS_SHOW_INTEGER.contains(artifact.subStatList[index - 1]) ? '%.0f' : '%.1f', [artifact.subValueList[index - 1]]) +
                                (Const.STATS_SHOW_PERCENT.contains(artifact.subStatList[index - 1]) ? '%' : '');
                          }
                          return Container(
                            width: 160,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 90,
                                      child: Text(statName),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      child: Text(
                                        valueStr,
                                        textAlign: TextAlign.end,
                                      ),
                                    ),
                                  ],
                                ),
                                index == 0
                                    ? Divider(
                                        thickness: 1,
                                      )
                                    : Container(),
                              ],
                            ),
                          );
                        }),
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
                children: <Widget>[
                  Text(
                    artifactData['name'].toString() + ' 二件套',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(((artifactData['setEffect'] as Map<ArtifactSetType, Object>)[ArtifactSetType.Set2] as Map<String, Object>)['description']),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    artifactData['name'].toString() + ' 四件套',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(((artifactData['setEffect'] as Map<ArtifactSetType, Object>)[ArtifactSetType.Set4] as Map<String, Object>)['description']),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
