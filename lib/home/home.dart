import 'package:flutter/material.dart';

import 'bottomNavBar/bottomNavigation.dart';
import 'widgets/alertsTab/alerts.dart';
import 'widgets/homeTab/landingPage.dart';
import 'widgets/situationTab/situation.dart';

class Home extends StatefulWidget {
  final int showWhichTabs;
  Home({@required this.showWhichTabs}); //0Home, 1contacts, 2doctors 3 updates

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTabIndex = 0;
  String _title;
  String _homeTitle = 'Covid-19 Kenya';
  String _alertsTitle = 'Covid-19 Alerts';
  String _situationTitle = 'Situation';

  final List<Widget> _bodyChildren = [
    HomeLanding(),
    Alerts(),
    Situation(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentTabIndex = widget.showWhichTabs != null
        ? widget.showWhichTabs
        : _currentTabIndex; //set new index when navigating from another page
    if (widget.showWhichTabs == 0) _title = _homeTitle;
    if (widget.showWhichTabs == 1) _title = _alertsTitle;
    if (widget.showWhichTabs == 2) _title = _situationTitle;
  }

  void onTabTapped(int index) {
    setState(() {
      _currentTabIndex = index;
      dynamicOnTap(
        index: index,
        caseZeroTitle: _homeTitle,
        caseOneTitle: _alertsTitle,
        caseTwoTitle: _situationTitle,
      );
    });
  }

  void dynamicOnTap({
    @required int index,
    @required String caseZeroTitle,
    @required String caseOneTitle,
    @required String caseTwoTitle,
  }) {
    switch (index) {
      case 0:
        _title = caseZeroTitle;
        break;
      case 1:
        _title = caseOneTitle;
        break;
      case 2:
        _title = caseTwoTitle;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Container(
        child: _bodyChildren[_currentTabIndex],
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentTabIndex,
        onTap: onTabTapped,
      ),
    );
  }
}
