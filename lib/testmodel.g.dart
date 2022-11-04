// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testmodel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetTestModelCollection on Isar {
  IsarCollection<TestModel> get testModels => this.collection();
}

const TestModelSchema = CollectionSchema(
  name: r'TestModel',
  id: -2330294972491284020,
  properties: {
    r'idx': PropertySchema(
      id: 0,
      name: r'idx',
      type: IsarType.long,
    ),
    r'msg': PropertySchema(
      id: 1,
      name: r'msg',
      type: IsarType.string,
    )
  },
  estimateSize: _testModelEstimateSize,
  serialize: _testModelSerialize,
  deserialize: _testModelDeserialize,
  deserializeProp: _testModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _testModelGetId,
  getLinks: _testModelGetLinks,
  attach: _testModelAttach,
  version: '3.0.2',
);

int _testModelEstimateSize(
  TestModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.msg.length * 3;
  return bytesCount;
}

void _testModelSerialize(
  TestModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.idx);
  writer.writeString(offsets[1], object.msg);
}

TestModel _testModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TestModel();
  object.id = id;
  object.idx = reader.readLong(offsets[0]);
  object.msg = reader.readString(offsets[1]);
  return object;
}

P _testModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _testModelGetId(TestModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _testModelGetLinks(TestModel object) {
  return [];
}

void _testModelAttach(IsarCollection<dynamic> col, Id id, TestModel object) {
  object.id = id;
}

extension TestModelQueryWhereSort
    on QueryBuilder<TestModel, TestModel, QWhere> {
  QueryBuilder<TestModel, TestModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TestModelQueryWhere
    on QueryBuilder<TestModel, TestModel, QWhereClause> {
  QueryBuilder<TestModel, TestModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterWhereClause> idBetween(
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

extension TestModelQueryFilter
    on QueryBuilder<TestModel, TestModel, QFilterCondition> {
  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> idxEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idx',
        value: value,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> idxGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idx',
        value: value,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> idxLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idx',
        value: value,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> idxBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idx',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> msgEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> msgGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> msgLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> msgBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'msg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> msgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> msgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> msgContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> msgMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'msg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> msgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'msg',
        value: '',
      ));
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterFilterCondition> msgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'msg',
        value: '',
      ));
    });
  }
}

extension TestModelQueryObject
    on QueryBuilder<TestModel, TestModel, QFilterCondition> {}

extension TestModelQueryLinks
    on QueryBuilder<TestModel, TestModel, QFilterCondition> {}

extension TestModelQuerySortBy on QueryBuilder<TestModel, TestModel, QSortBy> {
  QueryBuilder<TestModel, TestModel, QAfterSortBy> sortByIdx() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idx', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> sortByIdxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idx', Sort.desc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> sortByMsg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msg', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> sortByMsgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msg', Sort.desc);
    });
  }
}

extension TestModelQuerySortThenBy
    on QueryBuilder<TestModel, TestModel, QSortThenBy> {
  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByIdx() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idx', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByIdxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idx', Sort.desc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByMsg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msg', Sort.asc);
    });
  }

  QueryBuilder<TestModel, TestModel, QAfterSortBy> thenByMsgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msg', Sort.desc);
    });
  }
}

extension TestModelQueryWhereDistinct
    on QueryBuilder<TestModel, TestModel, QDistinct> {
  QueryBuilder<TestModel, TestModel, QDistinct> distinctByIdx() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idx');
    });
  }

  QueryBuilder<TestModel, TestModel, QDistinct> distinctByMsg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'msg', caseSensitive: caseSensitive);
    });
  }
}

extension TestModelQueryProperty
    on QueryBuilder<TestModel, TestModel, QQueryProperty> {
  QueryBuilder<TestModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TestModel, int, QQueryOperations> idxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idx');
    });
  }

  QueryBuilder<TestModel, String, QQueryOperations> msgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'msg');
    });
  }
}
