import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:app_pym/domain/entities/firebase_auth/app_user.dart';
import 'package:app_pym/domain/usecases/firebase_auth/set_user_data.dart';
import 'package:injectable/injectable.dart';

part 'user_data_event.dart';
part 'user_data_state.dart';

@prod
@injectable
class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  final SetUserData setUserData;

  UserDataBloc({this.setUserData});

  @override
  UserDataState get initialState => const NotUpdatedState();

  @override
  Stream<UserDataState> mapEventToState(
    UserDataEvent event,
  ) async* {
    if (event is UpdatedUserData) {
      try {
        yield const LoadingState();
        await setUserData(event.user);
        yield const UpdatedState();
      } catch (e) {
        yield const ErrorState();
      }
    }
  }
}
