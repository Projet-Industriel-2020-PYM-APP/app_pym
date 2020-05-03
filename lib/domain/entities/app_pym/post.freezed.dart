// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {@required int id,
      @required @nullable DateTime published,
      @required @nullable DateTime updated,
      @required @nullable String url,
      @required @nullable String title,
      @required @nullable String content}) {
    return _Post(
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
const $Post = _$PostTearOff();

mixin _$Post {
  int get id;
  @nullable
  DateTime get published;
  @nullable
  DateTime get updated;
  @nullable
  String get url;
  @nullable
  String get title;
  @nullable
  String get content;

  $PostCopyWith<Post> get copyWith;
}

abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @nullable DateTime published,
      @nullable DateTime updated,
      @nullable String url,
      @nullable String title,
      @nullable String content});
}

class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

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
      id: id == freezed ? _value.id : id as int,
      published:
          published == freezed ? _value.published : published as DateTime,
      updated: updated == freezed ? _value.updated : updated as DateTime,
      url: url == freezed ? _value.url : url as String,
      title: title == freezed ? _value.title : title as String,
      content: content == freezed ? _value.content : content as String,
    ));
  }
}

abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @nullable DateTime published,
      @nullable DateTime updated,
      @nullable String url,
      @nullable String title,
      @nullable String content});
}

class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object id = freezed,
    Object published = freezed,
    Object updated = freezed,
    Object url = freezed,
    Object title = freezed,
    Object content = freezed,
  }) {
    return _then(_Post(
      id: id == freezed ? _value.id : id as int,
      published:
          published == freezed ? _value.published : published as DateTime,
      updated: updated == freezed ? _value.updated : updated as DateTime,
      url: url == freezed ? _value.url : url as String,
      title: title == freezed ? _value.title : title as String,
      content: content == freezed ? _value.content : content as String,
    ));
  }
}

class _$_Post implements _Post {
  const _$_Post(
      {@required this.id,
      @required @nullable this.published,
      @required @nullable this.updated,
      @required @nullable this.url,
      @required @nullable this.title,
      @required @nullable this.content})
      : assert(id != null);

  @override
  final int id;
  @override
  @nullable
  final DateTime published;
  @override
  @nullable
  final DateTime updated;
  @override
  @nullable
  final String url;
  @override
  @nullable
  final String title;
  @override
  @nullable
  final String content;

  @override
  String toString() {
    return 'Post(id: $id, published: $published, updated: $updated, url: $url, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Post &&
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
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);
}

abstract class _Post implements Post {
  const factory _Post(
      {@required int id,
      @required @nullable DateTime published,
      @required @nullable DateTime updated,
      @required @nullable String url,
      @required @nullable String title,
      @required @nullable String content}) = _$_Post;

  @override
  int get id;
  @override
  @nullable
  DateTime get published;
  @override
  @nullable
  DateTime get updated;
  @override
  @nullable
  String get url;
  @override
  @nullable
  String get title;
  @override
  @nullable
  String get content;
  @override
  _$PostCopyWith<_Post> get copyWith;
}
