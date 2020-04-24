import 'package:flutter/cupertino.dart';
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
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 150,
                width: 200,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ReusableCardWithImageAsset(
                      title: title,
                      path: imagePath,
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.only(
                    topLeft: new Radius.circular(5),
                    bottomLeft: new Radius.circular(5),
                    topRight: new Radius.circular(5),
                    bottomRight: new Radius.circular(5),
                  ),
                ),
                margin: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.all(3),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      content,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
