import 'package:flutter/material.dart';

class BottomNavIconImage extends StatelessWidget {
  final String path;
  BottomNavIconImage(this.path);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      scale: 25,
      color: Colors.lightBlue,
    );
  }
}
