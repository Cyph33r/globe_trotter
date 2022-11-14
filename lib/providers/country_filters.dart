import 'package:flutter/material.dart';
import 'package:globe_trotter/data/country_repository.dart';

class CountryFilters with ChangeNotifier {
  final CountryFilter _filter = CountryFilter();

  CountryFilter get filter {
    return _filter;
  }

  void editFilter(
      {
      FilterLanguages? language,
      String? prefix,
      List<String>? timeZone,
      List<Region>? region}) {
    if (language != null) {
      _filter.language = language;
    }
    if (prefix != null) _filter.prefix = prefix;
    if (timeZone != null) _filter.timeZones = timeZone;
    if (region != null) _filter.regions = filter.regions;
    notifyListeners();
  }
}
