import 'package:isar/isar.dart';
import 'package:isar/isar.dart' as isar;

part 'country.g.dart';

@isar.Name("countries")
@collection
class Country {
  Country({
    this.name,
    this.independent,
    this.status,
    this.dialingCode,
    this.unMember,
    this.currencies,
    this.capital,
    this.region,
    this.subregion,
    this.languages,
    this.landlocked,
    this.borders,
    this.area,
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
    independent = json['independent'];
    status = json['status'];
    dialingCode =
        json['idd'] != null ? DialingCode.fromJson(json['idd']) : null;
    unMember = json['unMember'];
    currencies = json['currencies'] != null
        ? Currencies.fromJson(json['currencies'])
        : null;
    capital = json['capital'] != null ? json['capital'].cast<String>() : [];
    region = json['region'];
    subregion = json['subregion'];
    languages = json['languages'] != null
        ? Languages.fromJson(json['languages'])
        : null;
    landlocked = json['landlocked'];
    borders = json['borders'] != null ? json['borders'].cast<String>() : [];
    area = json['area'];
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
  bool? independent;
  String? status;
  DialingCode? dialingCode;
  bool? unMember;
  Currencies? currencies;
  List<String>? capital;
  String? region;
  String? subregion;
  Languages? languages;
  bool? landlocked;
  List<String>? borders;
  double? area;
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
class DialingCode {
  List<String> codes = [];

  DialingCode([this.codes = const <String>[]]);

  DialingCode.fromJson(Map<String, dynamic> json) {
    if(json["root"] == null) return;
    final root = json['root'];
    for (final suffix in (json['suffixes'] ?? [""])) {
      codes.add(root + suffix);
    }
  }
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
    this.side,
  });

  Car.fromJson(dynamic json) {
    side = json['side'];
  }

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
class Languages {
  List<String>? languages = [];

  Languages({
    this.languages,
  });

  Languages.fromJson(Map<String, dynamic> json) {
    for (final language in json.values) {
      languages!.add(language);
    }
  }
}

@embedded
class Currency {
  String? symbol;
  String? name;

  Currency({this.symbol, this.name});

  Currency.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    name = json['name'];
  }
}

@embedded
class Currencies {
  List<Currency>? currencies = [];

  Currencies({
    this.currencies,
  });

  Currencies.fromJson(Map<String, dynamic> json) {
    for (final currency in json.values) {
      currencies!.add(Currency.fromJson(currency));
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
  String? official;
  String? common;

  NativeName({this.official, this.common});

  NativeName.fromJson(dynamic json) {
    official = json['official'];
    common = json['common'];
  }
}
