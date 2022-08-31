import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../data/data.dart';

class DatabaseWeaponListPage extends StatefulWidget {
  @override
  _DatabaseWeaponListPage createState() => _DatabaseWeaponListPage();
}

class _DatabaseWeaponListPage extends State<DatabaseWeaponListPage> {
  List<Map<String, Object>> _weaponList = [];

  @override
  void initState() {
    super.initState();
    _weaponList = GsData.getWeaponListByRarityOrder();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('t_database_weapon').tr(),
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
                _weaponList.length + 10,
                (index) => index >= _weaponList.length
                    ? Container(
                        width: 80,
                      )
                    : _WeaponCard(
                        weapon: _weaponList[index],
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

class _WeaponCard extends StatelessWidget {
  final Map<String, Object> weapon;
  final int index;

  const _WeaponCard({Key key, @required this.weapon, @required this.index}) : super(key: key);

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
                  image: AssetImage(GsData.getRarityBackgroundFilePath(weapon['rarity'])),
                  fit: BoxFit.cover,
                ),
              ),
              child: Image.asset(
                GsData.getWeaponFilePath(weapon['weapon_id']),
                width: 80,
                height: 80,
                fit: BoxFit.contain,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Container(
              width: 80,
              padding: EdgeInsets.fromLTRB(0, 4, 0, 2),
              color: Colors.black12,
              child: Text(
                weapon['name'],
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
          GsData.getRarityStarFilePath(weapon['rarity']),
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
                '/databaseweapondetail',
                arguments: index,
              );
            },
          ),
        ),
      ),
    ]);
  }
}
