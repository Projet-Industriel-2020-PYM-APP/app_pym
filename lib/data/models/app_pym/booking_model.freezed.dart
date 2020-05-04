// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BookingModel _$BookingModelFromJson(Map<String, dynamic> json) {
  return _BookingModel.fromJson(json);
}

class _$BookingModelTearOff {
  const _$BookingModelTearOff();

  _BookingModel call(
      {@required @HiveField(0) int id,
      @required @HiveField(1) int service_id,
      @required @HiveField(2) DateTime start_date,
      @required @HiveField(3) DateTime end_date,
      @required @HiveField(4) String title}) {
    return _BookingModel(
      id: id,
      service_id: service_id,
      start_date: start_date,
      end_date: end_date,
      title: title,
    );
  }
}

// ignore: unused_element
const $BookingModel = _$BookingModelTearOff();

mixin _$BookingModel {
  @HiveField(0)
  int get id;
  @HiveField(1)
  int get service_id;
  @HiveField(2)
  DateTime get start_date;
  @HiveField(3)
  DateTime get end_date;
  @HiveField(4)
  String get title;

  Map<String, dynamic> toJson();
  $BookingModelCopyWith<BookingModel> get copyWith;
}

abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int service_id,
      @HiveField(2) DateTime start_date,
      @HiveField(3) DateTime end_date,
      @HiveField(4) String title});
}

class _$BookingModelCopyWithImpl<$Res> implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

  final BookingModel _value;
  // ignore: unused_field
  final $Res Function(BookingModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object service_id = freezed,
    Object start_date = freezed,
    Object end_date = freezed,
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      service_id: service_id == freezed ? _value.service_id : service_id as int,
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
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int service_id,
      @HiveField(2) DateTime start_date,
      @HiveField(3) DateTime end_date,
      @HiveField(4) String title});
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
    Object service_id = freezed,
    Object start_date = freezed,
    Object end_date = freezed,
    Object title = freezed,
  }) {
    return _then(_BookingModel(
      id: id == freezed ? _value.id : id as int,
      service_id: service_id == freezed ? _value.service_id : service_id as int,
      start_date:
          start_date == freezed ? _value.start_date : start_date as DateTime,
      end_date: end_date == freezed ? _value.end_date : end_date as DateTime,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

@JsonSerializable()
@HiveType(typeId: 9)
class _$_BookingModel implements _BookingModel {
  const _$_BookingModel(
      {@required @HiveField(0) this.id,
      @required @HiveField(1) this.service_id,
      @required @HiveField(2) this.start_date,
      @required @HiveField(3) this.end_date,
      @required @HiveField(4) this.title})
      : assert(id != null),
        assert(service_id != null),
        assert(start_date != null),
        assert(end_date != null),
        assert(title != null);

  factory _$_BookingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BookingModelFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final int service_id;
  @override
  @HiveField(2)
  final DateTime start_date;
  @override
  @HiveField(3)
  final DateTime end_date;
  @override
  @HiveField(4)
  final String title;

  @override
  String toString() {
    return 'BookingModel(id: $id, service_id: $service_id, start_date: $start_date, end_date: $end_date, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookingModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.service_id, service_id) ||
                const DeepCollectionEquality()
                    .equals(other.service_id, service_id)) &&
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
      const DeepCollectionEquality().hash(service_id) ^
      const DeepCollectionEquality().hash(start_date) ^
      const DeepCollectionEquality().hash(end_date) ^
      const DeepCollectionEquality().hash(title);

  @override
  _$BookingModelCopyWith<_BookingModel> get copyWith =>
      __$BookingModelCopyWithImpl<_BookingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookingModelToJson(this);
  }
}

abstract class _BookingModel implements BookingModel {
  const factory _BookingModel(
      {@required @HiveField(0) int id,
      @required @HiveField(1) int service_id,
      @required @HiveField(2) DateTime start_date,
      @required @HiveField(3) DateTime end_date,
      @required @HiveField(4) String title}) = _$_BookingModel;

  factory _BookingModel.fromJson(Map<String, dynamic> json) =
      _$_BookingModel.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  int get service_id;
  @override
  @HiveField(2)
  DateTime get start_date;
  @override
  @HiveField(3)
  DateTime get end_date;
  @override
  @HiveField(4)
  String get title;
  @override
  _$BookingModelCopyWith<_BookingModel> get copyWith;
}
