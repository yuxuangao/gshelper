import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'page/home.dart';
import 'page/artifact.dart';
import 'page/damage.dart';
import 'page/mycharacteredit.dart';
import 'page/mycharacterdamage.dart';
import 'page/mycharacterdetail.dart';
import 'common/const.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
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
          primarySwatch: Colors.cyan,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Main',
        ),
        initialRoute: "/",
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => HomePage(),
          '/artifact': (BuildContext context) => ArtifactPage(),
          '/damage': (BuildContext context) => DamagePage(),
          '/mycharacteredit': (BuildContext context) => MyCharacterEditPage(),
          '/mycharacterdamage': (BuildContext context) => MyCharacterDamage(),
          '/mycharacterdetail': (BuildContext context) => MyCharacterDetailPage(),
        },
        builder: (BuildContext context, Widget widget) {
          return ScrollConfiguration(behavior: ScrollBehaviorModified(), child: widget);
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
