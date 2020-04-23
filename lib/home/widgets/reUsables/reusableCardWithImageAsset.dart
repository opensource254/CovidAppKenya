import 'package:flutter/material.dart';

class ReusableCardWithImageAsset extends StatelessWidget {
  final String path;
  final String title;

  ReusableCardWithImageAsset({@required this.path, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            path,
            scale: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 3),
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}