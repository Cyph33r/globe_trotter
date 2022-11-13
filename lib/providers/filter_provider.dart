import 'package:flutter/material.dart';
import 'package:globe_trotter/data/country_repository.dart';

class FilterProvider with ChangeNotifier {
  final CountryFilter _filter = CountryFilter();

  CountryFilter get filter {
    return _filter;
  }

  void editFilter(
      {String? name,
      FilterLanguages? language,
      String? prefix,
      TimeZone? timeZone,
      Continent? continent}) {
    if (name != null) _filter.name = name;
    if (language != null) {
      _filter.language = language;
    }
    if (prefix != null) _filter.prefix = prefix;
    if (timeZone != null) _filter.timeZone = timeZone;
    if (continent != null) _filter.continent = filter.continent;
    notifyListeners();
  }
}
