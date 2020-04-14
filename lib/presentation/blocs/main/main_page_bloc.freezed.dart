// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'main_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MainPageEventTearOff {
  const _$MainPageEventTearOff();

  GoToPageEvent goTo(int index) {
    return GoToPageEvent(
      index,
    );
  }
}

// ignore: unused_element
const $MainPageEvent = _$MainPageEventTearOff();

mixin _$MainPageEvent {
  int get index;

  $MainPageEventCopyWith<MainPageEvent> get copyWith;
}

abstract class $MainPageEventCopyWith<$Res> {
  factory $MainPageEventCopyWith(
          MainPageEvent value, $Res Function(MainPageEvent) then) =
      _$MainPageEventCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$MainPageEventCopyWithImpl<$Res>
    implements $MainPageEventCopyWith<$Res> {
  _$MainPageEventCopyWithImpl(this._value, this._then);

  final MainPageEvent _value;
  // ignore: unused_field
  final $Res Function(MainPageEvent) _then;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

abstract class $GoToPageEventCopyWith<$Res>
    implements $MainPageEventCopyWith<$Res> {
  factory $GoToPageEventCopyWith(
          GoToPageEvent value, $Res Function(GoToPageEvent) then) =
      _$GoToPageEventCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

class _$GoToPageEventCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res>
    implements $GoToPageEventCopyWith<$Res> {
  _$GoToPageEventCopyWithImpl(
      GoToPageEvent _value, $Res Function(GoToPageEvent) _then)
      : super(_value, (v) => _then(v as GoToPageEvent));

  @override
  GoToPageEvent get _value => super._value as GoToPageEvent;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(GoToPageEvent(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$GoToPageEvent implements GoToPageEvent {
  const _$GoToPageEvent(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'MainPageEvent.goTo(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GoToPageEvent &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $GoToPageEventCopyWith<GoToPageEvent> get copyWith =>
      _$GoToPageEventCopyWithImpl<GoToPageEvent>(this, _$identity);
}

abstract class GoToPageEvent implements MainPageEvent {
  const factory GoToPageEvent(int index) = _$GoToPageEvent;

  @override
  int get index;
  @override
  $GoToPageEventCopyWith<GoToPageEvent> get copyWith;
}

class _$MainPageStateTearOff {
  const _$MainPageStateTearOff();

  _MainPageState call(int currentIndex) {
    return _MainPageState(
      currentIndex,
    );
  }
}

// ignore: unused_element
const $MainPageState = _$MainPageStateTearOff();

mixin _$MainPageState {
  int get currentIndex;

  $MainPageStateCopyWith<MainPageState> get copyWith;
}

abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

class _$MainPageStateCopyWithImpl<$Res>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  final MainPageState _value;
  // ignore: unused_field
  final $Res Function(MainPageState) _then;

  @override
  $Res call({
    Object currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

abstract class _$MainPageStateCopyWith<$Res>
    implements $MainPageStateCopyWith<$Res> {
  factory _$MainPageStateCopyWith(
          _MainPageState value, $Res Function(_MainPageState) then) =
      __$MainPageStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex});
}

class __$MainPageStateCopyWithImpl<$Res>
    extends _$MainPageStateCopyWithImpl<$Res>
    implements _$MainPageStateCopyWith<$Res> {
  __$MainPageStateCopyWithImpl(
      _MainPageState _value, $Res Function(_MainPageState) _then)
      : super(_value, (v) => _then(v as _MainPageState));

  @override
  _MainPageState get _value => super._value as _MainPageState;

  @override
  $Res call({
    Object currentIndex = freezed,
  }) {
    return _then(_MainPageState(
      currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

class _$_MainPageState implements _MainPageState {
  const _$_MainPageState(this.currentIndex) : assert(currentIndex != null);

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'MainPageState(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainPageState &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentIndex);

  @override
  _$MainPageStateCopyWith<_MainPageState> get copyWith =>
      __$MainPageStateCopyWithImpl<_MainPageState>(this, _$identity);
}

abstract class _MainPageState implements MainPageState {
  const factory _MainPageState(int currentIndex) = _$_MainPageState;

  @override
  int get currentIndex;
  @override
  _$MainPageStateCopyWith<_MainPageState> get copyWith;
}
