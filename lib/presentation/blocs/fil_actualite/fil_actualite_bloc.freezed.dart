// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fil_actualite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FilActualiteEventTearOff {
  const _$FilActualiteEventTearOff();

  FetchPostsEvent fetchPosts() {
    return const FetchPostsEvent();
  }
}

// ignore: unused_element
const $FilActualiteEvent = _$FilActualiteEventTearOff();

mixin _$FilActualiteEvent {}

abstract class $FilActualiteEventCopyWith<$Res> {
  factory $FilActualiteEventCopyWith(
          FilActualiteEvent value, $Res Function(FilActualiteEvent) then) =
      _$FilActualiteEventCopyWithImpl<$Res>;
}

class _$FilActualiteEventCopyWithImpl<$Res>
    implements $FilActualiteEventCopyWith<$Res> {
  _$FilActualiteEventCopyWithImpl(this._value, this._then);

  final FilActualiteEvent _value;
  // ignore: unused_field
  final $Res Function(FilActualiteEvent) _then;
}

abstract class $FetchPostsEventCopyWith<$Res> {
  factory $FetchPostsEventCopyWith(
          FetchPostsEvent value, $Res Function(FetchPostsEvent) then) =
      _$FetchPostsEventCopyWithImpl<$Res>;
}

class _$FetchPostsEventCopyWithImpl<$Res>
    extends _$FilActualiteEventCopyWithImpl<$Res>
    implements $FetchPostsEventCopyWith<$Res> {
  _$FetchPostsEventCopyWithImpl(
      FetchPostsEvent _value, $Res Function(FetchPostsEvent) _then)
      : super(_value, (v) => _then(v as FetchPostsEvent));

  @override
  FetchPostsEvent get _value => super._value as FetchPostsEvent;
}

class _$FetchPostsEvent implements FetchPostsEvent {
  const _$FetchPostsEvent();

  @override
  String toString() {
    return 'FilActualiteEvent.fetchPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchPostsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class FetchPostsEvent implements FilActualiteEvent {
  const factory FetchPostsEvent() = _$FetchPostsEvent;
}

class _$FilActualiteStateTearOff {
  const _$FilActualiteStateTearOff();

  FilActualiteInitial initial() {
    return const FilActualiteInitial();
  }

  FilActualiteLoaded loaded(List<Post> posts) {
    return FilActualiteLoaded(
      posts,
    );
  }

  FilActualiteLoading loading() {
    return const FilActualiteLoading();
  }

  FilActualiteError error(Exception error) {
    return FilActualiteError(
      error,
    );
  }
}

// ignore: unused_element
const $FilActualiteState = _$FilActualiteStateTearOff();

mixin _$FilActualiteState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Post> posts),
    @required Result loading(),
    @required Result error(Exception error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Post> posts),
    Result loading(),
    Result error(Exception error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(FilActualiteInitial value),
    @required Result loaded(FilActualiteLoaded value),
    @required Result loading(FilActualiteLoading value),
    @required Result error(FilActualiteError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FilActualiteInitial value),
    Result loaded(FilActualiteLoaded value),
    Result loading(FilActualiteLoading value),
    Result error(FilActualiteError value),
    @required Result orElse(),
  });
}

abstract class $FilActualiteStateCopyWith<$Res> {
  factory $FilActualiteStateCopyWith(
          FilActualiteState value, $Res Function(FilActualiteState) then) =
      _$FilActualiteStateCopyWithImpl<$Res>;
}

class _$FilActualiteStateCopyWithImpl<$Res>
    implements $FilActualiteStateCopyWith<$Res> {
  _$FilActualiteStateCopyWithImpl(this._value, this._then);

  final FilActualiteState _value;
  // ignore: unused_field
  final $Res Function(FilActualiteState) _then;
}

abstract class $FilActualiteInitialCopyWith<$Res> {
  factory $FilActualiteInitialCopyWith(
          FilActualiteInitial value, $Res Function(FilActualiteInitial) then) =
      _$FilActualiteInitialCopyWithImpl<$Res>;
}

class _$FilActualiteInitialCopyWithImpl<$Res>
    extends _$FilActualiteStateCopyWithImpl<$Res>
    implements $FilActualiteInitialCopyWith<$Res> {
  _$FilActualiteInitialCopyWithImpl(
      FilActualiteInitial _value, $Res Function(FilActualiteInitial) _then)
      : super(_value, (v) => _then(v as FilActualiteInitial));

  @override
  FilActualiteInitial get _value => super._value as FilActualiteInitial;
}

class _$FilActualiteInitial implements FilActualiteInitial {
  const _$FilActualiteInitial();

  @override
  String toString() {
    return 'FilActualiteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FilActualiteInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Post> posts),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Post> posts),
    Result loading(),
    Result error(Exception error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(FilActualiteInitial value),
    @required Result loaded(FilActualiteLoaded value),
    @required Result loading(FilActualiteLoading value),
    @required Result error(FilActualiteError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FilActualiteInitial value),
    Result loaded(FilActualiteLoaded value),
    Result loading(FilActualiteLoading value),
    Result error(FilActualiteError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FilActualiteInitial implements FilActualiteState {
  const factory FilActualiteInitial() = _$FilActualiteInitial;
}

abstract class $FilActualiteLoadedCopyWith<$Res> {
  factory $FilActualiteLoadedCopyWith(
          FilActualiteLoaded value, $Res Function(FilActualiteLoaded) then) =
      _$FilActualiteLoadedCopyWithImpl<$Res>;
  $Res call({List<Post> posts});
}

class _$FilActualiteLoadedCopyWithImpl<$Res>
    extends _$FilActualiteStateCopyWithImpl<$Res>
    implements $FilActualiteLoadedCopyWith<$Res> {
  _$FilActualiteLoadedCopyWithImpl(
      FilActualiteLoaded _value, $Res Function(FilActualiteLoaded) _then)
      : super(_value, (v) => _then(v as FilActualiteLoaded));

  @override
  FilActualiteLoaded get _value => super._value as FilActualiteLoaded;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(FilActualiteLoaded(
      posts == freezed ? _value.posts : posts as List<Post>,
    ));
  }
}

class _$FilActualiteLoaded implements FilActualiteLoaded {
  const _$FilActualiteLoaded(this.posts) : assert(posts != null);

  @override
  final List<Post> posts;

  @override
  String toString() {
    return 'FilActualiteState.loaded(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FilActualiteLoaded &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @override
  $FilActualiteLoadedCopyWith<FilActualiteLoaded> get copyWith =>
      _$FilActualiteLoadedCopyWithImpl<FilActualiteLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Post> posts),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded(posts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Post> posts),
    Result loading(),
    Result error(Exception error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(FilActualiteInitial value),
    @required Result loaded(FilActualiteLoaded value),
    @required Result loading(FilActualiteLoading value),
    @required Result error(FilActualiteError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FilActualiteInitial value),
    Result loaded(FilActualiteLoaded value),
    Result loading(FilActualiteLoading value),
    Result error(FilActualiteError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FilActualiteLoaded implements FilActualiteState {
  const factory FilActualiteLoaded(List<Post> posts) = _$FilActualiteLoaded;

  List<Post> get posts;
  $FilActualiteLoadedCopyWith<FilActualiteLoaded> get copyWith;
}

abstract class $FilActualiteLoadingCopyWith<$Res> {
  factory $FilActualiteLoadingCopyWith(
          FilActualiteLoading value, $Res Function(FilActualiteLoading) then) =
      _$FilActualiteLoadingCopyWithImpl<$Res>;
}

class _$FilActualiteLoadingCopyWithImpl<$Res>
    extends _$FilActualiteStateCopyWithImpl<$Res>
    implements $FilActualiteLoadingCopyWith<$Res> {
  _$FilActualiteLoadingCopyWithImpl(
      FilActualiteLoading _value, $Res Function(FilActualiteLoading) _then)
      : super(_value, (v) => _then(v as FilActualiteLoading));

  @override
  FilActualiteLoading get _value => super._value as FilActualiteLoading;
}

class _$FilActualiteLoading implements FilActualiteLoading {
  const _$FilActualiteLoading();

  @override
  String toString() {
    return 'FilActualiteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FilActualiteLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Post> posts),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Post> posts),
    Result loading(),
    Result error(Exception error),
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
    @required Result initial(FilActualiteInitial value),
    @required Result loaded(FilActualiteLoaded value),
    @required Result loading(FilActualiteLoading value),
    @required Result error(FilActualiteError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FilActualiteInitial value),
    Result loaded(FilActualiteLoaded value),
    Result loading(FilActualiteLoading value),
    Result error(FilActualiteError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FilActualiteLoading implements FilActualiteState {
  const factory FilActualiteLoading() = _$FilActualiteLoading;
}

abstract class $FilActualiteErrorCopyWith<$Res> {
  factory $FilActualiteErrorCopyWith(
          FilActualiteError value, $Res Function(FilActualiteError) then) =
      _$FilActualiteErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

class _$FilActualiteErrorCopyWithImpl<$Res>
    extends _$FilActualiteStateCopyWithImpl<$Res>
    implements $FilActualiteErrorCopyWith<$Res> {
  _$FilActualiteErrorCopyWithImpl(
      FilActualiteError _value, $Res Function(FilActualiteError) _then)
      : super(_value, (v) => _then(v as FilActualiteError));

  @override
  FilActualiteError get _value => super._value as FilActualiteError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(FilActualiteError(
      error == freezed ? _value.error : error as Exception,
    ));
  }
}

class _$FilActualiteError implements FilActualiteError {
  const _$FilActualiteError(this.error) : assert(error != null);

  @override
  final Exception error;

  @override
  String toString() {
    return 'FilActualiteState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FilActualiteError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $FilActualiteErrorCopyWith<FilActualiteError> get copyWith =>
      _$FilActualiteErrorCopyWithImpl<FilActualiteError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Post> posts),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Post> posts),
    Result loading(),
    Result error(Exception error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(FilActualiteInitial value),
    @required Result loaded(FilActualiteLoaded value),
    @required Result loading(FilActualiteLoading value),
    @required Result error(FilActualiteError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FilActualiteInitial value),
    Result loaded(FilActualiteLoaded value),
    Result loading(FilActualiteLoading value),
    Result error(FilActualiteError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FilActualiteError implements FilActualiteState {
  const factory FilActualiteError(Exception error) = _$FilActualiteError;

  Exception get error;
  $FilActualiteErrorCopyWith<FilActualiteError> get copyWith;
}
