import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_fare/TextStyles.dart';
import 'package:flutter_fare/circle.dart';
import 'package:flutter_fare/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () => nextScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildLogo(),
    );
  }

  Center buildLogo() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Container(
            height: 200,
            child: Image.asset("assets/images/r.png"),
          ),
          Text("Farely",style: kHeading,),
          Text("Your Travel Buddy",style: kTitle,),
          SpinKitCircle(color: Colors.black,),
        ],
      ),
    );
  }

  nextScreen() {

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }


  @override
  void dispose() {
    super.dispose();
  }
}
