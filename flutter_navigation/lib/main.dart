import 'package:flutter/material.dart';
import 'package:flutter_navigation/fourth_screen.dart';
import 'package:flutter_navigation/home_screen.dart';
import 'package:flutter_navigation/second_screen.dart';
import 'package:flutter_navigation/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      home: HomeScreen(),
      routes: {
        'second': (context) => SecondScreen(),
        'third': (context) => ThirdScreen(),
        'fourth': (context) => FourthScreen(),
      },
    );
  }
}
