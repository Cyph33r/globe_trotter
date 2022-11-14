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
    r'borders': PropertySchema(
      id: 1,
      name: r'borders',
      type: IsarType.stringList,
    ),
    r'capital': PropertySchema(
      id: 2,
      name: r'capital',
      type: IsarType.stringList,
    ),
    r'car': PropertySchema(
      id: 3,
      name: r'car',
      type: IsarType.object,
      target: r'Car',
    ),
    r'coatOfArms': PropertySchema(
      id: 4,
      name: r'coatOfArms',
      type: IsarType.object,
      target: r'CoatOfArms',
    ),
    r'currencies': PropertySchema(
      id: 5,
      name: r'currencies',
      type: IsarType.object,
      target: r'Currencies',
    ),
    r'dialingCode': PropertySchema(
      id: 6,
      name: r'dialingCode',
      type: IsarType.object,
      target: r'DialingCode',
    ),
    r'flags': PropertySchema(
      id: 7,
      name: r'flags',
      type: IsarType.object,
      target: r'Flags',
    ),
    r'independent': PropertySchema(
      id: 8,
      name: r'independent',
      type: IsarType.bool,
    ),
    r'landlocked': PropertySchema(
      id: 9,
      name: r'landlocked',
      type: IsarType.bool,
    ),
    r'language': PropertySchema(
      id: 10,
      name: r'language',
      type: IsarType.object,
      target: r'Languages',
    ),
    r'maps': PropertySchema(
      id: 11,
      name: r'maps',
      type: IsarType.object,
      target: r'Maps',
    ),
    r'name': PropertySchema(
      id: 12,
      name: r'name',
      type: IsarType.object,
      target: r'Name',
    ),
    r'population': PropertySchema(
      id: 13,
      name: r'population',
      type: IsarType.long,
    ),
    r'region': PropertySchema(
      id: 14,
      name: r'region',
      type: IsarType.string,
    ),
    r'startOfWeek': PropertySchema(
      id: 15,
      name: r'startOfWeek',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 16,
      name: r'status',
      type: IsarType.string,
    ),
    r'subregion': PropertySchema(
      id: 17,
      name: r'subregion',
      type: IsarType.string,
    ),
    r'timezones': PropertySchema(
      id: 18,
      name: r'timezones',
      type: IsarType.stringList,
    ),
    r'unMember': PropertySchema(
      id: 19,
      name: r'unMember',
      type: IsarType.bool,
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
    r'DialingCode': DialingCodeSchema,
    r'Currencies': CurrenciesSchema,
    r'Currency': CurrencySchema,
    r'Languages': LanguagesSchema,
    r'Language': LanguageSchema,
    r'Maps': MapsSchema,
    r'Car': CarSchema,
    r'Flags': FlagsSchema,
    r'CoatOfArms': CoatOfArmsSchema
  },
  getId: _countryGetId,
  getLinks: _countryGetLinks,
  attach: _countryAttach,
  version: '3.0.3',
);

int _countryEstimateSize(
  Country object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.borders;
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
    final value = object.currencies;
    if (value != null) {
      bytesCount += 3 +
          CurrenciesSchema.estimateSize(
              value, allOffsets[Currencies]!, allOffsets);
    }
  }
  {
    final value = object.dialingCode;
    if (value != null) {
      bytesCount += 3 +
          DialingCodeSchema.estimateSize(
              value, allOffsets[DialingCode]!, allOffsets);
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
    final value = object.language;
    if (value != null) {
      bytesCount += 3 +
          LanguagesSchema.estimateSize(
              value, allOffsets[Languages]!, allOffsets);
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
    final value = object.status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.subregion;
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
  writer.writeStringList(offsets[1], object.borders);
  writer.writeStringList(offsets[2], object.capital);
  writer.writeObject<Car>(
    offsets[3],
    allOffsets,
    CarSchema.serialize,
    object.car,
  );
  writer.writeObject<CoatOfArms>(
    offsets[4],
    allOffsets,
    CoatOfArmsSchema.serialize,
    object.coatOfArms,
  );
  writer.writeObject<Currencies>(
    offsets[5],
    allOffsets,
    CurrenciesSchema.serialize,
    object.currencies,
  );
  writer.writeObject<DialingCode>(
    offsets[6],
    allOffsets,
    DialingCodeSchema.serialize,
    object.dialingCode,
  );
  writer.writeObject<Flags>(
    offsets[7],
    allOffsets,
    FlagsSchema.serialize,
    object.flags,
  );
  writer.writeBool(offsets[8], object.independent);
  writer.writeBool(offsets[9], object.landlocked);
  writer.writeObject<Languages>(
    offsets[10],
    allOffsets,
    LanguagesSchema.serialize,
    object.language,
  );
  writer.writeObject<Maps>(
    offsets[11],
    allOffsets,
    MapsSchema.serialize,
    object.maps,
  );
  writer.writeObject<Name>(
    offsets[12],
    allOffsets,
    NameSchema.serialize,
    object.name,
  );
  writer.writeLong(offsets[13], object.population);
  writer.writeString(offsets[14], object.region);
  writer.writeString(offsets[15], object.startOfWeek);
  writer.writeString(offsets[16], object.status);
  writer.writeString(offsets[17], object.subregion);
  writer.writeStringList(offsets[18], object.timezones);
  writer.writeBool(offsets[19], object.unMember);
}

Country _countryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Country(
    area: reader.readDoubleOrNull(offsets[0]),
    borders: reader.readStringList(offsets[1]),
    capital: reader.readStringList(offsets[2]),
    car: reader.readObjectOrNull<Car>(
      offsets[3],
      CarSchema.deserialize,
      allOffsets,
    ),
    coatOfArms: reader.readObjectOrNull<CoatOfArms>(
      offsets[4],
      CoatOfArmsSchema.deserialize,
      allOffsets,
    ),
    currencies: reader.readObjectOrNull<Currencies>(
      offsets[5],
      CurrenciesSchema.deserialize,
      allOffsets,
    ),
    dialingCode: reader.readObjectOrNull<DialingCode>(
      offsets[6],
      DialingCodeSchema.deserialize,
      allOffsets,
    ),
    flags: reader.readObjectOrNull<Flags>(
      offsets[7],
      FlagsSchema.deserialize,
      allOffsets,
    ),
    independent: reader.readBoolOrNull(offsets[8]),
    landlocked: reader.readBoolOrNull(offsets[9]),
    language: reader.readObjectOrNull<Languages>(
      offsets[10],
      LanguagesSchema.deserialize,
      allOffsets,
    ),
    maps: reader.readObjectOrNull<Maps>(
      offsets[11],
      MapsSchema.deserialize,
      allOffsets,
    ),
    name: reader.readObjectOrNull<Name>(
      offsets[12],
      NameSchema.deserialize,
      allOffsets,
    ),
    population: reader.readLongOrNull(offsets[13]),
    region: reader.readStringOrNull(offsets[14]),
    startOfWeek: reader.readStringOrNull(offsets[15]),
    status: reader.readStringOrNull(offsets[16]),
    subregion: reader.readStringOrNull(offsets[17]),
    timezones: reader.readStringList(offsets[18]),
    unMember: reader.readBoolOrNull(offsets[19]),
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
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readObjectOrNull<Car>(
        offset,
        CarSchema.deserialize,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readObjectOrNull<CoatOfArms>(
        offset,
        CoatOfArmsSchema.deserialize,
        allOffsets,
      )) as P;
    case 5:
      return (reader.readObjectOrNull<Currencies>(
        offset,
        CurrenciesSchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readObjectOrNull<DialingCode>(
        offset,
        DialingCodeSchema.deserialize,
        allOffsets,
      )) as P;
    case 7:
      return (reader.readObjectOrNull<Flags>(
        offset,
        FlagsSchema.deserialize,
        allOffsets,
      )) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readBoolOrNull(offset)) as P;
    case 10:
      return (reader.readObjectOrNull<Languages>(
        offset,
        LanguagesSchema.deserialize,
        allOffsets,
      )) as P;
    case 11:
      return (reader.readObjectOrNull<Maps>(
        offset,
        MapsSchema.deserialize,
        allOffsets,
      )) as P;
    case 12:
      return (reader.readObjectOrNull<Name>(
        offset,
        NameSchema.deserialize,
        allOffsets,
      )) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringList(offset)) as P;
    case 19:
      return (reader.readBoolOrNull(offset)) as P;
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

  QueryBuilder<Country, Country, QAfterFilterCondition> bordersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'borders',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> bordersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'borders',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> bordersElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'borders',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      bordersElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'borders',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> bordersElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'borders',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> bordersElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'borders',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      bordersElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'borders',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> bordersElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'borders',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> bordersElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'borders',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> bordersElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'borders',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      bordersElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'borders',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      bordersElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'borders',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> bordersLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'borders',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> bordersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'borders',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> bordersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'borders',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> bordersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'borders',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition>
      bordersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'borders',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> bordersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'borders',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
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

  QueryBuilder<Country, Country, QAfterFilterCondition> dialingCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dialingCode',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> dialingCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dialingCode',
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

  QueryBuilder<Country, Country, QAfterFilterCondition> independentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'independent',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> independentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'independent',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> independentEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'independent',
        value: value,
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

  QueryBuilder<Country, Country, QAfterFilterCondition> languageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> languageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'language',
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

  QueryBuilder<Country, Country, QAfterFilterCondition> statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> statusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> statusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> statusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> statusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> subregionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subregion',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> subregionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subregion',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> subregionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subregion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> subregionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subregion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> subregionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subregion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> subregionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subregion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> subregionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subregion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> subregionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subregion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> subregionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subregion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> subregionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subregion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> subregionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subregion',
        value: '',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> subregionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subregion',
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

  QueryBuilder<Country, Country, QAfterFilterCondition> unMemberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unMember',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> unMemberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unMember',
      ));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> unMemberEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unMember',
        value: value,
      ));
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

  QueryBuilder<Country, Country, QAfterFilterCondition> dialingCode(
      FilterQuery<DialingCode> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'dialingCode');
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> flags(
      FilterQuery<Flags> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'flags');
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> language(
      FilterQuery<Languages> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'language');
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

  QueryBuilder<Country, Country, QAfterSortBy> sortByIndependent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'independent', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByIndependentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'independent', Sort.desc);
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

  QueryBuilder<Country, Country, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortBySubregion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregion', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortBySubregionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregion', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByUnMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unMember', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> sortByUnMemberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unMember', Sort.desc);
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

  QueryBuilder<Country, Country, QAfterSortBy> thenByIndependent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'independent', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByIndependentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'independent', Sort.desc);
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

  QueryBuilder<Country, Country, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenBySubregion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregion', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenBySubregionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subregion', Sort.desc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByUnMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unMember', Sort.asc);
    });
  }

  QueryBuilder<Country, Country, QAfterSortBy> thenByUnMemberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unMember', Sort.desc);
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

  QueryBuilder<Country, Country, QDistinct> distinctByBorders() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'borders');
    });
  }

  QueryBuilder<Country, Country, QDistinct> distinctByCapital() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'capital');
    });
  }

  QueryBuilder<Country, Country, QDistinct> distinctByIndependent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'independent');
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

  QueryBuilder<Country, Country, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Country, Country, QDistinct> distinctBySubregion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subregion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Country, Country, QDistinct> distinctByTimezones() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timezones');
    });
  }

  QueryBuilder<Country, Country, QDistinct> distinctByUnMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unMember');
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

  QueryBuilder<Country, List<String>?, QQueryOperations> bordersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'borders');
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

  QueryBuilder<Country, Currencies?, QQueryOperations> currenciesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currencies');
    });
  }

  QueryBuilder<Country, DialingCode?, QQueryOperations> dialingCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dialingCode');
    });
  }

  QueryBuilder<Country, Flags?, QQueryOperations> flagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flags');
    });
  }

  QueryBuilder<Country, bool?, QQueryOperations> independentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'independent');
    });
  }

  QueryBuilder<Country, bool?, QQueryOperations> landlockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'landlocked');
    });
  }

  QueryBuilder<Country, Languages?, QQueryOperations> languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
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

  QueryBuilder<Country, String?, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<Country, String?, QQueryOperations> subregionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subregion');
    });
  }

  QueryBuilder<Country, List<String>?, QQueryOperations> timezonesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timezones');
    });
  }

  QueryBuilder<Country, bool?, QQueryOperations> unMemberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unMember');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const DialingCodeSchema = Schema(
  name: r'DialingCode',
  id: -4928858089494931781,
  properties: {
    r'codes': PropertySchema(
      id: 0,
      name: r'codes',
      type: IsarType.stringList,
    )
  },
  estimateSize: _dialingCodeEstimateSize,
  serialize: _dialingCodeSerialize,
  deserialize: _dialingCodeDeserialize,
  deserializeProp: _dialingCodeDeserializeProp,
);

int _dialingCodeEstimateSize(
  DialingCode object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.codes.length * 3;
  {
    for (var i = 0; i < object.codes.length; i++) {
      final value = object.codes[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _dialingCodeSerialize(
  DialingCode object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.codes);
}

DialingCode _dialingCodeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DialingCode(
    reader.readStringList(offsets[0]) ?? const <String>[],
  );
  return object;
}

P _dialingCodeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? const <String>[]) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension DialingCodeQueryFilter
    on QueryBuilder<DialingCode, DialingCode, QFilterCondition> {
  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'codes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'codes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'codes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'codes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'codes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'codes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'codes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'codes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'codes',
        value: '',
      ));
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'codes',
        value: '',
      ));
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'codes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition> codesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'codes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'codes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'codes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'codes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DialingCode, DialingCode, QAfterFilterCondition>
      codesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'codes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension DialingCodeQueryObject
    on QueryBuilder<DialingCode, DialingCode, QFilterCondition> {}

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
  return bytesCount;
}

void _carSerialize(
  Car object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.side);
}

Car _carDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Car(
    side: reader.readStringOrNull(offsets[0]),
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

const LanguageSchema = Schema(
  name: r'Language',
  id: -2011595345252117802,
  properties: {
    r'alphaTwoCode': PropertySchema(
      id: 0,
      name: r'alphaTwoCode',
      type: IsarType.string,
    ),
    r'english': PropertySchema(
      id: 1,
      name: r'english',
      type: IsarType.string,
    )
  },
  estimateSize: _languageEstimateSize,
  serialize: _languageSerialize,
  deserialize: _languageDeserialize,
  deserializeProp: _languageDeserializeProp,
);

int _languageEstimateSize(
  Language object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.alphaTwoCode.length * 3;
  bytesCount += 3 + object.english.length * 3;
  return bytesCount;
}

void _languageSerialize(
  Language object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.alphaTwoCode);
  writer.writeString(offsets[1], object.english);
}

Language _languageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Language(
    alphaTwoCode: reader.readStringOrNull(offsets[0]) ?? "",
    english: reader.readStringOrNull(offsets[1]) ?? "",
  );
  return object;
}

P _languageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? "") as P;
    case 1:
      return (reader.readStringOrNull(offset) ?? "") as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LanguageQueryFilter
    on QueryBuilder<Language, Language, QFilterCondition> {
  QueryBuilder<Language, Language, QAfterFilterCondition> alphaTwoCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alphaTwoCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition>
      alphaTwoCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'alphaTwoCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> alphaTwoCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'alphaTwoCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> alphaTwoCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'alphaTwoCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition>
      alphaTwoCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'alphaTwoCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> alphaTwoCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'alphaTwoCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> alphaTwoCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'alphaTwoCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> alphaTwoCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'alphaTwoCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition>
      alphaTwoCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alphaTwoCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition>
      alphaTwoCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'alphaTwoCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> englishEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'english',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> englishGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'english',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> englishLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'english',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> englishBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'english',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> englishStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'english',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> englishEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'english',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> englishContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'english',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> englishMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'english',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> englishIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'english',
        value: '',
      ));
    });
  }

  QueryBuilder<Language, Language, QAfterFilterCondition> englishIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'english',
        value: '',
      ));
    });
  }
}

extension LanguageQueryObject
    on QueryBuilder<Language, Language, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const LanguagesSchema = Schema(
  name: r'Languages',
  id: -1188574120358875103,
  properties: {
    r'languages': PropertySchema(
      id: 0,
      name: r'languages',
      type: IsarType.objectList,
      target: r'Language',
    )
  },
  estimateSize: _languagesEstimateSize,
  serialize: _languagesSerialize,
  deserialize: _languagesDeserialize,
  deserializeProp: _languagesDeserializeProp,
);

int _languagesEstimateSize(
  Languages object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.languages;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Language]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += LanguageSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _languagesSerialize(
  Languages object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<Language>(
    offsets[0],
    allOffsets,
    LanguageSchema.serialize,
    object.languages,
  );
}

Languages _languagesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Languages(
    languages: reader.readObjectList<Language>(
      offsets[0],
      LanguageSchema.deserialize,
      allOffsets,
      Language(),
    ),
  );
  return object;
}

P _languagesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<Language>(
        offset,
        LanguageSchema.deserialize,
        allOffsets,
        Language(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LanguagesQueryFilter
    on QueryBuilder<Languages, Languages, QFilterCondition> {
  QueryBuilder<Languages, Languages, QAfterFilterCondition> languagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'languages',
      ));
    });
  }

  QueryBuilder<Languages, Languages, QAfterFilterCondition>
      languagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'languages',
      ));
    });
  }

  QueryBuilder<Languages, Languages, QAfterFilterCondition>
      languagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languages',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Languages, Languages, QAfterFilterCondition> languagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languages',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Languages, Languages, QAfterFilterCondition>
      languagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languages',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Languages, Languages, QAfterFilterCondition>
      languagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languages',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Languages, Languages, QAfterFilterCondition>
      languagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languages',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Languages, Languages, QAfterFilterCondition>
      languagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languages',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension LanguagesQueryObject
    on QueryBuilder<Languages, Languages, QFilterCondition> {
  QueryBuilder<Languages, Languages, QAfterFilterCondition> languagesElement(
      FilterQuery<Language> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'languages');
    });
  }
}

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
