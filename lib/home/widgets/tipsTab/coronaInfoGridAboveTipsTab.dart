import 'package:flutter/material.dart';

import '../../../home/widgets/reUsables/reusableCardWithImageAsset.dart';

class CoronaInfoGridAboveTipsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: ScrollPhysics(), // to disable GridView's scrolling
      crossAxisCount: 3,
      children: <Widget>[
        ReusableCardWithImageAsset(
          title: 'What is Corona Virus?',
          path: 'assets/images/ic_corona.png',
        ),
        ReusableCardWithImageAsset(
          title: 'What are the symptoms',
          path: 'assets/images/ic_symptoms.png',
        ),
        ReusableCardWithImageAsset(
          title: 'How it\'s transmitted',
          path: 'assets/images/ic_transmission.png',
        ),
        ReusableCardWithImageAsset(
          title: 'How to prevent it',
          path: 'assets/images/ic_washing_hands.png',
        ),
        ReusableCardWithImageAsset(
          title: 'When to wear mask',
          path: 'assets/images/ic_mask.png',
        ),
        ReusableCardWithImageAsset(
          title: 'Fake news',
          path: 'assets/images/ic_fake_news.png',
        ),
      ],
    );
  }
}
