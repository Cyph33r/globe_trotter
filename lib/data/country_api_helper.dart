import 'dart:convert';

import '../models/country.dart';
import 'package:http/http.dart' as http;

class CountryApiHelper {
  static const _baseUrl = 'https://restcountries.com/v3.1';

  CountryApiHelper._();

  static Future<List<Country>> getAllCountries() async {
    final countryList = <Country>[];
    final url = Uri.parse("$_baseUrl/all");
    final getResponse = await http.get(url);
    if (getResponse.statusCode == 200) {
      final decoded = jsonDecode(utf8.decode(getResponse.bodyBytes)) as List;
      for (var json in decoded) {
        countryList.add(Country.fromJson(json));
      }
    }
    return countryList;
  }
}
