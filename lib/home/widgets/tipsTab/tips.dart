import 'package:flutter/material.dart';

import 'coronaInfoGridAboveTipsTab.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CoronaInfoGridAboveTipsTab(),
      ],
    );
  }
}
