// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BookingTearOff {
  const _$BookingTearOff();

  _Booking call(
      {String id, DateTime start_date, DateTime end_date, String title}) {
    return _Booking(
      id: id,
      start_date: start_date,
      end_date: end_date,
      title: title,
    );
  }
}

// ignore: unused_element
const $Booking = _$BookingTearOff();

mixin _$Booking {
  String get id;
  DateTime get start_date;
  DateTime get end_date;
  String get title;

  $BookingCopyWith<Booking> get copyWith;
}

abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res>;
  $Res call({String id, DateTime start_date, DateTime end_date, String title});
}

class _$BookingCopyWithImpl<$Res> implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  final Booking _value;
  // ignore: unused_field
  final $Res Function(Booking) _then;

  @override
  $Res call({
    Object id = freezed,
    Object start_date = freezed,
    Object end_date = freezed,
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      start_date:
          start_date == freezed ? _value.start_date : start_date as DateTime,
      end_date: end_date == freezed ? _value.end_date : end_date as DateTime,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

abstract class _$BookingCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$BookingCopyWith(_Booking value, $Res Function(_Booking) then) =
      __$BookingCopyWithImpl<$Res>;
  @override
  $Res call({String id, DateTime start_date, DateTime end_date, String title});
}

class __$BookingCopyWithImpl<$Res> extends _$BookingCopyWithImpl<$Res>
    implements _$BookingCopyWith<$Res> {
  __$BookingCopyWithImpl(_Booking _value, $Res Function(_Booking) _then)
      : super(_value, (v) => _then(v as _Booking));

  @override
  _Booking get _value => super._value as _Booking;

  @override
  $Res call({
    Object id = freezed,
    Object start_date = freezed,
    Object end_date = freezed,
    Object title = freezed,
  }) {
    return _then(_Booking(
      id: id == freezed ? _value.id : id as String,
      start_date:
          start_date == freezed ? _value.start_date : start_date as DateTime,
      end_date: end_date == freezed ? _value.end_date : end_date as DateTime,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

class _$_Booking implements _Booking {
  const _$_Booking({this.id, this.start_date, this.end_date, this.title});

  @override
  final String id;
  @override
  final DateTime start_date;
  @override
  final DateTime end_date;
  @override
  final String title;

  @override
  String toString() {
    return 'Booking(id: $id, start_date: $start_date, end_date: $end_date, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Booking &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.start_date, start_date) ||
                const DeepCollectionEquality()
                    .equals(other.start_date, start_date)) &&
            (identical(other.end_date, end_date) ||
                const DeepCollectionEquality()
                    .equals(other.end_date, end_date)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(start_date) ^
      const DeepCollectionEquality().hash(end_date) ^
      const DeepCollectionEquality().hash(title);

  @override
  _$BookingCopyWith<_Booking> get copyWith =>
      __$BookingCopyWithImpl<_Booking>(this, _$identity);
}

abstract class _Booking implements Booking {
  const factory _Booking(
      {String id,
      DateTime start_date,
      DateTime end_date,
      String title}) = _$_Booking;

  @override
  String get id;
  @override
  DateTime get start_date;
  @override
  DateTime get end_date;
  @override
  String get title;
  @override
  _$BookingCopyWith<_Booking> get copyWith;
}
