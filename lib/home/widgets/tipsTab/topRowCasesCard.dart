import 'package:flutter/material.dart';

import '../reUsables/reUsableCard.dart';

class TopRowCasesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ReUsableCard(
            title: 'Cases',
            subtitle: 300.toString(),
            color: Colors.lightBlueAccent,
          ),
          ReUsableCard(
            title: 'Recovered',
            subtitle: 100.toString(),
            color: Colors.lightBlue,
          ),
          ReUsableCard(
            title: 'Deaths',
            subtitle: 30.toString(),
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}
