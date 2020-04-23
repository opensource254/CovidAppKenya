import 'package:flutter/material.dart';

import '../../../home/widgets/reUsables/reusableCardWithImageAsset.dart';

final List<Map<String, String>> coronaDetailedInfo = [
  {'title': 'What is Corona Virus?', 'path': 'assets/images/ic_corona.png'},
  {'title': 'What are the symptoms?', 'path': 'assets/images/ic_symptoms.png'},
  {
    'title': 'How it\'s transmitted',
    'path': 'assets/images/ic_transmission.png'
  },
  {'title': 'How to prevent it', 'path': 'assets/images/ic_washing_hands.png'},
  {'title': 'When to wear mask?', 'path': 'assets/images/ic_mask.png'},
  {'title': 'Fake news?', 'path': 'assets/images/ic_fake_news.png'}
];

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
