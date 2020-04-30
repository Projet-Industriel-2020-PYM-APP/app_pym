// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CalendarTearOff {
  const _$CalendarTearOff();

  _Calendar call(
      {String service_id,
      List<bool> weekdays,
      String start_date,
      String end_date}) {
    return _Calendar(
      service_id: service_id,
      weekdays: weekdays,
      start_date: start_date,
      end_date: end_date,
    );
  }
}

// ignore: unused_element
const $Calendar = _$CalendarTearOff();

mixin _$Calendar {
  String get service_id;
  List<bool> get weekdays;
  String get start_date;
  String get end_date;

  $CalendarCopyWith<Calendar> get copyWith;
}

abstract class $CalendarCopyWith<$Res> {
  factory $CalendarCopyWith(Calendar value, $Res Function(Calendar) then) =
      _$CalendarCopyWithImpl<$Res>;
  $Res call(
      {String service_id,
      List<bool> weekdays,
      String start_date,
      String end_date});
}

class _$CalendarCopyWithImpl<$Res> implements $CalendarCopyWith<$Res> {
  _$CalendarCopyWithImpl(this._value, this._then);

  final Calendar _value;
  // ignore: unused_field
  final $Res Function(Calendar) _then;

  @override
  $Res call({
    Object service_id = freezed,
    Object weekdays = freezed,
    Object start_date = freezed,
    Object end_date = freezed,
  }) {
    return _then(_value.copyWith(
      service_id:
          service_id == freezed ? _value.service_id : service_id as String,
      weekdays: weekdays == freezed ? _value.weekdays : weekdays as List<bool>,
      start_date:
          start_date == freezed ? _value.start_date : start_date as String,
      end_date: end_date == freezed ? _value.end_date : end_date as String,
    ));
  }
}

abstract class _$CalendarCopyWith<$Res> implements $CalendarCopyWith<$Res> {
  factory _$CalendarCopyWith(_Calendar value, $Res Function(_Calendar) then) =
      __$CalendarCopyWithImpl<$Res>;
  @override
  $Res call(
      {String service_id,
      List<bool> weekdays,
      String start_date,
      String end_date});
}

class __$CalendarCopyWithImpl<$Res> extends _$CalendarCopyWithImpl<$Res>
    implements _$CalendarCopyWith<$Res> {
  __$CalendarCopyWithImpl(_Calendar _value, $Res Function(_Calendar) _then)
      : super(_value, (v) => _then(v as _Calendar));

  @override
  _Calendar get _value => super._value as _Calendar;

  @override
  $Res call({
    Object service_id = freezed,
    Object weekdays = freezed,
    Object start_date = freezed,
    Object end_date = freezed,
  }) {
    return _then(_Calendar(
      service_id:
          service_id == freezed ? _value.service_id : service_id as String,
      weekdays: weekdays == freezed ? _value.weekdays : weekdays as List<bool>,
      start_date:
          start_date == freezed ? _value.start_date : start_date as String,
      end_date: end_date == freezed ? _value.end_date : end_date as String,
    ));
  }
}

class _$_Calendar implements _Calendar {
  const _$_Calendar(
      {this.service_id, this.weekdays, this.start_date, this.end_date});

  @override
  final String service_id;
  @override
  final List<bool> weekdays;
  @override
  final String start_date;
  @override
  final String end_date;

  @override
  String toString() {
    return 'Calendar(service_id: $service_id, weekdays: $weekdays, start_date: $start_date, end_date: $end_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Calendar &&
            (identical(other.service_id, service_id) ||
                const DeepCollectionEquality()
                    .equals(other.service_id, service_id)) &&
            (identical(other.weekdays, weekdays) ||
                const DeepCollectionEquality()
                    .equals(other.weekdays, weekdays)) &&
            (identical(other.start_date, start_date) ||
                const DeepCollectionEquality()
                    .equals(other.start_date, start_date)) &&
            (identical(other.end_date, end_date) ||
                const DeepCollectionEquality()
                    .equals(other.end_date, end_date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(service_id) ^
      const DeepCollectionEquality().hash(weekdays) ^
      const DeepCollectionEquality().hash(start_date) ^
      const DeepCollectionEquality().hash(end_date);

  @override
  _$CalendarCopyWith<_Calendar> get copyWith =>
      __$CalendarCopyWithImpl<_Calendar>(this, _$identity);
}

abstract class _Calendar implements Calendar {
  const factory _Calendar(
      {String service_id,
      List<bool> weekdays,
      String start_date,
      String end_date}) = _$_Calendar;

  @override
  String get service_id;
  @override
  List<bool> get weekdays;
  @override
  String get start_date;
  @override
  String get end_date;
  @override
  _$CalendarCopyWith<_Calendar> get copyWith;
}
