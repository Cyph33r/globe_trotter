import 'package:isar/isar.dart';
import '../data/country_api_helper.dart';
import 'package:collection/collection.dart' show insertionSort;

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
    if (filter.language.name != "none") {
      toReturn.removeWhere((country) => !(country.language?.languages?.any(
              (language) => language.alphaTwoCode == filter.language.name) ??
          false));
    }
    if (filter.name != null || filter.prefix != null) {
      toReturn.removeWhere((country) => country.name?.common != filter.name);
    }
    if (filter.continent != null) {}
    if (filter.timeZone != null) {
      toReturn.removeWhere((country) => !(country.timezones
              ?.any((timeZone) => timeZone == filter.timeZone?.asString) ??
          false));
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
  String? prefix;
  TimeZone? timeZone;
  Continent? continent;
  String? name;
  FilterLanguages language = FilterLanguages.none;

  CountryFilter startsWith(String prefix) {
    this.prefix = prefix;
    return this;
  }

  CountryFilter withTimezone(TimeZone? timeZone) {
    this.timeZone = timeZone;
    return this;
  }

  CountryFilter inContinent(Continent? continent) {
    this.continent = continent;
    return this;
  }

  CountryFilter withName(String? name) {
    this.name = name;
    return this;
  }

  CountryFilter withLanguage(FilterLanguages language) {
    this.language = language;
    return this;
  }
}

class TimeZone {
  TimeZoneCode code;

  get asString {
    _timeZoneToString[code.index];
  }

  static const _timeZoneToString = [
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

  TimeZone(this.code);

  @override
  String toString() {
    return _timeZoneToString[code.index];
  }
}

enum Continent { d }

enum FilterLanguages {
  none,
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

enum TimeZoneCode {
  UTC_MINUS_12,
  UTC_MINUS_11,
  UTC_MINUS_10,
  UTC_MINUS_9,
  UTC_MINUS_8,
  UTC_MINUS_7,
  UTC_MINUS_6,
  UTC_MINUS_5,
  UTC_MINUS_4,
  UTC_MINUS_3,
  UTC_MINUS_2,
  UTC_MINUS_1,
  UTC_PLUS_0,
  UTC_PLUS_1,
  UTC_PLUS_2,
  UTC_PLUS_3,
  UTC_PLUS_4,
  UTC_PLUS_5,
  UTC_PLUS_6,
  UTC_PLUS_7,
  UTC_PLUS_8,
  UTC_PLUS_9,
  UTC_PLUS_10,
  UTC_PLUS_11,
  UTC_PLUS_12,
  UTC_PLUS_13,
  UTC_PLUS_14,
}
