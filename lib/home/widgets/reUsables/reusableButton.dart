import 'package:flutter/material.dart';

class ReUsableButton extends StatelessWidget {
  final String title;
  final int position; //oCenter, 1 right,2 left
  final Alignment alignment;
  final Function navigateFunc;

  ReUsableButton(
      {@required this.title,
      @required this.navigateFunc,
      this.position,
      @required this.alignment});

  @override
  Widget build(BuildContext context) {
    BoxDecoration boxDecoration;
    if (position == 0) //doctors
      boxDecoration = BoxDecoration(
        borderRadius: new BorderRadius.only(
          topLeft: new Radius.circular(5),
          bottomLeft: new Radius.circular(5),
          topRight: new Radius.circular(5),
          bottomRight: new Radius.circular(5),
        ),
        color: Colors.blue,
      );
    if (position == 1) //treatment centers
      boxDecoration = BoxDecoration(
        borderRadius: new BorderRadius.only(
          topLeft: new Radius.circular(50),
          bottomLeft: new Radius.circular(50),
        ),
        color: Colors.blue,
      );
    if (position == 2) //quarantine Facilities
      boxDecoration = BoxDecoration(
        borderRadius: new BorderRadius.only(
          topRight: new Radius.circular(50),
          bottomRight: new Radius.circular(50),
        ),
        color: Colors.blue,
      );

    return InkWell(
      child: Container(
        height: 40,
        alignment: alignment,
        child: Container(
          width: 150,
          height: 40,
          decoration: boxDecoration,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Theme.of(context).textTheme.button.color,
              ),
            ),
          ),
        ),
      ),
      onTap: navigateFunc,
    );
  }
}
