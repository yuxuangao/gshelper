import 'package:flutter/material.dart';

import '../common/const.dart';
//import '../common/localdata.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Const.TITLE),
        elevation: 0,
        bottomOpacity: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/artifact");
                  },
                  child: Text(Const.TITLE_ARTIFACT),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/damage");
                  },
                  child: Text(Const.TITLE_DAMAGE),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/mycharacter");
                  },
                  child: Text(Const.TITLE_MY_CHARACTER),
                ),
              ),
            ),
            /*SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: ElevatedButton(
                  onPressed: () {
                    var localData = LocalData.instance;
                    localData.debug();
                  },
                  child: Text('DEBUG'),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
