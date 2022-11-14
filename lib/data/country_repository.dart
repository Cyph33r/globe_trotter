import 'package:isar/isar.dart';
import '../data/country_api_helper.dart';

import '../models/country.dart';

class CountryRepository {
  static final _countries = <int, Country>{};
  static List<Country> _sortedCountries = <Country>[];

  static late Isar countryDb;

  static Map<int, Country> get getAllCountries {
    return {..._countries};
  }

  static List<Country> get getAllCountriesSorted {
    return [..._sortedCountries];
  }

  static List<Country> getCountriesToDisplay(CountryFilter filter) {
    final toReturn = _sortedCountries;
    if (filter.language.name != "all") {
      toReturn.retainWhere((country) =>
          country.language?.languages?.any(
              (language) => language.alphaTwoCode == filter.language.name) ??
          false);
    }
    if (filter.prefix != "") {
      toReturn.retainWhere((country) =>
          country.name?.common?.toLowerCase().startsWith(filter.prefix) ??
          false ||
              (country.capital?.any((capital) =>
                      capital.toLowerCase().startsWith(filter.prefix)) ??
                  false));
    }
    if (filter.regions.isNotEmpty) {
      toReturn.retainWhere((country) =>
          filter.regions.any((region) => country.region == region.name));
    }
    if (filter.timeZones.isNotEmpty) {
      toReturn.retainWhere((country) => filter.timeZones
          .any((timezone) => country.timezones?.contains(timezone) ?? false));
    }

    return toReturn;
  }

  CountryRepository._();

  static Future<void> ensureCacheFilled() async {
    if (_countries.isEmpty) {
      await loadCounties();
    }
  }

  static Future<void> loadCounties() async {
    try {
      countryDb = Isar.openSync([CountrySchema]);
    } on IsarError {
      countryDb = Isar.getInstance('default')!;
    }
    final List<Country> cachedData =
        await countryDb.countries.where().findAll();
    if (cachedData.isEmpty) {
      final countryList = await CountryApiHelper.getAllCountries();
      await countryDb.writeTxn(() async {
        for (Country country in countryList) {
          _countries.addAll({country.id: country});
          await countryDb.countries.put(country);
        }
      });
    } else {
      for (Country country in cachedData) {
        _countries.addAll({country.id: country});
      }
    }
    _sortedCountries = _countries.values.toList();
    _sortedCountries.sort((country1, country2) =>
        country1.name!.common!.compareTo(country2.name!.common!));
  }
}

class CountryFilter {
  String prefix = "";
  List<String> timeZones = [];
  List<Region> regions = [];
  FilterLanguages language = FilterLanguages.all;
}

enum Region { Africa, Americas, Antarctic, Asia, Europe, Oceania }

enum FilterLanguages {
  all,
  ara,
  eng,
  spa,
  fra,
  hin,
  ita,
  msa,
  nld,
  por,
  rus,
  swe,
  tur,
  zho
}

const timeZodeCodes = [
  "UTC-12",
  "UTC-11",
  "UTC-10",
  "UTC-9",
  "UTC-8",
  "UTC-7",
  "UTC-6",
  "UTC-5",
  "UTC-4",
  "UTC-3",
  "UTC-2",
  "UTC-1",
  "UTC+0",
  "UTC+1",
  "UTC+2",
  "UTC+3",
  "UTC+4",
  "UTC+5",
  "UTC+6",
  "UTC+7",
  "UTC+8",
  "UTC+9",
  "UTC+10",
  "UTC+11",
  "UTC+12",
  "UTC+13",
  "UTC+14",
];
