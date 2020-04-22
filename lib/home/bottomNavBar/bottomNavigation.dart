import 'package:flutter/material.dart';

import 'bottomNavIconAssets.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function onTap;
  MyBottomNavigationBar({@required this.currentIndex, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex, // new
      fixedColor: Colors.lightBlue,
      unselectedItemColor: Colors.lightBlueAccent,
      selectedFontSize: 15.0,
      unselectedFontSize: 10.0,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: BottomNavIconImage('assets/images/ichome.png'),
          title: Text('Home'),
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.scatter_plot),
          title: Text('Tips'),
        ),
        BottomNavigationBarItem(
          icon: BottomNavIconImage('assets/images/icnews.png'),
          title: Text('News'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.error),
            title: Text('Alerts'),
            backgroundColor: Colors.green),
        BottomNavigationBarItem(
          icon: BottomNavIconImage('assets/images/icsituation.png'),
          title: Text('Situation'),
        ),
      ],
    );
  }
}
