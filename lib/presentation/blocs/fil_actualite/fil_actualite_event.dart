part of 'fil_actualite_bloc.dart';

@freezed
abstract class FilActualiteEvent with _$FilActualiteEvent {
  const factory FilActualiteEvent.fetchPosts() = FetchPostsEvent;
}
