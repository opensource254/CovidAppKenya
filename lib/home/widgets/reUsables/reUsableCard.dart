import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final double containerHeight;
  final double containerWidth;

  ReUsableCard({
    @required this.title,
    @required this.subtitle,
    @required this.color,
    this.containerHeight,
    this.containerWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight == null ? 90 : containerHeight,
      width: containerWidth == null ? 90 : containerWidth,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(child: Text(title)),
            Text(subtitle),
          ],
        ),
      ),
    );
  }
}
