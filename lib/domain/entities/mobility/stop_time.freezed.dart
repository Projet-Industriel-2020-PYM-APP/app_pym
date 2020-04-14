// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'stop_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StopTimeTearOff {
  const _$StopTimeTearOff();

  _StopTime call(
      {String trip_id,
      String arrival_time,
      String departure_time,
      String stop_id,
      String stop_sequence,
      Stop stop}) {
    return _StopTime(
      trip_id: trip_id,
      arrival_time: arrival_time,
      departure_time: departure_time,
      stop_id: stop_id,
      stop_sequence: stop_sequence,
      stop: stop,
    );
  }
}

// ignore: unused_element
const $StopTime = _$StopTimeTearOff();

mixin _$StopTime {
  String get trip_id;
  String get arrival_time;
  String get departure_time;
  String get stop_id;
  String get stop_sequence;
  Stop get stop;

  $StopTimeCopyWith<StopTime> get copyWith;
}

abstract class $StopTimeCopyWith<$Res> {
  factory $StopTimeCopyWith(StopTime value, $Res Function(StopTime) then) =
      _$StopTimeCopyWithImpl<$Res>;
  $Res call(
      {String trip_id,
      String arrival_time,
      String departure_time,
      String stop_id,
      String stop_sequence,
      Stop stop});
}

class _$StopTimeCopyWithImpl<$Res> implements $StopTimeCopyWith<$Res> {
  _$StopTimeCopyWithImpl(this._value, this._then);

  final StopTime _value;
  // ignore: unused_field
  final $Res Function(StopTime) _then;

  @override
  $Res call({
    Object trip_id = freezed,
    Object arrival_time = freezed,
    Object departure_time = freezed,
    Object stop_id = freezed,
    Object stop_sequence = freezed,
    Object stop = freezed,
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
      stop: stop == freezed ? _value.stop : stop as Stop,
    ));
  }
}

abstract class _$StopTimeCopyWith<$Res> implements $StopTimeCopyWith<$Res> {
  factory _$StopTimeCopyWith(_StopTime value, $Res Function(_StopTime) then) =
      __$StopTimeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String trip_id,
      String arrival_time,
      String departure_time,
      String stop_id,
      String stop_sequence,
      Stop stop});
}

class __$StopTimeCopyWithImpl<$Res> extends _$StopTimeCopyWithImpl<$Res>
    implements _$StopTimeCopyWith<$Res> {
  __$StopTimeCopyWithImpl(_StopTime _value, $Res Function(_StopTime) _then)
      : super(_value, (v) => _then(v as _StopTime));

  @override
  _StopTime get _value => super._value as _StopTime;

  @override
  $Res call({
    Object trip_id = freezed,
    Object arrival_time = freezed,
    Object departure_time = freezed,
    Object stop_id = freezed,
    Object stop_sequence = freezed,
    Object stop = freezed,
  }) {
    return _then(_StopTime(
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
      stop: stop == freezed ? _value.stop : stop as Stop,
    ));
  }
}

class _$_StopTime implements _StopTime {
  const _$_StopTime(
      {this.trip_id,
      this.arrival_time,
      this.departure_time,
      this.stop_id,
      this.stop_sequence,
      this.stop});

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
  final Stop stop;

  @override
  String toString() {
    return 'StopTime(trip_id: $trip_id, arrival_time: $arrival_time, departure_time: $departure_time, stop_id: $stop_id, stop_sequence: $stop_sequence, stop: $stop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StopTime &&
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
                    .equals(other.stop_sequence, stop_sequence)) &&
            (identical(other.stop, stop) ||
                const DeepCollectionEquality().equals(other.stop, stop)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trip_id) ^
      const DeepCollectionEquality().hash(arrival_time) ^
      const DeepCollectionEquality().hash(departure_time) ^
      const DeepCollectionEquality().hash(stop_id) ^
      const DeepCollectionEquality().hash(stop_sequence) ^
      const DeepCollectionEquality().hash(stop);

  @override
  _$StopTimeCopyWith<_StopTime> get copyWith =>
      __$StopTimeCopyWithImpl<_StopTime>(this, _$identity);
}

abstract class _StopTime implements StopTime {
  const factory _StopTime(
      {String trip_id,
      String arrival_time,
      String departure_time,
      String stop_id,
      String stop_sequence,
      Stop stop}) = _$_StopTime;

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
  Stop get stop;
  @override
  _$StopTimeCopyWith<_StopTime> get copyWith;
}
