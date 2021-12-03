import 'package:flutter/material.dart';

import '../common/const.dart';

class MyCharacterPage extends StatefulWidget {
  @override
  _MyCharacterPage createState() => _MyCharacterPage();
}

class _MyCharacterPage extends State<MyCharacterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Const.TITLE_MY_CHARACTER),
        elevation: 0,
        bottomOpacity: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, "/mycharacteredit");
        },
        icon: Icon(Icons.add),
        label: Text('添加角色'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
