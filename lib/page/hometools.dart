import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:easy_localization/easy_localization.dart';

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
              't_database',
              style: TextStyle(
                fontSize: 22,
              ),
            ).tr(),
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text('t_database_character').tr(),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/databasecharacterlist");
            },
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text('t_database_weapon').tr(),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/databaseweaponlist");
            },
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text('t_database_artifact').tr(),
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
              't_tools',
              style: TextStyle(
                fontSize: 22,
              ),
            ).tr(),
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text('t_artifact').tr(),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/artifact");
            },
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text('t_damage').tr(),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/damage");
            },
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text('t_code').tr(),
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
              't_website',
              style: TextStyle(
                fontSize: 22,
              ),
            ).tr(),
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text('t_website_feixiaoqiu').tr(),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              await _browser.open(url: Uri.parse('https://feixiaoqiu.com/'));
            },
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text('t_website_character').tr(),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              await _browser.open(url: Uri.parse('https://genshin.honeyhunterworld.com/db/char/characters/?lang=CHS'));
            },
          ),
          Divider(
            height: 0.5,
          ),
          ListTile(
            title: Text('t_website_map').tr(),
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
