import 'package:flutter/material.dart';
import 'package:ignite_game_room/src/home/home_page.dart';
import 'package:ignite_game_room/src/splash/splash_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) =>  HomePage()
    },
    );
  }
}