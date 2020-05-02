// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'contact_categorie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ContactCategorieModel _$ContactCategorieModelFromJson(
    Map<String, dynamic> json) {
  return _ContactCategorieModel.fromJson(json);
}

class _$ContactCategorieModelTearOff {
  const _$ContactCategorieModelTearOff();

  _ContactCategorieModel call(
      {@required @HiveField(0) int id,
      @required @nullable @HiveField(1) String title,
      @required @nullable @HiveField(2) String subtitle,
      @required @nullable @HiveField(3) String address,
      @required @nullable @HiveField(4) String img_url,
      @required @nullable @HiveField(5) List<ActionModel> actions,
      @required @nullable @HiveField(6) int contact_id}) {
    return _ContactCategorieModel(
      id: id,
      title: title,
      subtitle: subtitle,
      address: address,
      img_url: img_url,
      actions: actions,
      contact_id: contact_id,
    );
  }
}

// ignore: unused_element
const $ContactCategorieModel = _$ContactCategorieModelTearOff();

mixin _$ContactCategorieModel {
  @HiveField(0)
  int get id;
  @nullable
  @HiveField(1)
  String get title;
  @nullable
  @HiveField(2)
  String get subtitle;
  @nullable
  @HiveField(3)
  String get address;
  @nullable
  @HiveField(4)
  String get img_url;
  @nullable
  @HiveField(5)
  List<ActionModel> get actions;
  @nullable
  @HiveField(6)
  int get contact_id;

  Map<String, dynamic> toJson();
  $ContactCategorieModelCopyWith<ContactCategorieModel> get copyWith;
}

abstract class $ContactCategorieModelCopyWith<$Res> {
  factory $ContactCategorieModelCopyWith(ContactCategorieModel value,
          $Res Function(ContactCategorieModel) then) =
      _$ContactCategorieModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @nullable @HiveField(1) String title,
      @nullable @HiveField(2) String subtitle,
      @nullable @HiveField(3) String address,
      @nullable @HiveField(4) String img_url,
      @nullable @HiveField(5) List<ActionModel> actions,
      @nullable @HiveField(6) int contact_id});
}

class _$ContactCategorieModelCopyWithImpl<$Res>
    implements $ContactCategorieModelCopyWith<$Res> {
  _$ContactCategorieModelCopyWithImpl(this._value, this._then);

  final ContactCategorieModel _value;
  // ignore: unused_field
  final $Res Function(ContactCategorieModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object subtitle = freezed,
    Object address = freezed,
    Object img_url = freezed,
    Object actions = freezed,
    Object contact_id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      address: address == freezed ? _value.address : address as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      actions:
          actions == freezed ? _value.actions : actions as List<ActionModel>,
      contact_id: contact_id == freezed ? _value.contact_id : contact_id as int,
    ));
  }
}

abstract class _$ContactCategorieModelCopyWith<$Res>
    implements $ContactCategorieModelCopyWith<$Res> {
  factory _$ContactCategorieModelCopyWith(_ContactCategorieModel value,
          $Res Function(_ContactCategorieModel) then) =
      __$ContactCategorieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @nullable @HiveField(1) String title,
      @nullable @HiveField(2) String subtitle,
      @nullable @HiveField(3) String address,
      @nullable @HiveField(4) String img_url,
      @nullable @HiveField(5) List<ActionModel> actions,
      @nullable @HiveField(6) int contact_id});
}

class __$ContactCategorieModelCopyWithImpl<$Res>
    extends _$ContactCategorieModelCopyWithImpl<$Res>
    implements _$ContactCategorieModelCopyWith<$Res> {
  __$ContactCategorieModelCopyWithImpl(_ContactCategorieModel _value,
      $Res Function(_ContactCategorieModel) _then)
      : super(_value, (v) => _then(v as _ContactCategorieModel));

  @override
  _ContactCategorieModel get _value => super._value as _ContactCategorieModel;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object subtitle = freezed,
    Object address = freezed,
    Object img_url = freezed,
    Object actions = freezed,
    Object contact_id = freezed,
  }) {
    return _then(_ContactCategorieModel(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      address: address == freezed ? _value.address : address as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      actions:
          actions == freezed ? _value.actions : actions as List<ActionModel>,
      contact_id: contact_id == freezed ? _value.contact_id : contact_id as int,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 7)
class _$_ContactCategorieModel implements _ContactCategorieModel {
  const _$_ContactCategorieModel(
      {@required @HiveField(0) this.id,
      @required @nullable @HiveField(1) this.title,
      @required @nullable @HiveField(2) this.subtitle,
      @required @nullable @HiveField(3) this.address,
      @required @nullable @HiveField(4) this.img_url,
      @required @nullable @HiveField(5) this.actions,
      @required @nullable @HiveField(6) this.contact_id})
      : assert(id != null);

  factory _$_ContactCategorieModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ContactCategorieModelFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @nullable
  @HiveField(1)
  final String title;
  @override
  @nullable
  @HiveField(2)
  final String subtitle;
  @override
  @nullable
  @HiveField(3)
  final String address;
  @override
  @nullable
  @HiveField(4)
  final String img_url;
  @override
  @nullable
  @HiveField(5)
  final List<ActionModel> actions;
  @override
  @nullable
  @HiveField(6)
  final int contact_id;

  @override
  String toString() {
    return 'ContactCategorieModel(id: $id, title: $title, subtitle: $subtitle, address: $address, img_url: $img_url, actions: $actions, contact_id: $contact_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactCategorieModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.img_url, img_url) ||
                const DeepCollectionEquality()
                    .equals(other.img_url, img_url)) &&
            (identical(other.actions, actions) ||
                const DeepCollectionEquality()
                    .equals(other.actions, actions)) &&
            (identical(other.contact_id, contact_id) ||
                const DeepCollectionEquality()
                    .equals(other.contact_id, contact_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(img_url) ^
      const DeepCollectionEquality().hash(actions) ^
      const DeepCollectionEquality().hash(contact_id);

  @override
  _$ContactCategorieModelCopyWith<_ContactCategorieModel> get copyWith =>
      __$ContactCategorieModelCopyWithImpl<_ContactCategorieModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ContactCategorieModelToJson(this);
  }
}

abstract class _ContactCategorieModel implements ContactCategorieModel {
  const factory _ContactCategorieModel(
          {@required @HiveField(0) int id,
          @required @nullable @HiveField(1) String title,
          @required @nullable @HiveField(2) String subtitle,
          @required @nullable @HiveField(3) String address,
          @required @nullable @HiveField(4) String img_url,
          @required @nullable @HiveField(5) List<ActionModel> actions,
          @required @nullable @HiveField(6) int contact_id}) =
      _$_ContactCategorieModel;

  factory _ContactCategorieModel.fromJson(Map<String, dynamic> json) =
      _$_ContactCategorieModel.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @nullable
  @HiveField(1)
  String get title;
  @override
  @nullable
  @HiveField(2)
  String get subtitle;
  @override
  @nullable
  @HiveField(3)
  String get address;
  @override
  @nullable
  @HiveField(4)
  String get img_url;
  @override
  @nullable
  @HiveField(5)
  List<ActionModel> get actions;
  @override
  @nullable
  @HiveField(6)
  int get contact_id;
  @override
  _$ContactCategorieModelCopyWith<_ContactCategorieModel> get copyWith;
}
