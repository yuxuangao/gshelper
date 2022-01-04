import 'package:flutter/material.dart';

class MyCharacterDetailPage extends StatefulWidget {
  @override
  _MyCharacterDetailPage createState() => _MyCharacterDetailPage();
}

class _MyCharacterDetailPage extends State<MyCharacterDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('aaaaa'),
        elevation: 0,
        bottomOpacity: 0,
        leading: IconButton(
          onPressed: () async {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Text(
              '保存',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            iconSize: 52,
            padding: EdgeInsets.all(2),
          ),
        ],
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(),
        ),
      ),
    );
  }
}
