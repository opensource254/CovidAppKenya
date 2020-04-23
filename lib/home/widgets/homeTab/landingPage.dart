import 'package:flutter/material.dart';

import '../../home.dart';
import '../../widgets/reUsables/reusableButton.dart';
import '../../widgets/tipsTab/coronaInfoGridOnHomePage.dart';
import '../../widgets/tipsTab/healthUnitsNewsRow.dart';
import '../../widgets/tipsTab/topRowCasesCard.dart';

class HomeLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //cases,recovered,deaths
        TopRowCasesCard(),
        //more updates
        ReUsableButton(
          title: 'More Updates',
          position: 0,
          alignment: Alignment.center,
          navigateFunc: () {},
        ),
        //health units and news
        HealthUnitsNewsRow(),
        Center(
          child: Text('Feeling bad!'),
        ),
        SizedBox(
          height: 15,
        ),
        ReUsableButton(
          title: 'TALK TO A DOCTOR',
          position: 0,
          alignment: Alignment.center,
          navigateFunc: () {},
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text('Tips'),
        ),
        SizedBox(
          height: 10,
        ),
        CoronaInfoGridOnHomePage(),
        SizedBox(
          height: 5,
        ),
        ReUsableButton(
          title: 'More Tips',
          position: 0,
          alignment: Alignment.center,
          navigateFunc: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return Home(
                showWhichTabs: 1,
              );
            }));
          },
        ),
      ],
    );
  }
}
