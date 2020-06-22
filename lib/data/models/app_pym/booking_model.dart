import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
abstract class BookingModel with _$BookingModel {
  @HiveType(typeId: 9)
  const factory BookingModel({
    @HiveField(0) @required int id,
    @HiveField(1) @required int service_id,
    @HiveField(2) @required DateTime start_date,
    @HiveField(3) @required DateTime end_date,
    @HiveField(4) @required String title,
    @HiveField(5) @required bool superpose,
  }) = _BookingModel;

  factory BookingModel.fromJson(Map<String, dynamic> json) =>
      _$BookingModelFromJson(json);
}

extension BookingModelX on BookingModel {
  Booking toEntity() {
    return Booking(
      id: this.id,
      service_id: this.service_id,
      start_date: this.start_date.toLocal(),
      end_date: this.end_date.toLocal(),
      title: this.title,
      superpose: this.superpose,
    );
  }
}

TypeAdapter<BookingModel> BookingModelAdapter() => _$_BookingModelAdapter();
