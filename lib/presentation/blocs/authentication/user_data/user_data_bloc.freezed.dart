// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserDataEventTearOff {
  const _$UserDataEventTearOff();

  _UpdatedUserData updated(AppUser user) {
    return _UpdatedUserData(
      user,
    );
  }
}

// ignore: unused_element
const $UserDataEvent = _$UserDataEventTearOff();

mixin _$UserDataEvent {
  AppUser get user;

  $UserDataEventCopyWith<UserDataEvent> get copyWith;
}

abstract class $UserDataEventCopyWith<$Res> {
  factory $UserDataEventCopyWith(
          UserDataEvent value, $Res Function(UserDataEvent) then) =
      _$UserDataEventCopyWithImpl<$Res>;
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

class _$UserDataEventCopyWithImpl<$Res>
    implements $UserDataEventCopyWith<$Res> {
  _$UserDataEventCopyWithImpl(this._value, this._then);

  final UserDataEvent _value;
  // ignore: unused_field
  final $Res Function(UserDataEvent) _then;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$UpdatedUserDataCopyWith<$Res>
    implements $UserDataEventCopyWith<$Res> {
  factory _$UpdatedUserDataCopyWith(
          _UpdatedUserData value, $Res Function(_UpdatedUserData) then) =
      __$UpdatedUserDataCopyWithImpl<$Res>;
  @override
  $Res call({AppUser user});

  @override
  $AppUserCopyWith<$Res> get user;
}

class __$UpdatedUserDataCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res>
    implements _$UpdatedUserDataCopyWith<$Res> {
  __$UpdatedUserDataCopyWithImpl(
      _UpdatedUserData _value, $Res Function(_UpdatedUserData) _then)
      : super(_value, (v) => _then(v as _UpdatedUserData));

  @override
  _UpdatedUserData get _value => super._value as _UpdatedUserData;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_UpdatedUserData(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

class _$_UpdatedUserData implements _UpdatedUserData {
  const _$_UpdatedUserData(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'UserDataEvent.updated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatedUserData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$UpdatedUserDataCopyWith<_UpdatedUserData> get copyWith =>
      __$UpdatedUserDataCopyWithImpl<_UpdatedUserData>(this, _$identity);
}

abstract class _UpdatedUserData implements UserDataEvent {
  const factory _UpdatedUserData(AppUser user) = _$_UpdatedUserData;

  @override
  AppUser get user;
  @override
  _$UpdatedUserDataCopyWith<_UpdatedUserData> get copyWith;
}

class _$UserDataStateTearOff {
  const _$UserDataStateTearOff();

  NotUpdatedState notUpdated() {
    return const NotUpdatedState();
  }

  LoadingState loading() {
    return const LoadingState();
  }

  UpdatedState updated() {
    return const UpdatedState();
  }

  ErrorState error(Exception e) {
    return ErrorState(
      e,
    );
  }
}

// ignore: unused_element
const $UserDataState = _$UserDataStateTearOff();

mixin _$UserDataState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notUpdated(),
    @required Result loading(),
    @required Result updated(),
    @required Result error(Exception e),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notUpdated(),
    Result loading(),
    Result updated(),
    Result error(Exception e),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notUpdated(NotUpdatedState value),
    @required Result loading(LoadingState value),
    @required Result updated(UpdatedState value),
    @required Result error(ErrorState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notUpdated(NotUpdatedState value),
    Result loading(LoadingState value),
    Result updated(UpdatedState value),
    Result error(ErrorState value),
    @required Result orElse(),
  });
}

abstract class $UserDataStateCopyWith<$Res> {
  factory $UserDataStateCopyWith(
          UserDataState value, $Res Function(UserDataState) then) =
      _$UserDataStateCopyWithImpl<$Res>;
}

class _$UserDataStateCopyWithImpl<$Res>
    implements $UserDataStateCopyWith<$Res> {
  _$UserDataStateCopyWithImpl(this._value, this._then);

  final UserDataState _value;
  // ignore: unused_field
  final $Res Function(UserDataState) _then;
}

abstract class $NotUpdatedStateCopyWith<$Res> {
  factory $NotUpdatedStateCopyWith(
          NotUpdatedState value, $Res Function(NotUpdatedState) then) =
      _$NotUpdatedStateCopyWithImpl<$Res>;
}

class _$NotUpdatedStateCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res>
    implements $NotUpdatedStateCopyWith<$Res> {
  _$NotUpdatedStateCopyWithImpl(
      NotUpdatedState _value, $Res Function(NotUpdatedState) _then)
      : super(_value, (v) => _then(v as NotUpdatedState));

  @override
  NotUpdatedState get _value => super._value as NotUpdatedState;
}

class _$NotUpdatedState implements NotUpdatedState {
  const _$NotUpdatedState();

  @override
  String toString() {
    return 'UserDataState.notUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotUpdatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notUpdated(),
    @required Result loading(),
    @required Result updated(),
    @required Result error(Exception e),
  }) {
    assert(notUpdated != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    return notUpdated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notUpdated(),
    Result loading(),
    Result updated(),
    Result error(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notUpdated != null) {
      return notUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notUpdated(NotUpdatedState value),
    @required Result loading(LoadingState value),
    @required Result updated(UpdatedState value),
    @required Result error(ErrorState value),
  }) {
    assert(notUpdated != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    return notUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notUpdated(NotUpdatedState value),
    Result loading(LoadingState value),
    Result updated(UpdatedState value),
    Result error(ErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notUpdated != null) {
      return notUpdated(this);
    }
    return orElse();
  }
}

abstract class NotUpdatedState implements UserDataState {
  const factory NotUpdatedState() = _$NotUpdatedState;
}

abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
}

class _$LoadingStateCopyWithImpl<$Res> extends _$UserDataStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;
}

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'UserDataState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notUpdated(),
    @required Result loading(),
    @required Result updated(),
    @required Result error(Exception e),
  }) {
    assert(notUpdated != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notUpdated(),
    Result loading(),
    Result updated(),
    Result error(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notUpdated(NotUpdatedState value),
    @required Result loading(LoadingState value),
    @required Result updated(UpdatedState value),
    @required Result error(ErrorState value),
  }) {
    assert(notUpdated != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notUpdated(NotUpdatedState value),
    Result loading(LoadingState value),
    Result updated(UpdatedState value),
    Result error(ErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements UserDataState {
  const factory LoadingState() = _$LoadingState;
}

abstract class $UpdatedStateCopyWith<$Res> {
  factory $UpdatedStateCopyWith(
          UpdatedState value, $Res Function(UpdatedState) then) =
      _$UpdatedStateCopyWithImpl<$Res>;
}

class _$UpdatedStateCopyWithImpl<$Res> extends _$UserDataStateCopyWithImpl<$Res>
    implements $UpdatedStateCopyWith<$Res> {
  _$UpdatedStateCopyWithImpl(
      UpdatedState _value, $Res Function(UpdatedState) _then)
      : super(_value, (v) => _then(v as UpdatedState));

  @override
  UpdatedState get _value => super._value as UpdatedState;
}

class _$UpdatedState implements UpdatedState {
  const _$UpdatedState();

  @override
  String toString() {
    return 'UserDataState.updated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notUpdated(),
    @required Result loading(),
    @required Result updated(),
    @required Result error(Exception e),
  }) {
    assert(notUpdated != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    return updated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notUpdated(),
    Result loading(),
    Result updated(),
    Result error(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notUpdated(NotUpdatedState value),
    @required Result loading(LoadingState value),
    @required Result updated(UpdatedState value),
    @required Result error(ErrorState value),
  }) {
    assert(notUpdated != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notUpdated(NotUpdatedState value),
    Result loading(LoadingState value),
    Result updated(UpdatedState value),
    Result error(ErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class UpdatedState implements UserDataState {
  const factory UpdatedState() = _$UpdatedState;
}

abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res>;
  $Res call({Exception e});
}

class _$ErrorStateCopyWithImpl<$Res> extends _$UserDataStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(ErrorState _value, $Res Function(ErrorState) _then)
      : super(_value, (v) => _then(v as ErrorState));

  @override
  ErrorState get _value => super._value as ErrorState;

  @override
  $Res call({
    Object e = freezed,
  }) {
    return _then(ErrorState(
      e == freezed ? _value.e : e as Exception,
    ));
  }
}

class _$ErrorState implements ErrorState {
  const _$ErrorState(this.e) : assert(e != null);

  @override
  final Exception e;

  @override
  String toString() {
    return 'UserDataState.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorState &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @override
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notUpdated(),
    @required Result loading(),
    @required Result updated(),
    @required Result error(Exception e),
  }) {
    assert(notUpdated != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    return error(e);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notUpdated(),
    Result loading(),
    Result updated(),
    Result error(Exception e),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notUpdated(NotUpdatedState value),
    @required Result loading(LoadingState value),
    @required Result updated(UpdatedState value),
    @required Result error(ErrorState value),
  }) {
    assert(notUpdated != null);
    assert(loading != null);
    assert(updated != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notUpdated(NotUpdatedState value),
    Result loading(LoadingState value),
    Result updated(UpdatedState value),
    Result error(ErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements UserDataState {
  const factory ErrorState(Exception e) = _$ErrorState;

  Exception get e;
  $ErrorStateCopyWith<ErrorState> get copyWith;
}
