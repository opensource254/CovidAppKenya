import 'package:flutter/material.dart';

class ReusableCardWithImageAsset extends StatelessWidget {
  final String path;
  final String title;

  ReusableCardWithImageAsset({@required this.path, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: new BorderRadius.only(
          topLeft: new Radius.circular(10),
          bottomLeft: new Radius.circular(10),
          topRight: new Radius.circular(10),
          bottomRight: new Radius.circular(10),
        ),
        color: Color(0xFFA0D2ED),
      ),
      margin: EdgeInsets.only(top: 2, bottom: 2, right: 2, left: 2),
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
