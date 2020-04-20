// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'booking_of_service_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BookingOfServiceParamsTearOff {
  const _$BookingOfServiceParamsTearOff();

  _BookingOfServiceParams call(String service_id, Booking booking) {
    return _BookingOfServiceParams(
      service_id,
      booking,
    );
  }
}

// ignore: unused_element
const $BookingOfServiceParams = _$BookingOfServiceParamsTearOff();

mixin _$BookingOfServiceParams {
  String get service_id;
  Booking get booking;

  $BookingOfServiceParamsCopyWith<BookingOfServiceParams> get copyWith;
}

abstract class $BookingOfServiceParamsCopyWith<$Res> {
  factory $BookingOfServiceParamsCopyWith(BookingOfServiceParams value,
          $Res Function(BookingOfServiceParams) then) =
      _$BookingOfServiceParamsCopyWithImpl<$Res>;
  $Res call({String service_id, Booking booking});

  $BookingCopyWith<$Res> get booking;
}

class _$BookingOfServiceParamsCopyWithImpl<$Res>
    implements $BookingOfServiceParamsCopyWith<$Res> {
  _$BookingOfServiceParamsCopyWithImpl(this._value, this._then);

  final BookingOfServiceParams _value;
  // ignore: unused_field
  final $Res Function(BookingOfServiceParams) _then;

  @override
  $Res call({
    Object service_id = freezed,
    Object booking = freezed,
  }) {
    return _then(_value.copyWith(
      service_id:
          service_id == freezed ? _value.service_id : service_id as String,
      booking: booking == freezed ? _value.booking : booking as Booking,
    ));
  }

  @override
  $BookingCopyWith<$Res> get booking {
    if (_value.booking == null) {
      return null;
    }
    return $BookingCopyWith<$Res>(_value.booking, (value) {
      return _then(_value.copyWith(booking: value));
    });
  }
}

abstract class _$BookingOfServiceParamsCopyWith<$Res>
    implements $BookingOfServiceParamsCopyWith<$Res> {
  factory _$BookingOfServiceParamsCopyWith(_BookingOfServiceParams value,
          $Res Function(_BookingOfServiceParams) then) =
      __$BookingOfServiceParamsCopyWithImpl<$Res>;
  @override
  $Res call({String service_id, Booking booking});

  @override
  $BookingCopyWith<$Res> get booking;
}

class __$BookingOfServiceParamsCopyWithImpl<$Res>
    extends _$BookingOfServiceParamsCopyWithImpl<$Res>
    implements _$BookingOfServiceParamsCopyWith<$Res> {
  __$BookingOfServiceParamsCopyWithImpl(_BookingOfServiceParams _value,
      $Res Function(_BookingOfServiceParams) _then)
      : super(_value, (v) => _then(v as _BookingOfServiceParams));

  @override
  _BookingOfServiceParams get _value => super._value as _BookingOfServiceParams;

  @override
  $Res call({
    Object service_id = freezed,
    Object booking = freezed,
  }) {
    return _then(_BookingOfServiceParams(
      service_id == freezed ? _value.service_id : service_id as String,
      booking == freezed ? _value.booking : booking as Booking,
    ));
  }
}

class _$_BookingOfServiceParams implements _BookingOfServiceParams {
  const _$_BookingOfServiceParams(this.service_id, this.booking)
      : assert(service_id != null),
        assert(booking != null);

  @override
  final String service_id;
  @override
  final Booking booking;

  @override
  String toString() {
    return 'BookingOfServiceParams(service_id: $service_id, booking: $booking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookingOfServiceParams &&
            (identical(other.service_id, service_id) ||
                const DeepCollectionEquality()
                    .equals(other.service_id, service_id)) &&
            (identical(other.booking, booking) ||
                const DeepCollectionEquality().equals(other.booking, booking)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(service_id) ^
      const DeepCollectionEquality().hash(booking);

  @override
  _$BookingOfServiceParamsCopyWith<_BookingOfServiceParams> get copyWith =>
      __$BookingOfServiceParamsCopyWithImpl<_BookingOfServiceParams>(
          this, _$identity);
}

abstract class _BookingOfServiceParams implements BookingOfServiceParams {
  const factory _BookingOfServiceParams(String service_id, Booking booking) =
      _$_BookingOfServiceParams;

  @override
  String get service_id;
  @override
  Booking get booking;
  @override
  _$BookingOfServiceParamsCopyWith<_BookingOfServiceParams> get copyWith;
}
