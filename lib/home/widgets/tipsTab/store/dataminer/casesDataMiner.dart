import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants.dart';

Future<List> getIndividualCountryData(String countryName) async {
  final String url = baseApiUrl + '?name=Kenya&format=json';
  //make request to get response
  List _countryDetails = [];
  http.Response response =
      await http.get(baseApiUrl, headers: coronaApiHeaders);
  if (_countryDetails != null) {
    _countryDetails.clear();
  }
  var decodedData =
      jsonDecode(response.body); //decode response string of the body
  _countryDetails.add(decodedData['api']['fixtures']);
  print(_countryDetails);
  return _countryDetails;
}
