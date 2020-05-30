// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TripModelTearOff {
  const _$TripModelTearOff();

  _TripModel call(
      {String service_id,
      String route_id,
      String trip_id,
      String trip_headsign,
      Sens direction_id}) {
    return _TripModel(
      service_id: service_id,
      route_id: route_id,
      trip_id: trip_id,
      trip_headsign: trip_headsign,
      direction_id: direction_id,
    );
  }
}

// ignore: unused_element
const $TripModel = _$TripModelTearOff();

mixin _$TripModel {
  String get service_id;
  String get route_id;
  String get trip_id;
  String get trip_headsign;
  Sens get direction_id;

  $TripModelCopyWith<TripModel> get copyWith;
}

abstract class $TripModelCopyWith<$Res> {
  factory $TripModelCopyWith(TripModel value, $Res Function(TripModel) then) =
      _$TripModelCopyWithImpl<$Res>;
  $Res call(
      {String service_id,
      String route_id,
      String trip_id,
      String trip_headsign,
      Sens direction_id});
}

class _$TripModelCopyWithImpl<$Res> implements $TripModelCopyWith<$Res> {
  _$TripModelCopyWithImpl(this._value, this._then);

  final TripModel _value;
  // ignore: unused_field
  final $Res Function(TripModel) _then;

  @override
  $Res call({
    Object service_id = freezed,
    Object route_id = freezed,
    Object trip_id = freezed,
    Object trip_headsign = freezed,
    Object direction_id = freezed,
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
    ));
  }
}

abstract class _$TripModelCopyWith<$Res> implements $TripModelCopyWith<$Res> {
  factory _$TripModelCopyWith(
          _TripModel value, $Res Function(_TripModel) then) =
      __$TripModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String service_id,
      String route_id,
      String trip_id,
      String trip_headsign,
      Sens direction_id});
}

class __$TripModelCopyWithImpl<$Res> extends _$TripModelCopyWithImpl<$Res>
    implements _$TripModelCopyWith<$Res> {
  __$TripModelCopyWithImpl(_TripModel _value, $Res Function(_TripModel) _then)
      : super(_value, (v) => _then(v as _TripModel));

  @override
  _TripModel get _value => super._value as _TripModel;

  @override
  $Res call({
    Object service_id = freezed,
    Object route_id = freezed,
    Object trip_id = freezed,
    Object trip_headsign = freezed,
    Object direction_id = freezed,
  }) {
    return _then(_TripModel(
      service_id:
          service_id == freezed ? _value.service_id : service_id as String,
      route_id: route_id == freezed ? _value.route_id : route_id as String,
      trip_id: trip_id == freezed ? _value.trip_id : trip_id as String,
      trip_headsign: trip_headsign == freezed
          ? _value.trip_headsign
          : trip_headsign as String,
      direction_id:
          direction_id == freezed ? _value.direction_id : direction_id as Sens,
    ));
  }
}

class _$_TripModel implements _TripModel {
  const _$_TripModel(
      {this.service_id,
      this.route_id,
      this.trip_id,
      this.trip_headsign,
      this.direction_id});

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
  String toString() {
    return 'TripModel(service_id: $service_id, route_id: $route_id, trip_id: $trip_id, trip_headsign: $trip_headsign, direction_id: $direction_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TripModel &&
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
                    .equals(other.direction_id, direction_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(service_id) ^
      const DeepCollectionEquality().hash(route_id) ^
      const DeepCollectionEquality().hash(trip_id) ^
      const DeepCollectionEquality().hash(trip_headsign) ^
      const DeepCollectionEquality().hash(direction_id);

  @override
  _$TripModelCopyWith<_TripModel> get copyWith =>
      __$TripModelCopyWithImpl<_TripModel>(this, _$identity);
}

abstract class _TripModel implements TripModel {
  const factory _TripModel(
      {String service_id,
      String route_id,
      String trip_id,
      String trip_headsign,
      Sens direction_id}) = _$_TripModel;

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
  _$TripModelCopyWith<_TripModel> get copyWith;
}
