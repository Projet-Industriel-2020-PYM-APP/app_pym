import 'package:cloud_firestore/cloud_firestore.dart';

class TimestampSerializer {
  static DateTime toDateTime(Timestamp timestamp) => timestamp.toDate();
  static Timestamp fromDateTime(DateTime date) => Timestamp.fromDate(date);
}
