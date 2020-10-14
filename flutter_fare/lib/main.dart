import 'package:flutter/material.dart';
import 'package:flutter_fare/googlemap.dart';
import 'package:flutter_fare/home.dart';
import 'package:flutter_fare/splash.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen()
    );
  }
}
