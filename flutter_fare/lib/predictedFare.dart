import 'package:flutter/material.dart';
import 'package:flutter_fare/circle.dart';

class Predicted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Your Predicted fare and best mode ↓↓'),
      ),
      body: Scaffold(
        backgroundColor: Colors.white,
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Center(child: SpinKitCircle(color: Colors.black,size: 100,))
          ],
        )
      ),
    );
  }
}
