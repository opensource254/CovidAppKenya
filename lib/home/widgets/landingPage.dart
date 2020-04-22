import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeLanding extends StatefulWidget {
  @override
  _HomeLandingState createState() => _HomeLandingState();
}

class _HomeLandingState extends State<HomeLanding> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: <Widget>[
          //above buttons on landing page
          Container(
            color: Colors.white70,
            margin: EdgeInsets.all(3),
            height: 200,
            width: double.infinity,
            child: Text(''),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[],
            ),
          )
        ],
      ),
    );
  }
}
