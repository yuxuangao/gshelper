import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'page/home.dart';
import 'page/artifact.dart';
import 'page/damage.dart';
import 'page/mycharacteredit.dart';
import 'page/mycharacterdamage.dart';
import 'page/mycharacterdetail.dart';
import 'page/artifactdetail.dart';
import 'page/weapondetail.dart';
import 'page/code.dart';
import 'page/databasecharacterlist.dart';
import 'page/databasecharacterdetail.dart';
import 'page/databasecharacterdamage.dart';
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
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Main',
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.transparent,
          ),
        ),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale.fromSubtags(languageCode: 'zh'),
        ],
        initialRoute: "/",
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => HomePage(),
          '/artifact': (BuildContext context) => ArtifactPage(),
          '/damage': (BuildContext context) => DamagePage(),
          '/mycharacteredit': (BuildContext context) => MyCharacterEditPage(),
          '/mycharacterdamage': (BuildContext context) => MyCharacterDamage(),
          '/mycharacterdetail': (BuildContext context) => MyCharacterDetailPage(),
          '/artifactdetail': (BuildContext context) => ArtifactDetailPage(),
          '/weapondetail': (BuildContext context) => WeaponDetailPage(),
          '/code': (BuildContext context) => CodePage(),
          '/databasecharacterlist': (BuildContext context) => DatabaseCharacterListPage(),
          '/databasecharacterdetail': (BuildContext context) => DatabaseCharacterDetailPage(),
          '/databasecharacterdamage': (BuildContext context) => DatabaseCharacterDamagePage(),
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
