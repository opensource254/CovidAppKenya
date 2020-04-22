import 'package:flutter/material.dart';

import 'bottomNavBar/bottomNavigation.dart';
import 'widgets/alerts.dart';
import 'widgets/landingPage.dart';
import 'widgets/news.dart';
import 'widgets/situation.dart';
import 'widgets/tips.dart';

class Home extends StatefulWidget {
  final int showWhichTabs;
  Home({@required this.showWhichTabs}); //0Home, 1contacts, 2doctors 3 updates

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTabIndex = 0;

  final List<Widget> _bodyChildren = [
    HomeLanding(),
    Tips(),
    News(),
    Alerts(),
    Situation()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentTabIndex = widget.showWhichTabs != null
        ? widget.showWhichTabs
        : _currentTabIndex; //set new index when navigating from another page
  }

  void onTabTapped(int index) {
    setState(() {
      _currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: _bodyChildren[_currentTabIndex]),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentTabIndex,
        onTap: onTabTapped,
      ),
    );
  }
}
