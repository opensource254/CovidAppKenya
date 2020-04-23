import 'package:flutter/material.dart';

import '../../widgets/reUsables/reusableButton.dart';
import '../../widgets/tipsTab/coronaInfoGridAboveTipsTab.dart';
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
        SizedBox(
          height: 15,
        ),
        CoronaInfoGridAboveTipsTab(),
      ],
    );
  }
}
