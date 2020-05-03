part of 'user_data_bloc.dart';

@freezed
abstract class UserDataEvent with _$UserDataEvent {
  const factory UserDataEvent.updated(AppUser user) = _UpdatedUserData;
}
