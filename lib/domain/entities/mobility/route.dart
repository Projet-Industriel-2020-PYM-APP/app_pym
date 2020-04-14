import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route.freezed.dart';

@freezed
abstract class Route with _$Route {
  const factory Route({
    String route_id,
    String route_short_name,
    String route_long_name,
    List<Trip> trips,
  }) = _Route;
}
