// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TripTearOff {
  const _$TripTearOff();

  _Trip call(
      {String service_id,
      String route_id,
      String trip_id,
      String trip_headsign,
      Sens direction_id,
      Calendar calendar,
      List<StopTime> stop_time}) {
    return _Trip(
      service_id: service_id,
      route_id: route_id,
      trip_id: trip_id,
      trip_headsign: trip_headsign,
      direction_id: direction_id,
      calendar: calendar,
      stop_time: stop_time,
    );
  }
}

// ignore: unused_element
const $Trip = _$TripTearOff();

mixin _$Trip {
  String get service_id;
  String get route_id;
  String get trip_id;
  String get trip_headsign;
  Sens get direction_id;
  Calendar get calendar;
  List<StopTime> get stop_time;

  $TripCopyWith<Trip> get copyWith;
}

abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res>;
  $Res call(
      {String service_id,
      String route_id,
      String trip_id,
      String trip_headsign,
      Sens direction_id,
      Calendar calendar,
      List<StopTime> stop_time});

  $CalendarCopyWith<$Res> get calendar;
}

class _$TripCopyWithImpl<$Res> implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  final Trip _value;
  // ignore: unused_field
  final $Res Function(Trip) _then;

  @override
  $Res call({
    Object service_id = freezed,
    Object route_id = freezed,
    Object trip_id = freezed,
    Object trip_headsign = freezed,
    Object direction_id = freezed,
    Object calendar = freezed,
    Object stop_time = freezed,
  }) {
    return _then(_value.copyWith(
      service_id:
          service_id == freezed ? _value.service_id : service_id as String,
      route_id: route_id == freezed ? _value.route_id : route_id as String,
      trip_id: trip_id == freezed ? _value.trip_id : trip_id as String,
      trip_headsign: trip_headsign == freezed
          ? _value.trip_headsign
          : trip_headsign as String,
      direction_id:
          direction_id == freezed ? _value.direction_id : direction_id as Sens,
      calendar: calendar == freezed ? _value.calendar : calendar as Calendar,
      stop_time:
          stop_time == freezed ? _value.stop_time : stop_time as List<StopTime>,
    ));
  }

  @override
  $CalendarCopyWith<$Res> get calendar {
    if (_value.calendar == null) {
      return null;
    }
    return $CalendarCopyWith<$Res>(_value.calendar, (value) {
      return _then(_value.copyWith(calendar: value));
    });
  }
}

abstract class _$TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$TripCopyWith(_Trip value, $Res Function(_Trip) then) =
      __$TripCopyWithImpl<$Res>;
  @override
  $Res call(
      {String service_id,
      String route_id,
      String trip_id,
      String trip_headsign,
      Sens direction_id,
      Calendar calendar,
      List<StopTime> stop_time});

  @override
  $CalendarCopyWith<$Res> get calendar;
}

class __$TripCopyWithImpl<$Res> extends _$TripCopyWithImpl<$Res>
    implements _$TripCopyWith<$Res> {
  __$TripCopyWithImpl(_Trip _value, $Res Function(_Trip) _then)
      : super(_value, (v) => _then(v as _Trip));

  @override
  _Trip get _value => super._value as _Trip;

  @override
  $Res call({
    Object service_id = freezed,
    Object route_id = freezed,
    Object trip_id = freezed,
    Object trip_headsign = freezed,
    Object direction_id = freezed,
    Object calendar = freezed,
    Object stop_time = freezed,
  }) {
    return _then(_Trip(
      service_id:
          service_id == freezed ? _value.service_id : service_id as String,
      route_id: route_id == freezed ? _value.route_id : route_id as String,
      trip_id: trip_id == freezed ? _value.trip_id : trip_id as String,
      trip_headsign: trip_headsign == freezed
          ? _value.trip_headsign
          : trip_headsign as String,
      direction_id:
          direction_id == freezed ? _value.direction_id : direction_id as Sens,
      calendar: calendar == freezed ? _value.calendar : calendar as Calendar,
      stop_time:
          stop_time == freezed ? _value.stop_time : stop_time as List<StopTime>,
    ));
  }
}

class _$_Trip implements _Trip {
  const _$_Trip(
      {this.service_id,
      this.route_id,
      this.trip_id,
      this.trip_headsign,
      this.direction_id,
      this.calendar,
      this.stop_time});

  @override
  final String service_id;
  @override
  final String route_id;
  @override
  final String trip_id;
  @override
  final String trip_headsign;
  @override
  final Sens direction_id;
  @override
  final Calendar calendar;
  @override
  final List<StopTime> stop_time;

  @override
  String toString() {
    return 'Trip(service_id: $service_id, route_id: $route_id, trip_id: $trip_id, trip_headsign: $trip_headsign, direction_id: $direction_id, calendar: $calendar, stop_time: $stop_time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Trip &&
            (identical(other.service_id, service_id) ||
                const DeepCollectionEquality()
                    .equals(other.service_id, service_id)) &&
            (identical(other.route_id, route_id) ||
                const DeepCollectionEquality()
                    .equals(other.route_id, route_id)) &&
            (identical(other.trip_id, trip_id) ||
                const DeepCollectionEquality()
                    .equals(other.trip_id, trip_id)) &&
            (identical(other.trip_headsign, trip_headsign) ||
                const DeepCollectionEquality()
                    .equals(other.trip_headsign, trip_headsign)) &&
            (identical(other.direction_id, direction_id) ||
                const DeepCollectionEquality()
                    .equals(other.direction_id, direction_id)) &&
            (identical(other.calendar, calendar) ||
                const DeepCollectionEquality()
                    .equals(other.calendar, calendar)) &&
            (identical(other.stop_time, stop_time) ||
                const DeepCollectionEquality()
                    .equals(other.stop_time, stop_time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(service_id) ^
      const DeepCollectionEquality().hash(route_id) ^
      const DeepCollectionEquality().hash(trip_id) ^
      const DeepCollectionEquality().hash(trip_headsign) ^
      const DeepCollectionEquality().hash(direction_id) ^
      const DeepCollectionEquality().hash(calendar) ^
      const DeepCollectionEquality().hash(stop_time);

  @override
  _$TripCopyWith<_Trip> get copyWith =>
      __$TripCopyWithImpl<_Trip>(this, _$identity);
}

abstract class _Trip implements Trip {
  const factory _Trip(
      {String service_id,
      String route_id,
      String trip_id,
      String trip_headsign,
      Sens direction_id,
      Calendar calendar,
      List<StopTime> stop_time}) = _$_Trip;

  @override
  String get service_id;
  @override
  String get route_id;
  @override
  String get trip_id;
  @override
  String get trip_headsign;
  @override
  Sens get direction_id;
  @override
  Calendar get calendar;
  @override
  List<StopTime> get stop_time;
  @override
  _$TripCopyWith<_Trip> get copyWith;
}
