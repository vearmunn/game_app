import 'package:flutter/material.dart';
import 'package:game_app/screens/detailGames.dart';
import 'package:game_app/screens/navScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const PrimaryDark = Color(0xFF050B18);
  static const AccentDark = Color(0xFF1F2430);
  static const MainBlue = Color(0xFF6046DE);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Game App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          canvasColor: PrimaryDark,
          fontFamily: 'OpenSans',
          scaffoldBackgroundColor: PrimaryDark,
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(color: PrimaryDark, elevation: 0),
          primarySwatch: Colors.orange,
          buttonColor: MainBlue,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white,
            ),
            headline2: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
              color: Colors.white,
            ),
            subtitle1: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 15, color: Colors.grey),
            caption: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.white,
            ),
            overline: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 15, color: MainBlue),
            bodyText1: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.white,
            ),
            bodyText2: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white),
          )),
      home: NavScreen(),
      routes: {'/detailGames': (context) => DetailGames()},
    );
  }
}
