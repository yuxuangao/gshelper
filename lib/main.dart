import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gshelper/page/artifact.dart';
import 'package:gshelper/page/damage.dart';
import 'package:gshelper/page/mycharacter.dart';
import 'package:gshelper/page/mycharacteredit.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'page/home.dart';
import 'common/const.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Const.TITLE,
        theme: ThemeData(
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: "/",
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => HomePage(),
          '/artifact': (BuildContext context) => ArtifactPage(),
          '/damage': (BuildContext context) => DamagePage(),
          '/mycharacter': (BuildContext context) => MyCharacterPage(),
          '/mycharacteredit': (BuildContext context) => MyCharacterEditPage(),
        },
        builder: (BuildContext context, Widget widget) {
          return ScrollConfiguration(
              behavior: ScrollBehaviorModified(), child: widget);
        },
      ),
    );
  }
}

class ScrollBehaviorModified extends ScrollBehavior {
  const ScrollBehaviorModified();

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const BouncingScrollPhysics();
  }
}
