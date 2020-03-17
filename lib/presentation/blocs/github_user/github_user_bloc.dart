import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:app_pym/domain/entities/github/user.dart';
import 'package:app_pym/domain/usecases/github/get_user.dart';
import 'package:injectable/injectable.dart';

part 'github_user_event.dart';
part 'github_user_state.dart';

@prod
@injectable
class GithubUserBloc extends Bloc<GithubUserEvent, GithubUserState> {
  final GetGithubUser getGithubUser;

  GithubUserBloc({
    @required this.getGithubUser,
  }) : assert(getGithubUser != null);

  @override
  GithubUserState get initialState => GithubUserStateInitial();

  @override
  Stream<GithubUserState> mapEventToState(
    GithubUserEvent event,
  ) async* {
    if (event is GetUserEvent) {
      yield const GithubUserStateLoading();
      try {
        final user = await getGithubUser(event.username);
        yield GithubUserStateLoaded(user: user);
      } catch (e) {
        yield GithubUserStateError(message: e.toString());
      }
    }
  }
}
