// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'booking_of_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BookingOfServiceEventTearOff {
  const _$BookingOfServiceEventTearOff();

  TitleChanged titleChanged(String title) {
    return TitleChanged(
      title,
    );
  }

  BookingOfServiceAdd add(
      {@required String service_id,
      @required Booking booking,
      @required AppUser appUser}) {
    return BookingOfServiceAdd(
      service_id: service_id,
      booking: booking,
      appUser: appUser,
    );
  }

  BookingOfServiceDelete delete(
      {@required String service_id,
      @required Booking booking,
      @required AppUser appUser}) {
    return BookingOfServiceDelete(
      service_id: service_id,
      booking: booking,
      appUser: appUser,
    );
  }

  BookingOfServiceUpdate update(
      {@required String service_id,
      @required Booking booking,
      @required AppUser appUser}) {
    return BookingOfServiceUpdate(
      service_id: service_id,
      booking: booking,
      appUser: appUser,
    );
  }
}

// ignore: unused_element
const $BookingOfServiceEvent = _$BookingOfServiceEventTearOff();

mixin _$BookingOfServiceEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result add(String service_id, Booking booking, AppUser appUser),
    @required
        Result delete(String service_id, Booking booking, AppUser appUser),
    @required
        Result update(String service_id, Booking booking, AppUser appUser),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result add(String service_id, Booking booking, AppUser appUser),
    Result delete(String service_id, Booking booking, AppUser appUser),
    Result update(String service_id, Booking booking, AppUser appUser),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(TitleChanged value),
    @required Result add(BookingOfServiceAdd value),
    @required Result delete(BookingOfServiceDelete value),
    @required Result update(BookingOfServiceUpdate value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(TitleChanged value),
    Result add(BookingOfServiceAdd value),
    Result delete(BookingOfServiceDelete value),
    Result update(BookingOfServiceUpdate value),
    @required Result orElse(),
  });
}

abstract class $BookingOfServiceEventCopyWith<$Res> {
  factory $BookingOfServiceEventCopyWith(BookingOfServiceEvent value,
          $Res Function(BookingOfServiceEvent) then) =
      _$BookingOfServiceEventCopyWithImpl<$Res>;
}

class _$BookingOfServiceEventCopyWithImpl<$Res>
    implements $BookingOfServiceEventCopyWith<$Res> {
  _$BookingOfServiceEventCopyWithImpl(this._value, this._then);

  final BookingOfServiceEvent _value;
  // ignore: unused_field
  final $Res Function(BookingOfServiceEvent) _then;
}

abstract class $TitleChangedCopyWith<$Res> {
  factory $TitleChangedCopyWith(
          TitleChanged value, $Res Function(TitleChanged) then) =
      _$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

class _$TitleChangedCopyWithImpl<$Res>
    extends _$BookingOfServiceEventCopyWithImpl<$Res>
    implements $TitleChangedCopyWith<$Res> {
  _$TitleChangedCopyWithImpl(
      TitleChanged _value, $Res Function(TitleChanged) _then)
      : super(_value, (v) => _then(v as TitleChanged));

  @override
  TitleChanged get _value => super._value as TitleChanged;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(TitleChanged(
      title == freezed ? _value.title : title as String,
    ));
  }
}

class _$TitleChanged implements TitleChanged {
  const _$TitleChanged(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString() {
    return 'BookingOfServiceEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TitleChanged &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  $TitleChangedCopyWith<TitleChanged> get copyWith =>
      _$TitleChangedCopyWithImpl<TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result add(String service_id, Booking booking, AppUser appUser),
    @required
        Result delete(String service_id, Booking booking, AppUser appUser),
    @required
        Result update(String service_id, Booking booking, AppUser appUser),
  }) {
    assert(titleChanged != null);
    assert(add != null);
    assert(delete != null);
    assert(update != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result add(String service_id, Booking booking, AppUser appUser),
    Result delete(String service_id, Booking booking, AppUser appUser),
    Result update(String service_id, Booking booking, AppUser appUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(TitleChanged value),
    @required Result add(BookingOfServiceAdd value),
    @required Result delete(BookingOfServiceDelete value),
    @required Result update(BookingOfServiceUpdate value),
  }) {
    assert(titleChanged != null);
    assert(add != null);
    assert(delete != null);
    assert(update != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(TitleChanged value),
    Result add(BookingOfServiceAdd value),
    Result delete(BookingOfServiceDelete value),
    Result update(BookingOfServiceUpdate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TitleChanged implements BookingOfServiceEvent {
  const factory TitleChanged(String title) = _$TitleChanged;

  String get title;
  $TitleChangedCopyWith<TitleChanged> get copyWith;
}

abstract class $BookingOfServiceAddCopyWith<$Res> {
  factory $BookingOfServiceAddCopyWith(
          BookingOfServiceAdd value, $Res Function(BookingOfServiceAdd) then) =
      _$BookingOfServiceAddCopyWithImpl<$Res>;
  $Res call({String service_id, Booking booking, AppUser appUser});

  $BookingCopyWith<$Res> get booking;
  $AppUserCopyWith<$Res> get appUser;
}

class _$BookingOfServiceAddCopyWithImpl<$Res>
    extends _$BookingOfServiceEventCopyWithImpl<$Res>
    implements $BookingOfServiceAddCopyWith<$Res> {
  _$BookingOfServiceAddCopyWithImpl(
      BookingOfServiceAdd _value, $Res Function(BookingOfServiceAdd) _then)
      : super(_value, (v) => _then(v as BookingOfServiceAdd));

  @override
  BookingOfServiceAdd get _value => super._value as BookingOfServiceAdd;

  @override
  $Res call({
    Object service_id = freezed,
    Object booking = freezed,
    Object appUser = freezed,
  }) {
    return _then(BookingOfServiceAdd(
      service_id:
          service_id == freezed ? _value.service_id : service_id as String,
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

class _$BookingOfServiceAdd implements BookingOfServiceAdd {
  const _$BookingOfServiceAdd(
      {@required this.service_id,
      @required this.booking,
      @required this.appUser})
      : assert(service_id != null),
        assert(booking != null),
        assert(appUser != null);

  @override
  final String service_id;
  @override
  final Booking booking;
  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'BookingOfServiceEvent.add(service_id: $service_id, booking: $booking, appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookingOfServiceAdd &&
            (identical(other.service_id, service_id) ||
                const DeepCollectionEquality()
                    .equals(other.service_id, service_id)) &&
            (identical(other.booking, booking) ||
                const DeepCollectionEquality()
                    .equals(other.booking, booking)) &&
            (identical(other.appUser, appUser) ||
                const DeepCollectionEquality().equals(other.appUser, appUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(service_id) ^
      const DeepCollectionEquality().hash(booking) ^
      const DeepCollectionEquality().hash(appUser);

  @override
  $BookingOfServiceAddCopyWith<BookingOfServiceAdd> get copyWith =>
      _$BookingOfServiceAddCopyWithImpl<BookingOfServiceAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result add(String service_id, Booking booking, AppUser appUser),
    @required
        Result delete(String service_id, Booking booking, AppUser appUser),
    @required
        Result update(String service_id, Booking booking, AppUser appUser),
  }) {
    assert(titleChanged != null);
    assert(add != null);
    assert(delete != null);
    assert(update != null);
    return add(service_id, booking, appUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result add(String service_id, Booking booking, AppUser appUser),
    Result delete(String service_id, Booking booking, AppUser appUser),
    Result update(String service_id, Booking booking, AppUser appUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(service_id, booking, appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(TitleChanged value),
    @required Result add(BookingOfServiceAdd value),
    @required Result delete(BookingOfServiceDelete value),
    @required Result update(BookingOfServiceUpdate value),
  }) {
    assert(titleChanged != null);
    assert(add != null);
    assert(delete != null);
    assert(update != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(TitleChanged value),
    Result add(BookingOfServiceAdd value),
    Result delete(BookingOfServiceDelete value),
    Result update(BookingOfServiceUpdate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class BookingOfServiceAdd implements BookingOfServiceEvent {
  const factory BookingOfServiceAdd(
      {@required String service_id,
      @required Booking booking,
      @required AppUser appUser}) = _$BookingOfServiceAdd;

  String get service_id;
  Booking get booking;
  AppUser get appUser;
  $BookingOfServiceAddCopyWith<BookingOfServiceAdd> get copyWith;
}

abstract class $BookingOfServiceDeleteCopyWith<$Res> {
  factory $BookingOfServiceDeleteCopyWith(BookingOfServiceDelete value,
          $Res Function(BookingOfServiceDelete) then) =
      _$BookingOfServiceDeleteCopyWithImpl<$Res>;
  $Res call({String service_id, Booking booking, AppUser appUser});

  $BookingCopyWith<$Res> get booking;
  $AppUserCopyWith<$Res> get appUser;
}

class _$BookingOfServiceDeleteCopyWithImpl<$Res>
    extends _$BookingOfServiceEventCopyWithImpl<$Res>
    implements $BookingOfServiceDeleteCopyWith<$Res> {
  _$BookingOfServiceDeleteCopyWithImpl(BookingOfServiceDelete _value,
      $Res Function(BookingOfServiceDelete) _then)
      : super(_value, (v) => _then(v as BookingOfServiceDelete));

  @override
  BookingOfServiceDelete get _value => super._value as BookingOfServiceDelete;

  @override
  $Res call({
    Object service_id = freezed,
    Object booking = freezed,
    Object appUser = freezed,
  }) {
    return _then(BookingOfServiceDelete(
      service_id:
          service_id == freezed ? _value.service_id : service_id as String,
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

class _$BookingOfServiceDelete implements BookingOfServiceDelete {
  const _$BookingOfServiceDelete(
      {@required this.service_id,
      @required this.booking,
      @required this.appUser})
      : assert(service_id != null),
        assert(booking != null),
        assert(appUser != null);

  @override
  final String service_id;
  @override
  final Booking booking;
  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'BookingOfServiceEvent.delete(service_id: $service_id, booking: $booking, appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookingOfServiceDelete &&
            (identical(other.service_id, service_id) ||
                const DeepCollectionEquality()
                    .equals(other.service_id, service_id)) &&
            (identical(other.booking, booking) ||
                const DeepCollectionEquality()
                    .equals(other.booking, booking)) &&
            (identical(other.appUser, appUser) ||
                const DeepCollectionEquality().equals(other.appUser, appUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(service_id) ^
      const DeepCollectionEquality().hash(booking) ^
      const DeepCollectionEquality().hash(appUser);

  @override
  $BookingOfServiceDeleteCopyWith<BookingOfServiceDelete> get copyWith =>
      _$BookingOfServiceDeleteCopyWithImpl<BookingOfServiceDelete>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result add(String service_id, Booking booking, AppUser appUser),
    @required
        Result delete(String service_id, Booking booking, AppUser appUser),
    @required
        Result update(String service_id, Booking booking, AppUser appUser),
  }) {
    assert(titleChanged != null);
    assert(add != null);
    assert(delete != null);
    assert(update != null);
    return delete(service_id, booking, appUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result add(String service_id, Booking booking, AppUser appUser),
    Result delete(String service_id, Booking booking, AppUser appUser),
    Result update(String service_id, Booking booking, AppUser appUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(service_id, booking, appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(TitleChanged value),
    @required Result add(BookingOfServiceAdd value),
    @required Result delete(BookingOfServiceDelete value),
    @required Result update(BookingOfServiceUpdate value),
  }) {
    assert(titleChanged != null);
    assert(add != null);
    assert(delete != null);
    assert(update != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(TitleChanged value),
    Result add(BookingOfServiceAdd value),
    Result delete(BookingOfServiceDelete value),
    Result update(BookingOfServiceUpdate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class BookingOfServiceDelete implements BookingOfServiceEvent {
  const factory BookingOfServiceDelete(
      {@required String service_id,
      @required Booking booking,
      @required AppUser appUser}) = _$BookingOfServiceDelete;

  String get service_id;
  Booking get booking;
  AppUser get appUser;
  $BookingOfServiceDeleteCopyWith<BookingOfServiceDelete> get copyWith;
}

abstract class $BookingOfServiceUpdateCopyWith<$Res> {
  factory $BookingOfServiceUpdateCopyWith(BookingOfServiceUpdate value,
          $Res Function(BookingOfServiceUpdate) then) =
      _$BookingOfServiceUpdateCopyWithImpl<$Res>;
  $Res call({String service_id, Booking booking, AppUser appUser});

  $BookingCopyWith<$Res> get booking;
  $AppUserCopyWith<$Res> get appUser;
}

class _$BookingOfServiceUpdateCopyWithImpl<$Res>
    extends _$BookingOfServiceEventCopyWithImpl<$Res>
    implements $BookingOfServiceUpdateCopyWith<$Res> {
  _$BookingOfServiceUpdateCopyWithImpl(BookingOfServiceUpdate _value,
      $Res Function(BookingOfServiceUpdate) _then)
      : super(_value, (v) => _then(v as BookingOfServiceUpdate));

  @override
  BookingOfServiceUpdate get _value => super._value as BookingOfServiceUpdate;

  @override
  $Res call({
    Object service_id = freezed,
    Object booking = freezed,
    Object appUser = freezed,
  }) {
    return _then(BookingOfServiceUpdate(
      service_id:
          service_id == freezed ? _value.service_id : service_id as String,
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

class _$BookingOfServiceUpdate implements BookingOfServiceUpdate {
  const _$BookingOfServiceUpdate(
      {@required this.service_id,
      @required this.booking,
      @required this.appUser})
      : assert(service_id != null),
        assert(booking != null),
        assert(appUser != null);

  @override
  final String service_id;
  @override
  final Booking booking;
  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'BookingOfServiceEvent.update(service_id: $service_id, booking: $booking, appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookingOfServiceUpdate &&
            (identical(other.service_id, service_id) ||
                const DeepCollectionEquality()
                    .equals(other.service_id, service_id)) &&
            (identical(other.booking, booking) ||
                const DeepCollectionEquality()
                    .equals(other.booking, booking)) &&
            (identical(other.appUser, appUser) ||
                const DeepCollectionEquality().equals(other.appUser, appUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(service_id) ^
      const DeepCollectionEquality().hash(booking) ^
      const DeepCollectionEquality().hash(appUser);

  @override
  $BookingOfServiceUpdateCopyWith<BookingOfServiceUpdate> get copyWith =>
      _$BookingOfServiceUpdateCopyWithImpl<BookingOfServiceUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result add(String service_id, Booking booking, AppUser appUser),
    @required
        Result delete(String service_id, Booking booking, AppUser appUser),
    @required
        Result update(String service_id, Booking booking, AppUser appUser),
  }) {
    assert(titleChanged != null);
    assert(add != null);
    assert(delete != null);
    assert(update != null);
    return update(service_id, booking, appUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result add(String service_id, Booking booking, AppUser appUser),
    Result delete(String service_id, Booking booking, AppUser appUser),
    Result update(String service_id, Booking booking, AppUser appUser),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(service_id, booking, appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(TitleChanged value),
    @required Result add(BookingOfServiceAdd value),
    @required Result delete(BookingOfServiceDelete value),
    @required Result update(BookingOfServiceUpdate value),
  }) {
    assert(titleChanged != null);
    assert(add != null);
    assert(delete != null);
    assert(update != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(TitleChanged value),
    Result add(BookingOfServiceAdd value),
    Result delete(BookingOfServiceDelete value),
    Result update(BookingOfServiceUpdate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class BookingOfServiceUpdate implements BookingOfServiceEvent {
  const factory BookingOfServiceUpdate(
      {@required String service_id,
      @required Booking booking,
      @required AppUser appUser}) = _$BookingOfServiceUpdate;

  String get service_id;
  Booking get booking;
  AppUser get appUser;
  $BookingOfServiceUpdateCopyWith<BookingOfServiceUpdate> get copyWith;
}

class _$BookingOfServiceStateTearOff {
  const _$BookingOfServiceStateTearOff();

  _BookingOfServiceState call(
      {@required bool isTitleValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      Exception error}) {
    return _BookingOfServiceState(
      isTitleValid: isTitleValid,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      error: error,
    );
  }
}

// ignore: unused_element
const $BookingOfServiceState = _$BookingOfServiceStateTearOff();

mixin _$BookingOfServiceState {
  bool get isTitleValid;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  Exception get error;

  $BookingOfServiceStateCopyWith<BookingOfServiceState> get copyWith;
}

abstract class $BookingOfServiceStateCopyWith<$Res> {
  factory $BookingOfServiceStateCopyWith(BookingOfServiceState value,
          $Res Function(BookingOfServiceState) then) =
      _$BookingOfServiceStateCopyWithImpl<$Res>;
  $Res call(
      {bool isTitleValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      Exception error});
}

class _$BookingOfServiceStateCopyWithImpl<$Res>
    implements $BookingOfServiceStateCopyWith<$Res> {
  _$BookingOfServiceStateCopyWithImpl(this._value, this._then);

  final BookingOfServiceState _value;
  // ignore: unused_field
  final $Res Function(BookingOfServiceState) _then;

  @override
  $Res call({
    Object isTitleValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      isTitleValid:
          isTitleValid == freezed ? _value.isTitleValid : isTitleValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      error: error == freezed ? _value.error : error as Exception,
    ));
  }
}

abstract class _$BookingOfServiceStateCopyWith<$Res>
    implements $BookingOfServiceStateCopyWith<$Res> {
  factory _$BookingOfServiceStateCopyWith(_BookingOfServiceState value,
          $Res Function(_BookingOfServiceState) then) =
      __$BookingOfServiceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isTitleValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      Exception error});
}

class __$BookingOfServiceStateCopyWithImpl<$Res>
    extends _$BookingOfServiceStateCopyWithImpl<$Res>
    implements _$BookingOfServiceStateCopyWith<$Res> {
  __$BookingOfServiceStateCopyWithImpl(_BookingOfServiceState _value,
      $Res Function(_BookingOfServiceState) _then)
      : super(_value, (v) => _then(v as _BookingOfServiceState));

  @override
  _BookingOfServiceState get _value => super._value as _BookingOfServiceState;

  @override
  $Res call({
    Object isTitleValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object error = freezed,
  }) {
    return _then(_BookingOfServiceState(
      isTitleValid:
          isTitleValid == freezed ? _value.isTitleValid : isTitleValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      error: error == freezed ? _value.error : error as Exception,
    ));
  }
}

class _$_BookingOfServiceState implements _BookingOfServiceState {
  const _$_BookingOfServiceState(
      {@required this.isTitleValid,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      this.error})
      : assert(isTitleValid != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null);

  @override
  final bool isTitleValid;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;
  @override
  final Exception error;

  @override
  String toString() {
    return 'BookingOfServiceState(isTitleValid: $isTitleValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookingOfServiceState &&
            (identical(other.isTitleValid, isTitleValid) ||
                const DeepCollectionEquality()
                    .equals(other.isTitleValid, isTitleValid)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.isFailure, isFailure) ||
                const DeepCollectionEquality()
                    .equals(other.isFailure, isFailure)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isTitleValid) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(error);

  @override
  _$BookingOfServiceStateCopyWith<_BookingOfServiceState> get copyWith =>
      __$BookingOfServiceStateCopyWithImpl<_BookingOfServiceState>(
          this, _$identity);
}

abstract class _BookingOfServiceState implements BookingOfServiceState {
  const factory _BookingOfServiceState(
      {@required bool isTitleValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      Exception error}) = _$_BookingOfServiceState;

  @override
  bool get isTitleValid;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  Exception get error;
  @override
  _$BookingOfServiceStateCopyWith<_BookingOfServiceState> get copyWith;
}
