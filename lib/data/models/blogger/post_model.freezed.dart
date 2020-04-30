// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

class _$PostModelTearOff {
  const _$PostModelTearOff();

  _PostModel call(
      {@HiveField(0) String id,
      @HiveField(1) DateTime published,
      @HiveField(2) DateTime updated,
      @HiveField(3) String url,
      @HiveField(4) String title,
      @HiveField(5) String content}) {
    return _PostModel(
      id: id,
      published: published,
      updated: updated,
      url: url,
      title: title,
      content: content,
    );
  }
}

// ignore: unused_element
const $PostModel = _$PostModelTearOff();

mixin _$PostModel {
  @HiveField(0)
  String get id;
  @HiveField(1)
  DateTime get published;
  @HiveField(2)
  DateTime get updated;
  @HiveField(3)
  String get url;
  @HiveField(4)
  String get title;
  @HiveField(5)
  String get content;

  Map<String, dynamic> toJson();
  $PostModelCopyWith<PostModel> get copyWith;
}

abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) DateTime published,
      @HiveField(2) DateTime updated,
      @HiveField(3) String url,
      @HiveField(4) String title,
      @HiveField(5) String content});
}

class _$PostModelCopyWithImpl<$Res> implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  final PostModel _value;
  // ignore: unused_field
  final $Res Function(PostModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object published = freezed,
    Object updated = freezed,
    Object url = freezed,
    Object title = freezed,
    Object content = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      published:
          published == freezed ? _value.published : published as DateTime,
      updated: updated == freezed ? _value.updated : updated as DateTime,
      url: url == freezed ? _value.url : url as String,
      title: title == freezed ? _value.title : title as String,
      content: content == freezed ? _value.content : content as String,
    ));
  }
}

abstract class _$PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$PostModelCopyWith(
          _PostModel value, $Res Function(_PostModel) then) =
      __$PostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) DateTime published,
      @HiveField(2) DateTime updated,
      @HiveField(3) String url,
      @HiveField(4) String title,
      @HiveField(5) String content});
}

class __$PostModelCopyWithImpl<$Res> extends _$PostModelCopyWithImpl<$Res>
    implements _$PostModelCopyWith<$Res> {
  __$PostModelCopyWithImpl(_PostModel _value, $Res Function(_PostModel) _then)
      : super(_value, (v) => _then(v as _PostModel));

  @override
  _PostModel get _value => super._value as _PostModel;

  @override
  $Res call({
    Object id = freezed,
    Object published = freezed,
    Object updated = freezed,
    Object url = freezed,
    Object title = freezed,
    Object content = freezed,
  }) {
    return _then(_PostModel(
      id: id == freezed ? _value.id : id as String,
      published:
          published == freezed ? _value.published : published as DateTime,
      updated: updated == freezed ? _value.updated : updated as DateTime,
      url: url == freezed ? _value.url : url as String,
      title: title == freezed ? _value.title : title as String,
      content: content == freezed ? _value.content : content as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 3)
class _$_PostModel implements _PostModel {
  const _$_PostModel(
      {@HiveField(0) this.id,
      @HiveField(1) this.published,
      @HiveField(2) this.updated,
      @HiveField(3) this.url,
      @HiveField(4) this.title,
      @HiveField(5) this.content});

  factory _$_PostModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PostModelFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final DateTime published;
  @override
  @HiveField(2)
  final DateTime updated;
  @override
  @HiveField(3)
  final String url;
  @override
  @HiveField(4)
  final String title;
  @override
  @HiveField(5)
  final String content;

  @override
  String toString() {
    return 'PostModel(id: $id, published: $published, updated: $updated, url: $url, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.published, published) ||
                const DeepCollectionEquality()
                    .equals(other.published, published)) &&
            (identical(other.updated, updated) ||
                const DeepCollectionEquality()
                    .equals(other.updated, updated)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(published) ^
      const DeepCollectionEquality().hash(updated) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content);

  @override
  _$PostModelCopyWith<_PostModel> get copyWith =>
      __$PostModelCopyWithImpl<_PostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostModelToJson(this);
  }
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {@HiveField(0) String id,
      @HiveField(1) DateTime published,
      @HiveField(2) DateTime updated,
      @HiveField(3) String url,
      @HiveField(4) String title,
      @HiveField(5) String content}) = _$_PostModel;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$_PostModel.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  DateTime get published;
  @override
  @HiveField(2)
  DateTime get updated;
  @override
  @HiveField(3)
  String get url;
  @override
  @HiveField(4)
  String get title;
  @override
  @HiveField(5)
  String get content;
  @override
  _$PostModelCopyWith<_PostModel> get copyWith;
}
