import 'dart:async';

import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/post.dart';
import 'package:app_pym/domain/usecases/fil_actualite/get_posts.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fil_actualite_bloc.freezed.dart';
part 'fil_actualite_event.dart';
part 'fil_actualite_state.dart';

@prod
@injectable
class FilActualiteBloc extends Bloc<FilActualiteEvent, FilActualiteState> {
  final GetPosts getPosts;

  FilActualiteBloc(this.getPosts);

  @override
  FilActualiteState get initialState => const FilActualiteState.initial();

  @override
  Stream<FilActualiteState> mapEventToState(
    FilActualiteEvent event,
  ) async* {
    try {
      yield const FilActualiteState.loading();
      final posts = await getPosts(const NoParams());
      yield FilActualiteState.loaded(posts);
    } on Exception catch (e) {
      yield FilActualiteState.error(e);
    }
  }
}
