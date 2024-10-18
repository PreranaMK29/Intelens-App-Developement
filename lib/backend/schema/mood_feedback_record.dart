import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MoodFeedbackRecord extends FirestoreRecord {
  MoodFeedbackRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "happyCount" field.
  int? _happyCount;
  int get happyCount => _happyCount ?? 0;
  bool hasHappyCount() => _happyCount != null;

  // "averageCount" field.
  int? _averageCount;
  int get averageCount => _averageCount ?? 0;
  bool hasAverageCount() => _averageCount != null;

  // "sadCount" field.
  int? _sadCount;
  int get sadCount => _sadCount ?? 0;
  bool hasSadCount() => _sadCount != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _happyCount = castToType<int>(snapshotData['happyCount']);
    _averageCount = castToType<int>(snapshotData['averageCount']);
    _sadCount = castToType<int>(snapshotData['sadCount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MoodFeedback');

  static Stream<MoodFeedbackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MoodFeedbackRecord.fromSnapshot(s));

  static Future<MoodFeedbackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MoodFeedbackRecord.fromSnapshot(s));

  static MoodFeedbackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MoodFeedbackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MoodFeedbackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MoodFeedbackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MoodFeedbackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MoodFeedbackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMoodFeedbackRecordData({
  String? userID,
  DateTime? date,
  int? happyCount,
  int? averageCount,
  int? sadCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'date': date,
      'happyCount': happyCount,
      'averageCount': averageCount,
      'sadCount': sadCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class MoodFeedbackRecordDocumentEquality
    implements Equality<MoodFeedbackRecord> {
  const MoodFeedbackRecordDocumentEquality();

  @override
  bool equals(MoodFeedbackRecord? e1, MoodFeedbackRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.date == e2?.date &&
        e1?.happyCount == e2?.happyCount &&
        e1?.averageCount == e2?.averageCount &&
        e1?.sadCount == e2?.sadCount;
  }

  @override
  int hash(MoodFeedbackRecord? e) => const ListEquality()
      .hash([e?.userID, e?.date, e?.happyCount, e?.averageCount, e?.sadCount]);

  @override
  bool isValidKey(Object? o) => o is MoodFeedbackRecord;
}
