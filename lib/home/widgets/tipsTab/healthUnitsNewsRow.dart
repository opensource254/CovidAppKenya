import 'package:flutter/material.dart';

import '../../../home/widgets/reUsables/reusableCardWithImageAsset.dart';

class HealthUnitsNewsRow extends StatelessWidget {
  final List<Map<String, String>> healthUnitsNews = [
    {'title': 'Health Units', 'path': 'assets/images/ic_healt_units.png'},
    {'title': 'News', 'path': 'assets/images/ic_news.png'}
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        shrinkWrap: true,
        physics: ScrollPhysics(), // to disable GridView's scrolling
        itemCount: healthUnitsNews.length,
        itemBuilder: (BuildContext context, int index) {
          String title = healthUnitsNews[index]['title'];
          String path = healthUnitsNews[index]['path'];
          return Padding(
            padding: const EdgeInsets.only(left: 30, right: 15, top: 15),
            child: ReusableCardWithImageAsset(
              title: title,
              path: path,
            ),
          );
        });
  }
}
