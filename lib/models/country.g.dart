// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetCountryCollection on Isar {
  IsarCollection<Country> get countries => this.collection();
}

const CountrySchema = CollectionSchema(
  name: r'countries',
  id: -9001641463936210326,
  properties: {
    r'area': PropertySchema(
      id: 0,
      name: r'area',
      type: IsarType.double,
    ),
    r'capital': PropertySchema(
      id: 1,
      name: r'capital',
      type: IsarType.stringList,
    ),
    r'car': PropertySchema(
      id: 2,
      name: r'car',
      type: IsarType.object,
      target: r'Car',
    ),
    r'coatOfArms': PropertySchema(
      id: 3,
      name: r'coatOfArms',
      type: IsarType.object,
      target: r'CoatOfArms',
    ),
    r'continents': PropertySchema(
      id: 4,
      name: r'continents',
      type: IsarType.stringList,
    ),
    r'currencies': PropertySchema(
      id: 5,
      name: r'currencies',
      type: IsarType.object,
      target: r'Currencies',
    ),
    r'flag': PropertySchema(
      id: 6,
      name: r'flag',
      type: IsarType.string,
    ),
    r'flags': PropertySchema(
      id: 7,
      name: r'flags',
      type: IsarType.object,
      target: r'Flags',
    ),
    r'idd': PropertySchema(
      id: 8,
      name: r'idd',
      type: IsarType.object,
      target: r'Idd',
    ),
    r'landlocked': PropertySchema(
      id: 9,
      name: r'landlocked',
      type: IsarType.bool,
    ),
    r'maps': PropertySchema(
      id: 10,
      name: r'maps',
      type: IsarType.object,
      target: r'Maps',
    ),
    r'name': PropertySchema(
      id: 11,
      name: r'name',
      type: IsarType.object,
      target: r'Name',
    ),
    r'population': PropertySchema(
      id: 12,
      name: r'population',
      type: IsarType.long,
    ),
    r'region': PropertySchema(
      id: 13,
      name: r'region',
      type: IsarType.string,
    ),
    r'startOfWeek': PropertySchema(
      id: 14,
      name: r'startOfWeek',
      type: IsarType.string,
    ),
    r'timezones': PropertySchema(
      id: 15,
      name: r'timezones',
      type: IsarType.stringList,
    )
  },
  estimateSize: _countryEstimateSize,
  serialize: _countrySerialize,
  deserialize: _countryDeserialize,
  deserializeProp: _countryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'Name': NameSchema,
    r'NativeName': NativeNameSchema,
    r'Currencies': CurrenciesSchema,
    r'Currency': CurrencySchema,
    r'Idd': IddSchema,
    r'Maps': MapsSchema,
    r'Car': CarSchema,
    r'Flags': FlagsSchema,
    r'CoatOfArms': CoatOfArmsSchema
  },
  getId: _countryGetId,
  getLinks: _countryGetLinks,
  attach: _countryAttach,
  version: '3.0.2',
);

int _countryEstimateSize(
  Country object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.capital;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.car;
    if (value != null) {
      bytesCount +=
          3 + CarSchema.estimateSize(value, allOffsets[Car]!, allOffsets);
    }
  }
  {
    final value = object.coatOfArms;
    if (value != null) {
      bytesCount += 3 +
          CoatOfArmsSchema.estimateSize(
              value, allOffsets[CoatOfArms]!, allOffsets);
    }
  }
  {
    final list = object.continents;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.currencies;
    if (value != null) {
      bytesCount += 3 +
          CurrenciesSchema.estimateSize(
              value, allOffsets[Currencies]!, allOffsets);
    }
  }
  {
    final value = object.flag;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.flags;
    if (value != null) {
      bytesCount +=
          3 + FlagsSchema.estimateSize(value, allOffsets[Flags]!, allOffsets);
    }
  }
  {
    final value = object.idd;
    if (value != null) {
      bytesCount +=
          3 + IddSchema.estimateSize(value, allOffsets[Idd]!, allOffsets);
    }
  }
  {
    final value = object.maps;
    if (value != null) {
      bytesCount +=
          3 + MapsSchema.estimateSize(value, allOffsets[Maps]!, allOffsets);
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount +=
          3 + NameSchema.estimateSize(value, allOffsets[Name]!, allOffsets);
    }
  }
  {
    final value = object.region;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.startOfWeek;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.timezones;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  return bytesCount;
}

void _countrySerialize(
  Country object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.area);
  writer.writeStringList(offsets[1], object.capital);
  writer.writeObject<Car>(
    offsets[2],
    allOffsets,
    CarSchema.serialize,
    object.car,
  );
  writer.writeObject<CoatOfArms>(
    offsets[3],
    allOffsets,
    CoatOfArmsSchema.serialize,
    object.coatOfArms,
  );
  writer.writeStringList(offsets[4], object.continents);
  writer.writeObject<Currencies>(
    offsets[5],
    allOffsets,
    CurrenciesSchema.serialize,
    object.currencies,
  );
  writer.writeString(offsets[6], object.flag);
  writer.writeObject<Flags>(
    offsets[7],
    allOffsets,
    FlagsSchema.serialize,
    object.flags,
  );
  writer.writeObject<Idd>(
    offsets[8],
    allOffsets,
    IddSchema.serialize,
    object.idd,
  );
  writer.writeBool(offsets[9], object.landlocked);
  writer.writeObject<Maps>(
    offsets[10],
    allOffsets,
    MapsSchema.serialize,
    object.maps,
  );
  writer.writeObject<Name>(
    offsets[11],
    allOffsets,
    NameSchema.serialize,
    object.name,
  );
  writer.writeLong(offsets[12], object.population);
  writer.writeString(offsets[13], object.region);
  writer.writeString(offsets[14], object.startOfWeek);
  writer.writeStringList(offsets[15], object.timezones);
}

Country _countryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Country(
    area: reader.readDoubleOrNull(offsets[0]),
    capital: reader.readStringList(offsets[1]),
    car: reader.readObjectOrNull<Car>(
      offsets[2],
      CarSchema.deserialize,
      allOffsets,
    ),
    coatOfArms: reader.readObjectOrNull<CoatOfArms>(
      offsets[3],
      CoatOfArmsSchema.deserialize,
      allOffsets,
    ),
    continents: reader.readStringList(offsets[4]),
    currencies: reader.readObjectOrNull<Currencies>(
      offsets[5],
      CurrenciesSchema.deserialize,
      allOffsets,
    ),
    flag: reader.readStringOrNull(offsets[6]),
    flags: reader.readObjectOrNull<Flags>(
      offsets[7],
      FlagsSchema.deserialize,
      allOffsets,
    ),
    idd: reader.readObjectOrNull<Idd>(
      offsets[8],
      IddSchema.deserialize,
      allOffsets,
    ),
    landlocked: reader.readBoolOrNull(offsets[9]),
    maps: reader.readObjectOrNull<Maps>(
      offsets[10],
      MapsSchema.deserialize,
      allOffsets,
    ),
    name: reader.readObjectOrNull<Name>(
      offsets[11],
      NameSchema.deserialize,
      allOffsets,
    ),
    population: reader.readLongOrNull(offsets[12]),
    region: reader.readStringOrNull(offsets[13]),
    startOfWeek: reader.readStringOrNull(offsets[14]),
    timezones: reader.readStringList(offsets[15]),
  );
  object.id = id;
  return object;
}

P _countryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<Car>(
        offset,
        CarSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readObjectOrNull<CoatOfArms>(
        offset,
        CoatOfArmsSchema.deserialize,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readStringList(offset)) as P;
    case 5:
      return (reader.readObjectOrNull<Currencies>(
        offset,
        CurrenciesSchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readObjectOrNull<Flags>(
        offset,
        FlagsSchema.deserialize,
        allOffsets,
      )) as P;
    case 8:
      return (reader.readObjectOrNull<Idd>(
        offset,
        IddSchema.deserialize,
        allOffsets,
      )) as P;
    case 9:
      return (reader.readBoolOrNull(offset)) as P;
    case 10:
      return (reader.readObjectOrNull<Maps>(
        offset,
        MapsSchema.deserialize,
        allOffsets,
      )) as P;
    case 11:
      return (reader.readObjectOrNull<Name>(
        offset,
        NameSchema.deserialize,
        allOffsets,
      )) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _countryGetId(Country object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _countryGetLinks(Country object) {
  return [];
}

void _countryAttach(IsarCollection<dynamic> col, Id id, Country object) {
  object.id = id;
}

extension CountryQueryWhereSort on QueryBuilder<Country, Country, QWhere> {
  QueryBuilder<Country, Country, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CountryQueryWhere on QueryBuilder<Country, Country, QWhereClause> {
  QueryBuilder<Country, Country, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Country, Country, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CountryQueryFilter
    on QueryBuilder<Country, Country, QFilterCondition> {
  QueryBuilder<Country, Country, QAfterFilterCondition> areaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'area',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> areaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'area',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> areaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'area',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> areaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'area',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> areaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'area',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> areaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'area',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> capitalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'capital',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> capitalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'capital',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> capitalElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'capital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      capitalElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'capital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> capitalElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'capital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> capitalElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'capital',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      capitalElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'capital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> capitalElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'capital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> capitalElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'capital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> capitalElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'capital',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      capitalElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'capital',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      capitalElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'capital',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> capitalLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'capital',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> capitalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'capital',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> capitalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'capital',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> capitalLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'capital',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      capitalLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'capital',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> capitalLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'capital',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> carIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'car',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> carIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'car',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> coatOfArmsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'coatOfArms',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> coatOfArmsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'coatOfArms',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> continentsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'continents',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> continentsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'continents',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      continentsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'continents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      continentsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'continents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      continentsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'continents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      continentsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'continents',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      continentsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'continents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      continentsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'continents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      continentsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'continents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      continentsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'continents',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      continentsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'continents',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      continentsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'continents',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> continentsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'continents',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> continentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'continents',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> continentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'continents',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      continentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'continents',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      continentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'continents',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> continentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'continents',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> currenciesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currencies',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> currenciesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currencies',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flag',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flag',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'flag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'flag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'flag',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'flag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'flag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'flag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'flag',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flag',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'flag',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flags',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flagsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flags',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> iddIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idd',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> iddIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idd',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> landlockedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'landlocked',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> landlockedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'landlocked',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> landlockedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'landlocked',
        value: value,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> mapsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maps',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> mapsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maps',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> populationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'population',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> populationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'population',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> populationEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'population',
        value: value,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> populationGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'population',
        value: value,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> populationLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'population',
        value: value,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> populationBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'population',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> regionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'region',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> regionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'region',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> regionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'region',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> regionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'region',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> regionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'region',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> regionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'region',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> regionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'region',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> regionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'region',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> regionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'region',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> regionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'region',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> regionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'region',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> regionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'region',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> startOfWeekIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'startOfWeek',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> startOfWeekIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'startOfWeek',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> startOfWeekEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startOfWeek',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> startOfWeekGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startOfWeek',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> startOfWeekLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startOfWeek',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> startOfWeekBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startOfWeek',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> startOfWeekStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'startOfWeek',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> startOfWeekEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'startOfWeek',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> startOfWeekContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'startOfWeek',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> startOfWeekMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'startOfWeek',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> startOfWeekIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startOfWeek',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      startOfWeekIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'startOfWeek',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezonesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timezones',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezonesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timezones',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezonesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timezones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      timezonesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timezones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      timezonesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timezones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezonesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timezones',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      timezonesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timezones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      timezonesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timezones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      timezonesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timezones',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezonesElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timezones',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      timezonesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timezones',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      timezonesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timezones',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezonesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timezones',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezonesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timezones',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezonesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timezones',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezonesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timezones',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      timezonesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timezones',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezonesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timezones',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension CountryQueryObject
    on QueryBuilder<Country, Country, QFilterCondition> {
  QueryBuilder<Country, Country, QAfterFilterCondition> car(
      FilterQuery<Car> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'car');
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> coatOfArms(
      FilterQuery<CoatOfArms> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'coatOfArms');
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> currencies(
      FilterQuery<Currencies> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'currencies');
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flags(
      FilterQuery<Flags> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'flags');
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> idd(
      FilterQuery<Idd> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'idd');
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> maps(
      FilterQuery<Maps> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'maps');
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> name(
      FilterQuery<Name> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'name');
    });
  }
}

extension CountryQueryLinks
    on QueryBuilder<Country, Country, QFilterCondition> {}

extension CountryQuerySortBy on QueryBuilder<Country, Country, QSortBy> {
  QueryBuilder<Country, Country, QAfterSortBy> sortByArea() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByAreaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByFlag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flag', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByFlagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flag', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByLandlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landlocked', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByLandlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landlocked', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByPopulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByRegion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'region', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByRegionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'region', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByStartOfWeek() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startOfWeek', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByStartOfWeekDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startOfWeek', Sort.desc);
    });
  }
}

extension CountryQuerySortThenBy
    on QueryBuilder<Country, Country, QSortThenBy> {
  QueryBuilder<Country, Country, QAfterSortBy> thenByArea() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByAreaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByFlag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flag', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByFlagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flag', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByLandlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landlocked', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByLandlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'landlocked', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByPopulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByRegion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'region', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByRegionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'region', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByStartOfWeek() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startOfWeek', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByStartOfWeekDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startOfWeek', Sort.desc);
    });
  }
}

extension CountryQueryWhereDistinct
    on QueryBuilder<Country, Country, QDistinct> {
  QueryBuilder<Country, Country, QDistinct> distinctByArea() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'area');
    });
  }

  QueryBuilder<Country, Country, QDistinct> distinctByCapital() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'capital');
    });
  }

  QueryBuilder<Country, Country, QDistinct> distinctByContinents() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'continents');
    });
  }

  QueryBuilder<Country, Country, QDistinct> distinctByFlag(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flag', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Country, Country, QDistinct> distinctByLandlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'landlocked');
    });
  }

  QueryBuilder<Country, Country, QDistinct> distinctByPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'population');
    });
  }

  QueryBuilder<Country, Country, QDistinct> distinctByRegion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'region', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Country, Country, QDistinct> distinctByStartOfWeek(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startOfWeek', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Country, Country, QDistinct> distinctByTimezones() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timezones');
    });
  }
}

extension CountryQueryProperty
    on QueryBuilder<Country, Country, QQueryProperty> {
  QueryBuilder<Country, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Country, double?, QQueryOperations> areaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'area');
    });
  }

  QueryBuilder<Country, List<String>?, QQueryOperations> capitalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'capital');
    });
  }

  QueryBuilder<Country, Car?, QQueryOperations> carProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'car');
    });
  }

  QueryBuilder<Country, CoatOfArms?, QQueryOperations> coatOfArmsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'coatOfArms');
    });
  }

  QueryBuilder<Country, List<String>?, QQueryOperations> continentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'continents');
    });
  }

  QueryBuilder<Country, Currencies?, QQueryOperations> currenciesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currencies');
    });
  }

  QueryBuilder<Country, String?, QQueryOperations> flagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flag');
    });
  }

  QueryBuilder<Country, Flags?, QQueryOperations> flagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flags');
    });
  }

  QueryBuilder<Country, Idd?, QQueryOperations> iddProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idd');
    });
  }

  QueryBuilder<Country, bool?, QQueryOperations> landlockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'landlocked');
    });
  }

  QueryBuilder<Country, Maps?, QQueryOperations> mapsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maps');
    });
  }

  QueryBuilder<Country, Name?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Country, int?, QQueryOperations> populationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'population');
    });
  }

  QueryBuilder<Country, String?, QQueryOperations> regionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'region');
    });
  }

  QueryBuilder<Country, String?, QQueryOperations> startOfWeekProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startOfWeek');
    });
  }

  QueryBuilder<Country, List<String>?, QQueryOperations> timezonesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timezones');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const CoatOfArmsSchema = Schema(
  name: r'CoatOfArms',
  id: -4329471327458134377,
  properties: {
    r'png': PropertySchema(
      id: 0,
      name: r'png',
      type: IsarType.string,
    ),
    r'svg': PropertySchema(
      id: 1,
      name: r'svg',
      type: IsarType.string,
    )
  },
  estimateSize: _coatOfArmsEstimateSize,
  serialize: _coatOfArmsSerialize,
  deserialize: _coatOfArmsDeserialize,
  deserializeProp: _coatOfArmsDeserializeProp,
);

int _coatOfArmsEstimateSize(
  CoatOfArms object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.png;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.svg;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _coatOfArmsSerialize(
  CoatOfArms object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.png);
  writer.writeString(offsets[1], object.svg);
}

CoatOfArms _coatOfArmsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CoatOfArms(
    png: reader.readStringOrNull(offsets[0]),
    svg: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _coatOfArmsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CoatOfArmsQueryFilter
    on QueryBuilder<CoatOfArms, CoatOfArms, QFilterCondition> {
  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> pngIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'png',
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> pngIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'png',
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> pngEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'png',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> pngGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'png',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> pngLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'png',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> pngBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'png',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> pngStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'png',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> pngEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'png',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> pngContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'png',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> pngMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'png',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> pngIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'png',
        value: '',
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> pngIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'png',
        value: '',
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> svgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'svg',
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> svgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'svg',
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> svgEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> svgGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> svgLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> svgBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'svg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> svgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> svgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> svgContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> svgMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'svg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> svgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'svg',
        value: '',
      ));
    });
  }

  QueryBuilder<CoatOfArms, CoatOfArms, QAfterFilterCondition> svgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'svg',
        value: '',
      ));
    });
  }
}

extension CoatOfArmsQueryObject
    on QueryBuilder<CoatOfArms, CoatOfArms, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const FlagsSchema = Schema(
  name: r'Flags',
  id: 936127097060463949,
  properties: {
    r'png': PropertySchema(
      id: 0,
      name: r'png',
      type: IsarType.string,
    ),
    r'svg': PropertySchema(
      id: 1,
      name: r'svg',
      type: IsarType.string,
    )
  },
  estimateSize: _flagsEstimateSize,
  serialize: _flagsSerialize,
  deserialize: _flagsDeserialize,
  deserializeProp: _flagsDeserializeProp,
);

int _flagsEstimateSize(
  Flags object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.png;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.svg;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _flagsSerialize(
  Flags object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.png);
  writer.writeString(offsets[1], object.svg);
}

Flags _flagsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Flags(
    png: reader.readStringOrNull(offsets[0]),
    svg: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _flagsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension FlagsQueryFilter on QueryBuilder<Flags, Flags, QFilterCondition> {
  QueryBuilder<Flags, Flags, QAfterFilterCondition> pngIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'png',
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> pngIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'png',
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> pngEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'png',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> pngGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'png',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> pngLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'png',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> pngBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'png',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> pngStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'png',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> pngEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'png',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> pngContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'png',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> pngMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'png',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> pngIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'png',
        value: '',
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> pngIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'png',
        value: '',
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> svgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'svg',
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> svgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'svg',
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> svgEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> svgGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> svgLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> svgBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'svg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> svgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> svgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> svgContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> svgMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'svg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> svgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'svg',
        value: '',
      ));
    });
  }

  QueryBuilder<Flags, Flags, QAfterFilterCondition> svgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'svg',
        value: '',
      ));
    });
  }
}

extension FlagsQueryObject on QueryBuilder<Flags, Flags, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const CarSchema = Schema(
  name: r'Car',
  id: -8398112620925430914,
  properties: {
    r'side': PropertySchema(
      id: 0,
      name: r'side',
      type: IsarType.string,
    ),
    r'signs': PropertySchema(
      id: 1,
      name: r'signs',
      type: IsarType.stringList,
    )
  },
  estimateSize: _carEstimateSize,
  serialize: _carSerialize,
  deserialize: _carDeserialize,
  deserializeProp: _carDeserializeProp,
);

int _carEstimateSize(
  Car object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.side;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.signs;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  return bytesCount;
}

void _carSerialize(
  Car object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.side);
  writer.writeStringList(offsets[1], object.signs);
}

Car _carDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Car(
    side: reader.readStringOrNull(offsets[0]),
    signs: reader.readStringList(offsets[1]),
  );
  return object;
}

P _carDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CarQueryFilter on QueryBuilder<Car, Car, QFilterCondition> {
  QueryBuilder<Car, Car, QAfterFilterCondition> sideIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'side',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> sideIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'side',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> sideEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'side',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> sideGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'side',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> sideLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'side',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> sideBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'side',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> sideStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'side',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> sideEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'side',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> sideContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'side',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> sideMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'side',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> sideIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'side',
        value: '',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> sideIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'side',
        value: '',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'signs',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'signs',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'signs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'signs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'signs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'signs',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'signs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'signs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'signs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'signs',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'signs',
        value: '',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'signs',
        value: '',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'signs',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'signs',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'signs',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'signs',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'signs',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> signsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'signs',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension CarQueryObject on QueryBuilder<Car, Car, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const MapsSchema = Schema(
  name: r'Maps',
  id: -6198886401927855433,
  properties: {
    r'googleMaps': PropertySchema(
      id: 0,
      name: r'googleMaps',
      type: IsarType.string,
    ),
    r'openStreetMaps': PropertySchema(
      id: 1,
      name: r'openStreetMaps',
      type: IsarType.string,
    )
  },
  estimateSize: _mapsEstimateSize,
  serialize: _mapsSerialize,
  deserialize: _mapsDeserialize,
  deserializeProp: _mapsDeserializeProp,
);

int _mapsEstimateSize(
  Maps object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.googleMaps;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.openStreetMaps;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _mapsSerialize(
  Maps object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.googleMaps);
  writer.writeString(offsets[1], object.openStreetMaps);
}

Maps _mapsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Maps(
    googleMaps: reader.readStringOrNull(offsets[0]),
    openStreetMaps: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _mapsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MapsQueryFilter on QueryBuilder<Maps, Maps, QFilterCondition> {
  QueryBuilder<Maps, Maps, QAfterFilterCondition> googleMapsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'googleMaps',
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> googleMapsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'googleMaps',
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> googleMapsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'googleMaps',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> googleMapsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'googleMaps',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> googleMapsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'googleMaps',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> googleMapsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'googleMaps',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> googleMapsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'googleMaps',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> googleMapsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'googleMaps',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> googleMapsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'googleMaps',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> googleMapsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'googleMaps',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> googleMapsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'googleMaps',
        value: '',
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> googleMapsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'googleMaps',
        value: '',
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> openStreetMapsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'openStreetMaps',
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> openStreetMapsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'openStreetMaps',
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> openStreetMapsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openStreetMaps',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> openStreetMapsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'openStreetMaps',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> openStreetMapsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'openStreetMaps',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> openStreetMapsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'openStreetMaps',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> openStreetMapsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'openStreetMaps',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> openStreetMapsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'openStreetMaps',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> openStreetMapsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'openStreetMaps',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> openStreetMapsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'openStreetMaps',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> openStreetMapsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openStreetMaps',
        value: '',
      ));
    });
  }

  QueryBuilder<Maps, Maps, QAfterFilterCondition> openStreetMapsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'openStreetMaps',
        value: '',
      ));
    });
  }
}

extension MapsQueryObject on QueryBuilder<Maps, Maps, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const IddSchema = Schema(
  name: r'Idd',
  id: 6332927076379847816,
  properties: {
    r'root': PropertySchema(
      id: 0,
      name: r'root',
      type: IsarType.string,
    ),
    r'suffixes': PropertySchema(
      id: 1,
      name: r'suffixes',
      type: IsarType.stringList,
    )
  },
  estimateSize: _iddEstimateSize,
  serialize: _iddSerialize,
  deserialize: _iddDeserialize,
  deserializeProp: _iddDeserializeProp,
);

int _iddEstimateSize(
  Idd object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.root;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.suffixes;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  return bytesCount;
}

void _iddSerialize(
  Idd object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.root);
  writer.writeStringList(offsets[1], object.suffixes);
}

Idd _iddDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Idd(
    root: reader.readStringOrNull(offsets[0]),
    suffixes: reader.readStringList(offsets[1]),
  );
  return object;
}

P _iddDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension IddQueryFilter on QueryBuilder<Idd, Idd, QFilterCondition> {
  QueryBuilder<Idd, Idd, QAfterFilterCondition> rootIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'root',
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> rootIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'root',
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> rootEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'root',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> rootGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'root',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> rootLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'root',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> rootBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'root',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> rootStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'root',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> rootEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'root',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> rootContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'root',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> rootMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'root',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> rootIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'root',
        value: '',
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> rootIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'root',
        value: '',
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'suffixes',
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'suffixes',
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'suffixes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'suffixes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'suffixes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'suffixes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'suffixes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'suffixes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'suffixes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'suffixes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'suffixes',
        value: '',
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'suffixes',
        value: '',
      ));
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'suffixes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'suffixes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'suffixes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'suffixes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'suffixes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Idd, Idd, QAfterFilterCondition> suffixesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'suffixes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension IddQueryObject on QueryBuilder<Idd, Idd, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const CurrenciesSchema = Schema(
  name: r'Currencies',
  id: 604863731747418347,
  properties: {
    r'currencies': PropertySchema(
      id: 0,
      name: r'currencies',
      type: IsarType.objectList,
      target: r'Currency',
    )
  },
  estimateSize: _currenciesEstimateSize,
  serialize: _currenciesSerialize,
  deserialize: _currenciesDeserialize,
  deserializeProp: _currenciesDeserializeProp,
);

int _currenciesEstimateSize(
  Currencies object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.currencies;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Currency]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += CurrencySchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _currenciesSerialize(
  Currencies object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<Currency>(
    offsets[0],
    allOffsets,
    CurrencySchema.serialize,
    object.currencies,
  );
}

Currencies _currenciesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Currencies(
    currencies: reader.readObjectList<Currency>(
      offsets[0],
      CurrencySchema.deserialize,
      allOffsets,
      Currency(),
    ),
  );
  return object;
}

P _currenciesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<Currency>(
        offset,
        CurrencySchema.deserialize,
        allOffsets,
        Currency(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CurrenciesQueryFilter
    on QueryBuilder<Currencies, Currencies, QFilterCondition> {
  QueryBuilder<Currencies, Currencies, QAfterFilterCondition>
      currenciesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currencies',
      ));
    });
  }

  QueryBuilder<Currencies, Currencies, QAfterFilterCondition>
      currenciesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currencies',
      ));
    });
  }

  QueryBuilder<Currencies, Currencies, QAfterFilterCondition>
      currenciesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'currencies',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Currencies, Currencies, QAfterFilterCondition>
      currenciesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'currencies',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Currencies, Currencies, QAfterFilterCondition>
      currenciesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'currencies',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Currencies, Currencies, QAfterFilterCondition>
      currenciesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'currencies',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Currencies, Currencies, QAfterFilterCondition>
      currenciesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'currencies',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Currencies, Currencies, QAfterFilterCondition>
      currenciesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'currencies',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension CurrenciesQueryObject
    on QueryBuilder<Currencies, Currencies, QFilterCondition> {
  QueryBuilder<Currencies, Currencies, QAfterFilterCondition> currenciesElement(
      FilterQuery<Currency> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'currencies');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const NameSchema = Schema(
  name: r'Name',
  id: 8655181185809606191,
  properties: {
    r'common': PropertySchema(
      id: 0,
      name: r'common',
      type: IsarType.string,
    ),
    r'nativeName': PropertySchema(
      id: 1,
      name: r'nativeName',
      type: IsarType.object,
      target: r'NativeName',
    ),
    r'official': PropertySchema(
      id: 2,
      name: r'official',
      type: IsarType.string,
    )
  },
  estimateSize: _nameEstimateSize,
  serialize: _nameSerialize,
  deserialize: _nameDeserialize,
  deserializeProp: _nameDeserializeProp,
);

int _nameEstimateSize(
  Name object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.common;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nativeName;
    if (value != null) {
      bytesCount += 3 +
          NativeNameSchema.estimateSize(
              value, allOffsets[NativeName]!, allOffsets);
    }
  }
  {
    final value = object.official;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _nameSerialize(
  Name object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.common);
  writer.writeObject<NativeName>(
    offsets[1],
    allOffsets,
    NativeNameSchema.serialize,
    object.nativeName,
  );
  writer.writeString(offsets[2], object.official);
}

Name _nameDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Name(
    common: reader.readStringOrNull(offsets[0]),
    nativeName: reader.readObjectOrNull<NativeName>(
      offsets[1],
      NativeNameSchema.deserialize,
      allOffsets,
    ),
    official: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _nameDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<NativeName>(
        offset,
        NativeNameSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NameQueryFilter on QueryBuilder<Name, Name, QFilterCondition> {
  QueryBuilder<Name, Name, QAfterFilterCondition> commonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'common',
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> commonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'common',
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> commonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'common',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> commonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'common',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> commonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'common',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> commonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'common',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> commonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'common',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> commonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'common',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> commonContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'common',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> commonMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'common',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> commonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'common',
        value: '',
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> commonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'common',
        value: '',
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> nativeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nativeName',
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> nativeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nativeName',
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> officialIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'official',
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> officialIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'official',
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> officialEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'official',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> officialGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'official',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> officialLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'official',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> officialBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'official',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> officialStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'official',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> officialEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'official',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> officialContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'official',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> officialMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'official',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> officialIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'official',
        value: '',
      ));
    });
  }

  QueryBuilder<Name, Name, QAfterFilterCondition> officialIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'official',
        value: '',
      ));
    });
  }
}

extension NameQueryObject on QueryBuilder<Name, Name, QFilterCondition> {
  QueryBuilder<Name, Name, QAfterFilterCondition> nativeName(
      FilterQuery<NativeName> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'nativeName');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const NativeNameSchema = Schema(
  name: r'NativeName',
  id: 2764653090101146817,
  properties: {
    r'common': PropertySchema(
      id: 0,
      name: r'common',
      type: IsarType.string,
    ),
    r'official': PropertySchema(
      id: 1,
      name: r'official',
      type: IsarType.string,
    )
  },
  estimateSize: _nativeNameEstimateSize,
  serialize: _nativeNameSerialize,
  deserialize: _nativeNameDeserialize,
  deserializeProp: _nativeNameDeserializeProp,
);

int _nativeNameEstimateSize(
  NativeName object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.common;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.official;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _nativeNameSerialize(
  NativeName object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.common);
  writer.writeString(offsets[1], object.official);
}

NativeName _nativeNameDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NativeName(
    common: reader.readStringOrNull(offsets[0]),
    official: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _nativeNameDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NativeNameQueryFilter
    on QueryBuilder<NativeName, NativeName, QFilterCondition> {
  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> commonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'common',
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition>
      commonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'common',
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> commonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'common',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> commonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'common',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> commonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'common',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> commonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'common',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> commonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'common',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> commonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'common',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> commonContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'common',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> commonMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'common',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> commonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'common',
        value: '',
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition>
      commonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'common',
        value: '',
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> officialIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'official',
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition>
      officialIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'official',
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> officialEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'official',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition>
      officialGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'official',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> officialLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'official',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> officialBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'official',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition>
      officialStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'official',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> officialEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'official',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> officialContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'official',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition> officialMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'official',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition>
      officialIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'official',
        value: '',
      ));
    });
  }

  QueryBuilder<NativeName, NativeName, QAfterFilterCondition>
      officialIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'official',
        value: '',
      ));
    });
  }
}

extension NativeNameQueryObject
    on QueryBuilder<NativeName, NativeName, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const CurrencySchema = Schema(
  name: r'Currency',
  id: 8290149502090171821,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'symbol': PropertySchema(
      id: 1,
      name: r'symbol',
      type: IsarType.string,
    )
  },
  estimateSize: _currencyEstimateSize,
  serialize: _currencySerialize,
  deserialize: _currencyDeserialize,
  deserializeProp: _currencyDeserializeProp,
);

int _currencyEstimateSize(
  Currency object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.symbol;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _currencySerialize(
  Currency object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeString(offsets[1], object.symbol);
}

Currency _currencyDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Currency(
    name: reader.readStringOrNull(offsets[0]),
    symbol: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _currencyDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CurrencyQueryFilter
    on QueryBuilder<Currency, Currency, QFilterCondition> {
  QueryBuilder<Currency, Currency, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> symbolIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'symbol',
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> symbolIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'symbol',
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> symbolEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> symbolGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> symbolLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> symbolBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'symbol',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> symbolStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> symbolEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> symbolContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'symbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> symbolMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'symbol',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> symbolIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'symbol',
        value: '',
      ));
    });
  }

  QueryBuilder<Currency, Currency, QAfterFilterCondition> symbolIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'symbol',
        value: '',
      ));
    });
  }
}

extension CurrencyQueryObject
    on QueryBuilder<Currency, Currency, QFilterCondition> {}
