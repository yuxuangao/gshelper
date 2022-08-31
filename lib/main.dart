import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:easy_localization/easy_localization.dart';

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
import 'page/databaseweaponlist.dart';
import 'page/databaseweapondetail.dart';
import 'page/databaseartifactlist.dart';
import 'page/databaseartifactdetail.dart';
import 'page/teamedit.dart';
import 'common/const.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('zh')],
      path: 'assets/translations',
      fallbackLocale: Locale('zh'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateTitle: (context) => 't_title'.tr(),
        theme: ThemeData(
          colorScheme: ColorScheme.light(
            primary: Colors.white,
            onPrimary: Colors.black,
            secondary: Color(0xff006eb0),
            onSecondary: Colors.white,
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: Color(0xff006eb0),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff006eb0),
              onPrimary: Colors.white,
            ),
          ),
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Color(0xff006eb0),
            selectionColor: Color(0xff006eb0),
            selectionHandleColor: Color(0xff006eb0),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: UnderlineInputBorder(),
            labelStyle: TextStyle(color: Colors.black54),
            floatingLabelStyle: TextStyle(color: Colors.black54),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff006eb0),
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
          checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStateProperty.all(
              Color(0xff006eb0),
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Main',
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.transparent,
          ),
          appBarTheme: AppBarTheme(
            elevation: Const.APP_BAR_ELEVATION,
          ),
        ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
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
          '/databaseweaponlist': (BuildContext context) => DatabaseWeaponListPage(),
          '/databaseweapondetail': (BuildContext context) => DatabaseWeaponDetailPage(),
          '/databaseartifactlist': (BuildContext context) => DatabaseArtifactListPage(),
          '/databaseartifactdetail': (BuildContext context) => DatabaseArtifactDetailPage(),
          '/teamedit': (BuildContext context) => TeamEditPage(),
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
