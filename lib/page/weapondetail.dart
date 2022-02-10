import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';

import '../object/mycharacter.dart';
import '../common/const.dart';
import '../data/data.dart';

class WeaponDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyCharacter myCharacter = ModalRoute.of(context).settings.arguments;
    Map<String, Object> weaponData = GsData.getWeaponFromId(myCharacter.weaponId);

    return Scaffold(
      appBar: AppBar(
        title: Text(Const.TITLE_WEAPON_DETAIL),
        elevation: 0,
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
                      image: AssetImage(GsData.getRarityBackgroundFilePath(weaponData['rarity'])),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    GsData.getWeaponFilePath(myCharacter.weaponId),
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
                        weaponData['name'],
                        style: TextStyle(
                          fontSize: 19,
                        ),
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
                                        sprintf('%.0f', [weaponData['baseAttack']]),
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
                                        GsData.getStatName(weaponData['subStat']),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      child: Text(
                                        sprintf(Const.STATS_SHOW_INTEGER.contains(weaponData['subStat']) ? '%.0f' : '%.1f', [weaponData['subStatValue']]) +
                                            (Const.STATS_SHOW_PERCENT.contains(weaponData['subStat']) ? '%' : ''),
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
                children: <Widget>[
                  Text(
                    GsData.getRefineName(Refine.values[myCharacter.refineIndex]),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text((weaponData['specialEffectComent'] as Map<Refine, String>)[Refine.values[myCharacter.refineIndex]]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
