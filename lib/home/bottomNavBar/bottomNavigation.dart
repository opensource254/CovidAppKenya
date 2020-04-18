import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function onTap;
  MyBottomNavigationBar({@required this.currentIndex, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex, // new
      fixedColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedFontSize: 15.0,
      unselectedFontSize: 10.0,
      backgroundColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.accessibility),
          title: Text('Contacts'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.forum),
          title: Text('doctors'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.update),
          title: Text('Updates'),
        ),
      ],
    );
  }
}
