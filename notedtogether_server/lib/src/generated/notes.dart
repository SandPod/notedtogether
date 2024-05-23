/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i2;

abstract class Note extends _i1.TableRow implements _i1.ProtocolSerialization {
  Note._({
    int? id,
    required this.text,
    required this.createdById,
    this.createdBy,
  }) : super(id);

  factory Note({
    int? id,
    required String text,
    required int createdById,
    _i2.UserInfo? createdBy,
  }) = _NoteImpl;

  factory Note.fromJson(Map<String, dynamic> jsonSerialization) {
    return Note(
      id: jsonSerialization['id'] as int?,
      text: jsonSerialization['text'] as String,
      createdById: jsonSerialization['createdById'] as int,
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['createdBy'] as Map<String, dynamic>)),
    );
  }

  static final t = NoteTable();

  static const db = NoteRepository._();

  String text;

  int createdById;

  _i2.UserInfo? createdBy;

  @override
  _i1.Table get table => t;

  Note copyWith({
    int? id,
    String? text,
    int? createdById,
    _i2.UserInfo? createdBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'text': text,
      'createdById': createdById,
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'text': text,
      'createdById': createdById,
      if (createdBy != null) 'createdBy': createdBy?.toJsonForProtocol(),
    };
  }

  static NoteInclude include({_i2.UserInfoInclude? createdBy}) {
    return NoteInclude._(createdBy: createdBy);
  }

  static NoteIncludeList includeList({
    _i1.WhereExpressionBuilder<NoteTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NoteTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NoteTable>? orderByList,
    NoteInclude? include,
  }) {
    return NoteIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Note.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Note.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _NoteImpl extends Note {
  _NoteImpl({
    int? id,
    required String text,
    required int createdById,
    _i2.UserInfo? createdBy,
  }) : super._(
          id: id,
          text: text,
          createdById: createdById,
          createdBy: createdBy,
        );

  @override
  Note copyWith({
    Object? id = _Undefined,
    String? text,
    int? createdById,
    Object? createdBy = _Undefined,
  }) {
    return Note(
      id: id is int? ? id : this.id,
      text: text ?? this.text,
      createdById: createdById ?? this.createdById,
      createdBy:
          createdBy is _i2.UserInfo? ? createdBy : this.createdBy?.copyWith(),
    );
  }
}

class NoteTable extends _i1.Table {
  NoteTable({super.tableRelation}) : super(tableName: 'note') {
    text = _i1.ColumnString(
      'text',
      this,
    );
    createdById = _i1.ColumnInt(
      'createdById',
      this,
    );
  }

  late final _i1.ColumnString text;

  late final _i1.ColumnInt createdById;

  _i2.UserInfoTable? _createdBy;

  _i2.UserInfoTable get createdBy {
    if (_createdBy != null) return _createdBy!;
    _createdBy = _i1.createRelationTable(
      relationFieldName: 'createdBy',
      field: Note.t.createdById,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _createdBy!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        text,
        createdById,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'createdBy') {
      return createdBy;
    }
    return null;
  }
}

class NoteInclude extends _i1.IncludeObject {
  NoteInclude._({_i2.UserInfoInclude? createdBy}) {
    _createdBy = createdBy;
  }

  _i2.UserInfoInclude? _createdBy;

  @override
  Map<String, _i1.Include?> get includes => {'createdBy': _createdBy};

  @override
  _i1.Table get table => Note.t;
}

class NoteIncludeList extends _i1.IncludeList {
  NoteIncludeList._({
    _i1.WhereExpressionBuilder<NoteTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Note.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Note.t;
}

class NoteRepository {
  const NoteRepository._();

  final attachRow = const NoteAttachRowRepository._();

  Future<List<Note>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NoteTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NoteTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NoteTable>? orderByList,
    _i1.Transaction? transaction,
    NoteInclude? include,
  }) async {
    return session.db.find<Note>(
      where: where?.call(Note.t),
      orderBy: orderBy?.call(Note.t),
      orderByList: orderByList?.call(Note.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Note?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NoteTable>? where,
    int? offset,
    _i1.OrderByBuilder<NoteTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NoteTable>? orderByList,
    _i1.Transaction? transaction,
    NoteInclude? include,
  }) async {
    return session.db.findFirstRow<Note>(
      where: where?.call(Note.t),
      orderBy: orderBy?.call(Note.t),
      orderByList: orderByList?.call(Note.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Note?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    NoteInclude? include,
  }) async {
    return session.db.findById<Note>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Note>> insert(
    _i1.Session session,
    List<Note> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Note>(
      rows,
      transaction: transaction,
    );
  }

  Future<Note> insertRow(
    _i1.Session session,
    Note row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Note>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Note>> update(
    _i1.Session session,
    List<Note> rows, {
    _i1.ColumnSelections<NoteTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Note>(
      rows,
      columns: columns?.call(Note.t),
      transaction: transaction,
    );
  }

  Future<Note> updateRow(
    _i1.Session session,
    Note row, {
    _i1.ColumnSelections<NoteTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Note>(
      row,
      columns: columns?.call(Note.t),
      transaction: transaction,
    );
  }

  Future<List<Note>> delete(
    _i1.Session session,
    List<Note> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Note>(
      rows,
      transaction: transaction,
    );
  }

  Future<Note> deleteRow(
    _i1.Session session,
    Note row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Note>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Note>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<NoteTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Note>(
      where: where(Note.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NoteTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Note>(
      where: where?.call(Note.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class NoteAttachRowRepository {
  const NoteAttachRowRepository._();

  Future<void> createdBy(
    _i1.Session session,
    Note note,
    _i2.UserInfo createdBy,
  ) async {
    if (note.id == null) {
      throw ArgumentError.notNull('note.id');
    }
    if (createdBy.id == null) {
      throw ArgumentError.notNull('createdBy.id');
    }

    var $note = note.copyWith(createdById: createdBy.id);
    await session.db.updateRow<Note>(
      $note,
      columns: [Note.t.createdById],
    );
  }
}
