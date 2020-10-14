import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fare/TextStyles.dart';
import 'package:flutter_fare/googlemap.dart';
import 'package:flutter_fare/input.dart';
import 'package:flutter_fare/predictedFare.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController;
  int getPageIndex = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return buildHomeScreen();
  }

  onTapChangePage(int pageIndex) {
    pageController.animateToPage(pageIndex,
        duration: Duration(milliseconds: 1), curve: Curves.easeIn);
  }

  whenPageChanges(int pageIndex) {
    setState(() {
      this.getPageIndex = pageIndex;
    });
  }

  Scaffold buildHomeScreen() {
    return Scaffold(
      key: _scaffoldKey,
      body: PageView(
        children: <Widget>[
          GoogleMap(),
          Input(),
          Predicted(),
        ],
        controller: pageController,
        onPageChanged: whenPageChanges,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: getPageIndex,
        onTap: onTapChangePage,
        backgroundColor: Colors.black,
        activeColor: Colors.white,
        inactiveColor: Colors.white60,
        iconSize: 20,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
              ),
              title: Text('Map',style: kLabel,)),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions), title: Text('Distance',style: kLabel,)),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on), title: Text('Fare',style: kLabel,)),
        ],
      ),
    );
  }
}
