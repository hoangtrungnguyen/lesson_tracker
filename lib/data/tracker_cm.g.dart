// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracker_cm.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTrackerCMCollection on Isar {
  IsarCollection<TrackerCM> get trackerCMs => this.collection();
}

const TrackerCMSchema = CollectionSchema(
  name: r'TrackerCM',
  id: 2534055469291651374,
  properties: {
    r'finishedTime': PropertySchema(
      id: 0,
      name: r'finishedTime',
      type: IsarType.dateTime,
    ),
    r'startedTime': PropertySchema(
      id: 1,
      name: r'startedTime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _trackerCMEstimateSize,
  serialize: _trackerCMSerialize,
  deserialize: _trackerCMDeserialize,
  deserializeProp: _trackerCMDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'lesson': LinkSchema(
      id: 6257572831299776482,
      name: r'lesson',
      target: r'LessonCM',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _trackerCMGetId,
  getLinks: _trackerCMGetLinks,
  attach: _trackerCMAttach,
  version: '3.1.0',
);

int _trackerCMEstimateSize(
  TrackerCM object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _trackerCMSerialize(
  TrackerCM object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.finishedTime);
  writer.writeDateTime(offsets[1], object.startedTime);
}

TrackerCM _trackerCMDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TrackerCM(
    finishedTime: reader.readDateTime(offsets[0]),
    id: id,
    startedTime: reader.readDateTime(offsets[1]),
  );
  return object;
}

P _trackerCMDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _trackerCMGetId(TrackerCM object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _trackerCMGetLinks(TrackerCM object) {
  return [object.lesson];
}

void _trackerCMAttach(IsarCollection<dynamic> col, Id id, TrackerCM object) {
  object.id = id;
  object.lesson.attach(col, col.isar.collection<LessonCM>(), r'lesson', id);
}

extension TrackerCMQueryWhereSort
    on QueryBuilder<TrackerCM, TrackerCM, QWhere> {
  QueryBuilder<TrackerCM, TrackerCM, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TrackerCMQueryWhere
    on QueryBuilder<TrackerCM, TrackerCM, QWhereClause> {
  QueryBuilder<TrackerCM, TrackerCM, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TrackerCM, TrackerCM, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterWhereClause> idBetween(
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

extension TrackerCMQueryFilter
    on QueryBuilder<TrackerCM, TrackerCM, QFilterCondition> {
  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition> finishedTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finishedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition>
      finishedTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'finishedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition>
      finishedTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'finishedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition> finishedTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'finishedTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition> idGreaterThan(
    Id? value, {
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

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition> idLessThan(
    Id? value, {
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

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition> startedTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition>
      startedTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition> startedTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition> startedTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startedTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TrackerCMQueryObject
    on QueryBuilder<TrackerCM, TrackerCM, QFilterCondition> {}

extension TrackerCMQueryLinks
    on QueryBuilder<TrackerCM, TrackerCM, QFilterCondition> {
  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition> lesson(
      FilterQuery<LessonCM> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'lesson');
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterFilterCondition> lessonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'lesson', 0, true, 0, true);
    });
  }
}

extension TrackerCMQuerySortBy on QueryBuilder<TrackerCM, TrackerCM, QSortBy> {
  QueryBuilder<TrackerCM, TrackerCM, QAfterSortBy> sortByFinishedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishedTime', Sort.asc);
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterSortBy> sortByFinishedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishedTime', Sort.desc);
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterSortBy> sortByStartedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedTime', Sort.asc);
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterSortBy> sortByStartedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedTime', Sort.desc);
    });
  }
}

extension TrackerCMQuerySortThenBy
    on QueryBuilder<TrackerCM, TrackerCM, QSortThenBy> {
  QueryBuilder<TrackerCM, TrackerCM, QAfterSortBy> thenByFinishedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishedTime', Sort.asc);
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterSortBy> thenByFinishedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishedTime', Sort.desc);
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterSortBy> thenByStartedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedTime', Sort.asc);
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QAfterSortBy> thenByStartedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedTime', Sort.desc);
    });
  }
}

extension TrackerCMQueryWhereDistinct
    on QueryBuilder<TrackerCM, TrackerCM, QDistinct> {
  QueryBuilder<TrackerCM, TrackerCM, QDistinct> distinctByFinishedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'finishedTime');
    });
  }

  QueryBuilder<TrackerCM, TrackerCM, QDistinct> distinctByStartedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startedTime');
    });
  }
}

extension TrackerCMQueryProperty
    on QueryBuilder<TrackerCM, TrackerCM, QQueryProperty> {
  QueryBuilder<TrackerCM, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TrackerCM, DateTime, QQueryOperations> finishedTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'finishedTime');
    });
  }

  QueryBuilder<TrackerCM, DateTime, QQueryOperations> startedTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startedTime');
    });
  }
}
