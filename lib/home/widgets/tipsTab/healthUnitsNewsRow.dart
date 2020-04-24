import 'package:flutter/material.dart';

import '../../../home/widgets/newsTab/news.dart';
import '../../../home/widgets/reUsables/reusableCardWithImageAsset.dart';

class HealthUnitsNewsRow extends StatelessWidget {
  final List<Map<String, String>> healthUnitsNews = [
    {'title': 'Health Units', 'path': 'assets/images/ic_healt_units.png'},
    {'title': 'News', 'path': 'assets/images/ic_news.png'}
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          shrinkWrap: true,
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: healthUnitsNews.length,
          itemBuilder: (BuildContext context, int index) {
            String _title = healthUnitsNews[index]['title'];
            String _path = healthUnitsNews[index]['path'];
            return Padding(
              padding: const EdgeInsets.only(left: 30, right: 15, top: 15),
              child: InkWell(
                  child: ReusableCardWithImageAsset(
                    title: _title,
                    path: _path,
                  ),
                  onTap: () => _handleCardTap(context, index)),
            );
          }),
    );
  }

  void _handleCardTap(BuildContext context, int index) {
    if (index == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return News();
      }));
    }
  }
}
