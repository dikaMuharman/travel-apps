import 'package:flutter/material.dart';
import 'package:travel_apps/constants.dart';
import 'package:travel_apps/screen/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kAccentColor,
      ),
      home: HomeScreen(),
    );
  }
}
