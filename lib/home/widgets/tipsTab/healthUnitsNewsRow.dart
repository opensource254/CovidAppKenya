import 'package:flutter/material.dart';

import '../../../home/widgets/reUsables/reusableCardWithImageAsset.dart';

class HealthUnitsNewsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: ScrollPhysics(), // to disable GridView's scrolling
      crossAxisCount: 2,
      children: <Widget>[
        ReusableCardWithImageAsset(
          title: 'Health Units',
          path: 'assets/images/ic_healt_units.png',
        ),
        ReusableCardWithImageAsset(
          title: 'News',
          path: 'assets/images/ic_news.png',
        ),
      ],
    );
  }
}
