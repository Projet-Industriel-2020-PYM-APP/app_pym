// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'stop_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StopTimeModelTearOff {
  const _$StopTimeModelTearOff();

  _StopTimeModel call(
      {String trip_id,
      String arrival_time,
      String departure_time,
      String stop_id,
      String stop_sequence}) {
    return _StopTimeModel(
      trip_id: trip_id,
      arrival_time: arrival_time,
      departure_time: departure_time,
      stop_id: stop_id,
      stop_sequence: stop_sequence,
    );
  }
}

// ignore: unused_element
const $StopTimeModel = _$StopTimeModelTearOff();

mixin _$StopTimeModel {
  String get trip_id;
  String get arrival_time;
  String get departure_time;
  String get stop_id;
  String get stop_sequence;

  $StopTimeModelCopyWith<StopTimeModel> get copyWith;
}

abstract class $StopTimeModelCopyWith<$Res> {
  factory $StopTimeModelCopyWith(
          StopTimeModel value, $Res Function(StopTimeModel) then) =
      _$StopTimeModelCopyWithImpl<$Res>;
  $Res call(
      {String trip_id,
      String arrival_time,
      String departure_time,
      String stop_id,
      String stop_sequence});
}

class _$StopTimeModelCopyWithImpl<$Res>
    implements $StopTimeModelCopyWith<$Res> {
  _$StopTimeModelCopyWithImpl(this._value, this._then);

  final StopTimeModel _value;
  // ignore: unused_field
  final $Res Function(StopTimeModel) _then;

  @override
  $Res call({
    Object trip_id = freezed,
    Object arrival_time = freezed,
    Object departure_time = freezed,
    Object stop_id = freezed,
    Object stop_sequence = freezed,
  }) {
    return _then(_value.copyWith(
      trip_id: trip_id == freezed ? _value.trip_id : trip_id as String,
      arrival_time: arrival_time == freezed
          ? _value.arrival_time
          : arrival_time as String,
      departure_time: departure_time == freezed
          ? _value.departure_time
          : departure_time as String,
      stop_id: stop_id == freezed ? _value.stop_id : stop_id as String,
      stop_sequence: stop_sequence == freezed
          ? _value.stop_sequence
          : stop_sequence as String,
    ));
  }
}

abstract class _$StopTimeModelCopyWith<$Res>
    implements $StopTimeModelCopyWith<$Res> {
  factory _$StopTimeModelCopyWith(
          _StopTimeModel value, $Res Function(_StopTimeModel) then) =
      __$StopTimeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String trip_id,
      String arrival_time,
      String departure_time,
      String stop_id,
      String stop_sequence});
}

class __$StopTimeModelCopyWithImpl<$Res>
    extends _$StopTimeModelCopyWithImpl<$Res>
    implements _$StopTimeModelCopyWith<$Res> {
  __$StopTimeModelCopyWithImpl(
      _StopTimeModel _value, $Res Function(_StopTimeModel) _then)
      : super(_value, (v) => _then(v as _StopTimeModel));

  @override
  _StopTimeModel get _value => super._value as _StopTimeModel;

  @override
  $Res call({
    Object trip_id = freezed,
    Object arrival_time = freezed,
    Object departure_time = freezed,
    Object stop_id = freezed,
    Object stop_sequence = freezed,
  }) {
    return _then(_StopTimeModel(
      trip_id: trip_id == freezed ? _value.trip_id : trip_id as String,
      arrival_time: arrival_time == freezed
          ? _value.arrival_time
          : arrival_time as String,
      departure_time: departure_time == freezed
          ? _value.departure_time
          : departure_time as String,
      stop_id: stop_id == freezed ? _value.stop_id : stop_id as String,
      stop_sequence: stop_sequence == freezed
          ? _value.stop_sequence
          : stop_sequence as String,
    ));
  }
}

class _$_StopTimeModel implements _StopTimeModel {
  const _$_StopTimeModel(
      {this.trip_id,
      this.arrival_time,
      this.departure_time,
      this.stop_id,
      this.stop_sequence});

  @override
  final String trip_id;
  @override
  final String arrival_time;
  @override
  final String departure_time;
  @override
  final String stop_id;
  @override
  final String stop_sequence;

  @override
  String toString() {
    return 'StopTimeModel(trip_id: $trip_id, arrival_time: $arrival_time, departure_time: $departure_time, stop_id: $stop_id, stop_sequence: $stop_sequence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StopTimeModel &&
            (identical(other.trip_id, trip_id) ||
                const DeepCollectionEquality()
                    .equals(other.trip_id, trip_id)) &&
            (identical(other.arrival_time, arrival_time) ||
                const DeepCollectionEquality()
                    .equals(other.arrival_time, arrival_time)) &&
            (identical(other.departure_time, departure_time) ||
                const DeepCollectionEquality()
                    .equals(other.departure_time, departure_time)) &&
            (identical(other.stop_id, stop_id) ||
                const DeepCollectionEquality()
                    .equals(other.stop_id, stop_id)) &&
            (identical(other.stop_sequence, stop_sequence) ||
                const DeepCollectionEquality()
                    .equals(other.stop_sequence, stop_sequence)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trip_id) ^
      const DeepCollectionEquality().hash(arrival_time) ^
      const DeepCollectionEquality().hash(departure_time) ^
      const DeepCollectionEquality().hash(stop_id) ^
      const DeepCollectionEquality().hash(stop_sequence);

  @override
  _$StopTimeModelCopyWith<_StopTimeModel> get copyWith =>
      __$StopTimeModelCopyWithImpl<_StopTimeModel>(this, _$identity);
}

abstract class _StopTimeModel implements StopTimeModel {
  const factory _StopTimeModel(
      {String trip_id,
      String arrival_time,
      String departure_time,
      String stop_id,
      String stop_sequence}) = _$_StopTimeModel;

  @override
  String get trip_id;
  @override
  String get arrival_time;
  @override
  String get departure_time;
  @override
  String get stop_id;
  @override
  String get stop_sequence;
  @override
  _$StopTimeModelCopyWith<_StopTimeModel> get copyWith;
}
