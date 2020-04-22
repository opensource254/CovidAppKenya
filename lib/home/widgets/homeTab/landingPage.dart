import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home.dart';
import '../reUsables/reusableButton.dart';

class HomeLanding extends StatefulWidget {
  @override
  _HomeLandingState createState() => _HomeLandingState();
}

class _HomeLandingState extends State<HomeLanding> {
  //clicking Doctors
  void _onTapDoctors() {
    print('Doctors');
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return Home(showWhichTabs: 0); //
    }));
  }

  //clicking Treatment Centers
  void _onTapTreatCenters() {
    print('Treatment Centers');
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return Home(showWhichTabs: 0);
    }));
  }

  //clicking Quarantine Facilities
  void _onTapQuarantineFac() {
    print('Quarantine Facilities');
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return Home(showWhichTabs: 0);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: <Widget>[
          //above buttons on landing page
          Container(
            color: Colors.white70,
            margin: EdgeInsets.all(3),
            height: 200,
            width: double.infinity,
            child: Text(''),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ReUsableButton(
                  title: 'Doctors Updates',
                  alignment: Alignment.center,
                  position: 0,
                  navigateFunc: _onTapDoctors,
                ),
                ReUsableButton(
                  title: 'Treatment Centers',
                  alignment: Alignment.centerRight,
                  position: 1,
                  navigateFunc: _onTapTreatCenters,
                ),
                ReUsableButton(
                  title: 'Quarantine Facilities',
                  alignment: Alignment.centerLeft,
                  position: 2,
                  navigateFunc: _onTapQuarantineFac,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
