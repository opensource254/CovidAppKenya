import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants.dart';

String totalCases;
String totalRecovered;
String totalDeaths;

//get cases for country
Future<Map> getIndividualCountryData(String countryName) async {
  final String url = baseApiUrl + "/$countryName";
  //make request to get response
  Map<String, dynamic> _countryDetails = {};
  http.Response response = await http.get(url, headers: coronaApiHeaders);
  if (_countryDetails != null) {
    _countryDetails.clear();
  }
  //decode response string of the body
  var decodedData = jsonDecode(response.body);
  _countryDetails.addAll(decodedData);
  totalCases = _countryDetails['total']['reported'].toString();
  totalRecovered = _countryDetails['total']['recovered'].toString();
  totalDeaths = _countryDetails['total']['deaths'].toString();
  return _countryDetails;
}
