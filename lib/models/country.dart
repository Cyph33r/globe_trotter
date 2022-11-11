import 'package:isar/isar.dart';
import 'package:isar/isar.dart' as isar;

part 'country.g.dart';



@collection
class Country {
  Country({
    this.name,
    this.currencies,
    this.idd,
    this.capital,
    this.region,
    this.landlocked,
    this.area,
    this.flag,
    this.maps,
    this.population,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
  });

  Country.fromJson(dynamic json) {
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    currencies = json['currencies'] != null
        ? Currencies.fromJson(json['currencies'])
        : null;
    idd = json['idd'] != null ? Idd.fromJson(json['idd']) : null;
    capital = json['capital'] != null ? json['capital'].cast<String>() : [];
    region = json['region'];
    landlocked = json['landlocked'];
    area = json['area'];
    flag = json['flag'];
    maps = json['maps'] != null ? Maps.fromJson(json['maps']) : null;
    population = json['population'];
    car = json['car'] != null ? Car.fromJson(json['car']) : null;
    timezones =
        json['timezones'] != null ? json['timezones'].cast<String>() : [];
    continents =
        json['continents'] != null ? json['continents'].cast<String>() : [];
    flags = json['flags'] != null ? Flags.fromJson(json['flags']) : null;
    coatOfArms = json['coatOfArms'] != null
        ? CoatOfArms.fromJson(json['coatOfArms'])
        : null;
    startOfWeek = json['startOfWeek'];
  }
  static var currentId = 0;
  Id id = currentId++;
  Name? name;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  String? region;
  bool? landlocked;
  double? area;
  String? flag;
  Maps? maps;
  int? population;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
}

@embedded
class CoatOfArms {
  CoatOfArms({
    this.png,
    this.svg,
  });

  CoatOfArms.fromJson(dynamic json) {
    png = json['png'];
    svg = json['svg'];
  }

  String? png;
  String? svg;
}

@embedded
class Flags {
  Flags({
    this.png,
    this.svg,
  });

  Flags.fromJson(dynamic json) {
    png = json['png'];
    svg = json['svg'];
  }

  String? png;
  String? svg;
}

@embedded
class Car {
  Car({
    this.signs,
    this.side,
  });

  Car.fromJson(dynamic json) {
    signs = json['signs'] != null ? json['signs'].cast<String>() : [];
    side = json['side'];
  }

  List<String>? signs;
  String? side;
}

@embedded
class Maps {
  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  Maps.fromJson(dynamic json) {
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }

  String? googleMaps;
  String? openStreetMaps;
}

@embedded
class Idd {
  Idd({
    this.root,
    this.suffixes,
  });

  Idd.fromJson(dynamic json) {
    root = json['root'];
    suffixes = json['suffixes'] != null ? json['suffixes'].cast<String>() : [];
  }

  String? root;
  List<String>? suffixes;
}

@embedded
class Currencies {
  List<Currency>? currencies = [];

  Currencies({this.currencies});

  Currencies.fromJson(Map<String, dynamic> json) {
    for (var currencyInfo in json.values) {
      currencies?.add(Currency.fromJson(currencyInfo));
    }
  }
}

@embedded
class Name {
  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  Name.fromJson(dynamic json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'] != null
        ? NativeName.fromJson(json['nativeName'])
        : null;
  }

  String? common;
  String? official;
  NativeName? nativeName;
}

@embedded
class NativeName {
  NativeName({this.official, this.common});

  NativeName.fromJson(Map<String, dynamic> json) {
    official = json.values.first['official'];
    common = json.values.first['common'];
  }

  String? official;
  String? common;
}


@embedded
class Currency {
  Currency({
    this.name,
    this.symbol,
  });

  Currency.fromJson(dynamic json) {
    name = json['name'];
    symbol = json['symbol'];
  }

  String? name;
  String? symbol;
}
