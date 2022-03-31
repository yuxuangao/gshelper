import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../common/const.dart';

class HomeToolsPage extends StatelessWidget {
  final ChromeSafariBrowser _browser = ChromeSafariBrowser();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              Const.TITLE_DATABASE,
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text(Const.TITLE_DATABASE_CHARACTER),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/databasecharacterlist");
            },
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text(Const.TITLE_DATABASE_WEAPON),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/databaseweaponlist");
            },
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text(Const.TITLE_DATABASE_ARTIFACT),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/databaseartifactlist");
            },
          ),
          Divider(
            height: 0.5,
          ),
          SizedBox(
            height: 25,
          ),
          ListTile(
            title: Text(
              Const.TITLE_TOOLS,
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text(Const.TITLE_ARTIFACT),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/artifact");
            },
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text(Const.TITLE_DAMAGE),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/damage");
            },
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text(Const.TITLE_CODE),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/code");
            },
          ),
          Divider(
            height: 0.5,
          ),
          SizedBox(
            height: 25,
          ),
          ListTile(
            title: Text(
              '常用网站',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text('非小酋'),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              await _browser.open(url: Uri.parse('https://feixiaoqiu.com/'));
            },
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text('角色数据'),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              await _browser.open(url: Uri.parse('https://genshin.honeyhunterworld.com/db/char/characters/?lang=CHS'));
            },
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text('提瓦特大地图'),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              await _browser.open(url: Uri.parse('https://webstatic.mihoyo.com/app/ys-map-cn/index.html?bbs_presentation_style=no_header#/map/2'));
            },
          ),
          Divider(
            height: 0.5,
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
