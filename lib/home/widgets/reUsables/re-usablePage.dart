import 'package:flutter/material.dart';

import 'reusableCardWithImageAsset.dart';

class ReUsablePageTitleContent extends StatelessWidget {
  final String title;
  final String imagePath;
  final String content;

  ReUsablePageTitleContent(
      {@required this.title, @required this.imagePath, @required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: ReusableCardWithImageAsset(
                  title: title,
                  path: imagePath,
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          Column(
            children: <Widget>[
              Container(
                child: Text(content),
              )
            ],
          )
        ],
      ),
    );
  }
}
