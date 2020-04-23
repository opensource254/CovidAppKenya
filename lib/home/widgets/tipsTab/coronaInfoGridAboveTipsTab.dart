import 'package:flutter/material.dart';

import '../../../home/widgets/reUsables/reusableCardWithImageAsset.dart';
import 'store/constants.dart';

class CoronaInfoGridAboveTipsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        shrinkWrap: true,
        physics: ScrollPhysics(), // to disable GridView's scrolling
        itemCount: coronaDetailedInfo.length,
        itemBuilder: (BuildContext context, int index) {
          String title = coronaDetailedInfo[index]['title'];
          String path = coronaDetailedInfo[index]['path'];
          return ReusableCardWithImageAsset(
            title: title,
            path: path,
          );
        });
  }
}
