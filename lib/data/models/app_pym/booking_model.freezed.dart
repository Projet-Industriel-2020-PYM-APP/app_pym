// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BookingModelTearOff {
  const _$BookingModelTearOff();

  _BookingModel call(
      {String id, DateTime start_date, DateTime end_date, String title}) {
    return _BookingModel(
      id: id,
      start_date: start_date,
      end_date: end_date,
      title: title,
    );
  }
}

// ignore: unused_element
const $BookingModel = _$BookingModelTearOff();

mixin _$BookingModel {
  String get id;
  DateTime get start_date;
  DateTime get end_date;
  String get title;

  $BookingModelCopyWith<BookingModel> get copyWith;
}

abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res>;
  $Res call({String id, DateTime start_date, DateTime end_date, String title});
}

class _$BookingModelCopyWithImpl<$Res> implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

  final BookingModel _value;
  // ignore: unused_field
  final $Res Function(BookingModel) _then;

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

abstract class _$BookingModelCopyWith<$Res>
    implements $BookingModelCopyWith<$Res> {
  factory _$BookingModelCopyWith(
          _BookingModel value, $Res Function(_BookingModel) then) =
      __$BookingModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, DateTime start_date, DateTime end_date, String title});
}

class __$BookingModelCopyWithImpl<$Res> extends _$BookingModelCopyWithImpl<$Res>
    implements _$BookingModelCopyWith<$Res> {
  __$BookingModelCopyWithImpl(
      _BookingModel _value, $Res Function(_BookingModel) _then)
      : super(_value, (v) => _then(v as _BookingModel));

  @override
  _BookingModel get _value => super._value as _BookingModel;

  @override
  $Res call({
    Object id = freezed,
    Object start_date = freezed,
    Object end_date = freezed,
    Object title = freezed,
  }) {
    return _then(_BookingModel(
      id: id == freezed ? _value.id : id as String,
      start_date:
          start_date == freezed ? _value.start_date : start_date as DateTime,
      end_date: end_date == freezed ? _value.end_date : end_date as DateTime,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

class _$_BookingModel implements _BookingModel {
  const _$_BookingModel({this.id, this.start_date, this.end_date, this.title});

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
    return 'BookingModel(id: $id, start_date: $start_date, end_date: $end_date, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookingModel &&
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
  _$BookingModelCopyWith<_BookingModel> get copyWith =>
      __$BookingModelCopyWithImpl<_BookingModel>(this, _$identity);
}

abstract class _BookingModel implements BookingModel {
  const factory _BookingModel(
      {String id,
      DateTime start_date,
      DateTime end_date,
      String title}) = _$_BookingModel;

  @override
  String get id;
  @override
  DateTime get start_date;
  @override
  DateTime get end_date;
  @override
  String get title;
  @override
  _$BookingModelCopyWith<_BookingModel> get copyWith;
}
