import 'package:app_pym/core/utils/firestore_utils.dart';
import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
abstract class BookingModel with _$BookingModel {
  const factory BookingModel({
    String id,
    DateTime start_date,
    DateTime end_date,
    String title,
  }) = _BookingModel;

  factory BookingModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data;
    return BookingModel(
      id: doc.documentID,
      start_date:
          TimestampSerializer.toDateTime(data['start_date'] as Timestamp),
      end_date: TimestampSerializer.toDateTime(data['end_date'] as Timestamp),
      title: data['title'] as String,
    );
  }
}

extension BookingModelX on BookingModel {
  Booking toEntity() {
    return Booking(
      id: id,
      start_date: this.start_date,
      end_date: this.end_date,
      title: this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': this.id,
      'start_date': Timestamp.fromDate(this.start_date),
      'end_date': Timestamp.fromDate(this.end_date),
      'title': this.title,
    };
  }
}
