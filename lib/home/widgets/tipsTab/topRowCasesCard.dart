import 'package:flutter/material.dart';

import '../reUsables/reUsableCard.dart';

class TopRowCasesCard extends StatelessWidget {
  final List<Map<String, String>> cases = [
    {'title': 'Cases', 'subtitle': '300'},
    {'title': 'Recovered', 'subtitle': '100'},
    {'title': 'Deaths', 'subtitle': '30'}
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        shrinkWrap: true,
        physics: ScrollPhysics(), // to disable GridView's scrolling
        itemCount: cases.length,
        itemBuilder: (BuildContext context, int index) {
          String title = cases[index]['title'];
          String totals = cases[index]['subtitle'];
          return Padding(
            padding: const EdgeInsets.all(15),
            child: ReUsableCard(
              title: title,
              subtitle: totals.toString(),
              color: Colors.lightBlueAccent,
            ),
          );
        });
  }
}
