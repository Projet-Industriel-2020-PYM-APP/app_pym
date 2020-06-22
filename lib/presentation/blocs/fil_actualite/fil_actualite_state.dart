part of 'fil_actualite_bloc.dart';

@freezed
abstract class FilActualiteState with _$FilActualiteState {
  const factory FilActualiteState.initial() = FilActualiteInitial;
  const factory FilActualiteState.loaded(List<Post> posts) = FilActualiteLoaded;
  const factory FilActualiteState.loading() = FilActualiteLoading;
  const factory FilActualiteState.error(Exception error) = FilActualiteError;
}
