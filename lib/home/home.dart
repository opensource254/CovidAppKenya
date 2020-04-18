import 'package:flutter/material.dart';

import 'bottomNavBar/bottomNavigation.dart';
import 'widgets/Updates.dart';
import 'widgets/contacts.dart';
import 'widgets/doctorsHomeTab.dart';
import 'widgets/landingPage.dart';

class Home extends StatefulWidget {
  final int showWhichTabs;
  Home({@required this.showWhichTabs}); //0Home, 1contacts, 2doctors 3 updates

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTabIndex = 0;
  String _title;
  String _homeHeader = 'Covid-19 App';
  String _contactsHeader = 'Contacts';
  String _doctorsHeader = 'Doctors';
  String _updatesHeader = 'Updates';

  final List<Widget> _bodyChildren = [
    HomeLanding(),
    Contacts(),
    Doctors(),
    Updates(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentTabIndex = widget.showWhichTabs != null
        ? widget.showWhichTabs
        : _currentTabIndex; //set new index when navigating from another page
    if (_currentTabIndex == 0) _title = _homeHeader;
    if (_currentTabIndex == 1) _title = _contactsHeader;
    if (_currentTabIndex == 2) _title = _doctorsHeader;
    if (_currentTabIndex == 3) _title = _updatesHeader;
  }

  void onTabTapped(int index) {
    setState(() {
      _currentTabIndex = index;
      dynamicOnTap(
        index: index,
        tab0Title: _homeHeader,
        tab1Title: _contactsHeader,
        tab2Title: _doctorsHeader,
        tab3Title: _updatesHeader,
      );
    });
  }

  void dynamicOnTap({
    @required int index,
    @required String tab0Title,
    @required String tab1Title,
    @required String tab2Title,
    @required String tab3Title,
  }) {
    switch (index) {
      case 0:
        _title = tab0Title;
        break;
      case 1:
        _title = tab1Title;
        break;
      case 2:
        _title = tab2Title;
        break;
      case 3:
        _title = tab3Title;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: false,
      ),
      body: Container(child: _bodyChildren[_currentTabIndex]),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentTabIndex,
        onTap: onTabTapped,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
