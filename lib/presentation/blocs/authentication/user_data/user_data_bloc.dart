import 'dart:async';

import 'package:app_pym/domain/entities/authentication/app_user.dart';
import 'package:app_pym/domain/usecases/authentication/set_user_data.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_data_bloc.freezed.dart';
part 'user_data_event.dart';
part 'user_data_state.dart';

@prod
@injectable
class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  final SetUserData setUserData;

  UserDataBloc(this.setUserData);

  @override
  UserDataState get initialState => const UserDataState.notUpdated();

  @override
  Stream<UserDataState> mapEventToState(
    UserDataEvent event,
  ) async* {
    try {
      yield const UserDataState.loading();
      await setUserData(event.user);
      yield const UserDataState.updated();
    } on Exception catch (e) {
      yield UserDataState.error(e);
    }
  }
}
