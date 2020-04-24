import 'package:flutter/material.dart';

import '../../widgets/reUsables/reusableCardWithImageAsset.dart';

class CoronaInfoGridOnHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _whatIsRona = 'What is Corona Virus';
    String _officialUpdates = 'Official Updates';
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics:
              BouncingScrollPhysics(), // if you want IOS bouncing effect, otherwise remove this line
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ReusableCardWithImageAsset(
                title: _whatIsRona,
                path: 'assets/images/ic_corona.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ReusableCardWithImageAsset(
                title: _officialUpdates,
                path: 'assets/images/ic_news.png',
              ),
            ),
          ],
        )
      ],
    );
  }
}
