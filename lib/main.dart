import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/constants/routes.dart';
import 'package:coronavirus/screens/base/base.dart';
import 'package:coronavirus/screens/introduction/introduction.dart';
import 'package:coronavirus/screens/loading/loading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants/types.dart';
import 'models/set-system-ui-overlay-style.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    setSystemUIOverlayStyle(systemUIOverlayStyle: SystemUIOverlayStyle.LIGHT);
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [const Locale('fa', '')],
      title: 'Anti Corona',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'iran_sans',
          primaryColor: PrimaryColor(),
          accentColor: PrimaryColor(),
          primaryColorLight: PrimaryColor(),
          buttonColor: PrimaryColor(),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(backgroundColor: PrimaryColor()))
          // primarySwatch: kPrimaryColor,
          ),
      initialRoute: loading_route,
      routes: {
        loading_route: (context) => LoadingScreen(),
        base_route: (context) => Base(),
        intro_route: (context) => IntroScreen()
      },
      home: IntroScreen(),
    );
  }
}
