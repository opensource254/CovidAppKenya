import 'package:flutter/material.dart';

import './home/home.dart';
import 'home/widgets/tipsTab/store/dataminer/casesDataMiner.dart';

Map kenyaData = {};

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'CovidApp',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      accentColor: Colors.amber,
      fontFamily: 'Quicksand',
      textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          button: TextStyle(color: Colors.white)),
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 20,
              ),
            ),
      ),
    ),
    home: Home(showWhichTabs: 0),
  ));
  kenyaData = await getIndividualCountryData('Kenya');
}
