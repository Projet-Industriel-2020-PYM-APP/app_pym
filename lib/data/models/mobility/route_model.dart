import 'package:app_pym/data/models/mobility/calendar_model.dart';
import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/data/models/mobility/stop_time_model.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';
import 'package:app_pym/domain/entities/mobility/route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_model.freezed.dart';

@freezed
abstract class RouteModel with _$RouteModel {
  const factory RouteModel({
    String route_id,
    String route_short_name,
    String route_long_name,
  }) = _RouteModel;
}

extension RouteModelX on RouteModel {
  Route toEntity({
    @required List<TripModel> tripModels,
    @required List<CalendarModel> calendarModels,
    @required List<StopTimeModel> stopTimeModels,
    @required List<StopModel> stopModels,
  }) {
    final List<TripModel> filteredTripModels = tripModels
        .where((tripModel) =>
            tripModel.route_id ==
            this.route_id) // Ne prend que les trips de la route
        .where((tripModel) => calendarModels.map((e) => e.service_id).contains(
            tripModel.service_id)) // Ne prend que les trips avec un calendar
        .toList();
    return Route(
      route_id: this.route_id,
      route_long_name: this.route_long_name,
      route_short_name: this.route_short_name,
      trips: filteredTripModels
          .map((e) => e.toEntity(
                calendarModels: calendarModels,
                stopModels: stopModels,
                stopTimeModels: stopTimeModels,
              ))
          .toList(),
    );
  }
}
