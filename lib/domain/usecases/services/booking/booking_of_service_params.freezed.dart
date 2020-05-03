// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'booking_of_service_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BookingOfServiceParamsTearOff {
  const _$BookingOfServiceParamsTearOff();

  _BookingOfServiceParams call(
      {@required @nullable Booking booking,
      @required @nullable AppUser appUser}) {
    return _BookingOfServiceParams(
      booking: booking,
      appUser: appUser,
    );
  }
}

// ignore: unused_element
const $BookingOfServiceParams = _$BookingOfServiceParamsTearOff();

mixin _$BookingOfServiceParams {
  @nullable
  Booking get booking;
  @nullable
  AppUser get appUser;

  $BookingOfServiceParamsCopyWith<BookingOfServiceParams> get copyWith;
}

abstract class $BookingOfServiceParamsCopyWith<$Res> {
  factory $BookingOfServiceParamsCopyWith(BookingOfServiceParams value,
          $Res Function(BookingOfServiceParams) then) =
      _$BookingOfServiceParamsCopyWithImpl<$Res>;
  $Res call({@nullable Booking booking, @nullable AppUser appUser});

  $BookingCopyWith<$Res> get booking;
  $AppUserCopyWith<$Res> get appUser;
}

class _$BookingOfServiceParamsCopyWithImpl<$Res>
    implements $BookingOfServiceParamsCopyWith<$Res> {
  _$BookingOfServiceParamsCopyWithImpl(this._value, this._then);

  final BookingOfServiceParams _value;
  // ignore: unused_field
  final $Res Function(BookingOfServiceParams) _then;

  @override
  $Res call({
    Object booking = freezed,
    Object appUser = freezed,
  }) {
    return _then(_value.copyWith(
      booking: booking == freezed ? _value.booking : booking as Booking,
      appUser: appUser == freezed ? _value.appUser : appUser as AppUser,
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

  @override
  $AppUserCopyWith<$Res> get appUser {
    if (_value.appUser == null) {
      return null;
    }
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value));
    });
  }
}

abstract class _$BookingOfServiceParamsCopyWith<$Res>
    implements $BookingOfServiceParamsCopyWith<$Res> {
  factory _$BookingOfServiceParamsCopyWith(_BookingOfServiceParams value,
          $Res Function(_BookingOfServiceParams) then) =
      __$BookingOfServiceParamsCopyWithImpl<$Res>;
  @override
  $Res call({@nullable Booking booking, @nullable AppUser appUser});

  @override
  $BookingCopyWith<$Res> get booking;
  @override
  $AppUserCopyWith<$Res> get appUser;
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
    Object booking = freezed,
    Object appUser = freezed,
  }) {
    return _then(_BookingOfServiceParams(
      booking: booking == freezed ? _value.booking : booking as Booking,
      appUser: appUser == freezed ? _value.appUser : appUser as AppUser,
    ));
  }
}

class _$_BookingOfServiceParams implements _BookingOfServiceParams {
  const _$_BookingOfServiceParams(
      {@required @nullable this.booking, @required @nullable this.appUser});

  @override
  @nullable
  final Booking booking;
  @override
  @nullable
  final AppUser appUser;

  @override
  String toString() {
    return 'BookingOfServiceParams(booking: $booking, appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookingOfServiceParams &&
            (identical(other.booking, booking) ||
                const DeepCollectionEquality()
                    .equals(other.booking, booking)) &&
            (identical(other.appUser, appUser) ||
                const DeepCollectionEquality().equals(other.appUser, appUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(booking) ^
      const DeepCollectionEquality().hash(appUser);

  @override
  _$BookingOfServiceParamsCopyWith<_BookingOfServiceParams> get copyWith =>
      __$BookingOfServiceParamsCopyWithImpl<_BookingOfServiceParams>(
          this, _$identity);
}

abstract class _BookingOfServiceParams implements BookingOfServiceParams {
  const factory _BookingOfServiceParams(
      {@required @nullable Booking booking,
      @required @nullable AppUser appUser}) = _$_BookingOfServiceParams;

  @override
  @nullable
  Booking get booking;
  @override
  @nullable
  AppUser get appUser;
  @override
  _$BookingOfServiceParamsCopyWith<_BookingOfServiceParams> get copyWith;
}
