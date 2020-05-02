part of 'user_data_bloc.dart';

@freezed
abstract class UserDataState with _$UserDataState {
  const factory UserDataState.notUpdated() = NotUpdatedState;
  const factory UserDataState.loading() = LoadingState;
  const factory UserDataState.updated() = UpdatedState;
  const factory UserDataState.error(Exception e) = ErrorState;
}
