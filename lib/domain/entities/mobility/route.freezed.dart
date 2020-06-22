// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RouteTearOff {
  const _$RouteTearOff();

  _Route call(
      {String route_id,
      String route_short_name,
      String route_long_name,
      List<Trip> trips}) {
    return _Route(
      route_id: route_id,
      route_short_name: route_short_name,
      route_long_name: route_long_name,
      trips: trips,
    );
  }
}

// ignore: unused_element
const $Route = _$RouteTearOff();

mixin _$Route {
  String get route_id;
  String get route_short_name;
  String get route_long_name;
  List<Trip> get trips;

  $RouteCopyWith<Route> get copyWith;
}

abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res>;
  $Res call(
      {String route_id,
      String route_short_name,
      String route_long_name,
      List<Trip> trips});
}

class _$RouteCopyWithImpl<$Res> implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  final Route _value;
  // ignore: unused_field
  final $Res Function(Route) _then;

  @override
  $Res call({
    Object route_id = freezed,
    Object route_short_name = freezed,
    Object route_long_name = freezed,
    Object trips = freezed,
  }) {
    return _then(_value.copyWith(
      route_id: route_id == freezed ? _value.route_id : route_id as String,
      route_short_name: route_short_name == freezed
          ? _value.route_short_name
          : route_short_name as String,
      route_long_name: route_long_name == freezed
          ? _value.route_long_name
          : route_long_name as String,
      trips: trips == freezed ? _value.trips : trips as List<Trip>,
    ));
  }
}

abstract class _$RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$RouteCopyWith(_Route value, $Res Function(_Route) then) =
      __$RouteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String route_id,
      String route_short_name,
      String route_long_name,
      List<Trip> trips});
}

class __$RouteCopyWithImpl<$Res> extends _$RouteCopyWithImpl<$Res>
    implements _$RouteCopyWith<$Res> {
  __$RouteCopyWithImpl(_Route _value, $Res Function(_Route) _then)
      : super(_value, (v) => _then(v as _Route));

  @override
  _Route get _value => super._value as _Route;

  @override
  $Res call({
    Object route_id = freezed,
    Object route_short_name = freezed,
    Object route_long_name = freezed,
    Object trips = freezed,
  }) {
    return _then(_Route(
      route_id: route_id == freezed ? _value.route_id : route_id as String,
      route_short_name: route_short_name == freezed
          ? _value.route_short_name
          : route_short_name as String,
      route_long_name: route_long_name == freezed
          ? _value.route_long_name
          : route_long_name as String,
      trips: trips == freezed ? _value.trips : trips as List<Trip>,
    ));
  }
}

class _$_Route implements _Route {
  const _$_Route(
      {this.route_id, this.route_short_name, this.route_long_name, this.trips});

  @override
  final String route_id;
  @override
  final String route_short_name;
  @override
  final String route_long_name;
  @override
  final List<Trip> trips;

  @override
  String toString() {
    return 'Route(route_id: $route_id, route_short_name: $route_short_name, route_long_name: $route_long_name, trips: $trips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Route &&
            (identical(other.route_id, route_id) ||
                const DeepCollectionEquality()
                    .equals(other.route_id, route_id)) &&
            (identical(other.route_short_name, route_short_name) ||
                const DeepCollectionEquality()
                    .equals(other.route_short_name, route_short_name)) &&
            (identical(other.route_long_name, route_long_name) ||
                const DeepCollectionEquality()
                    .equals(other.route_long_name, route_long_name)) &&
            (identical(other.trips, trips) ||
                const DeepCollectionEquality().equals(other.trips, trips)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(route_id) ^
      const DeepCollectionEquality().hash(route_short_name) ^
      const DeepCollectionEquality().hash(route_long_name) ^
      const DeepCollectionEquality().hash(trips);

  @override
  _$RouteCopyWith<_Route> get copyWith =>
      __$RouteCopyWithImpl<_Route>(this, _$identity);
}

abstract class _Route implements Route {
  const factory _Route(
      {String route_id,
      String route_short_name,
      String route_long_name,
      List<Trip> trips}) = _$_Route;

  @override
  String get route_id;
  @override
  String get route_short_name;
  @override
  String get route_long_name;
  @override
  List<Trip> get trips;
  @override
  _$RouteCopyWith<_Route> get copyWith;
}
