import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/data/models/mobility/calendar_model.dart';
import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/data/models/mobility/stop_time_model.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_model.freezed.dart';

@freezed
abstract class TripModel with _$TripModel {
  const factory TripModel({
    String service_id,
    String route_id,
    String trip_id,
    String trip_headsign,
    Sens direction_id,
  }) = _TripModel;
}

extension TripModelX on TripModel {
  Trip toEntity({
    @required List<CalendarModel> calendarModels,
    @required List<StopTimeModel> stopTimeModels,
    @required List<StopModel> stopModels,
  }) {
    return Trip(
      service_id: this.service_id,
      trip_id: this.trip_id,
      direction_id: this.direction_id,
      route_id: this.route_id,
      trip_headsign: this.trip_headsign,
      calendar: calendarModels
          .firstWhere((element) => element.service_id == this.service_id)
          .toEntity(),
      stop_time: stopTimeModels
          .where((stopTimeModel) => stopTimeModel.trip_id == this.trip_id)
          .map((e) => e.toEntity(stopModels: stopModels))
          .toList(),
    );
  }
}
