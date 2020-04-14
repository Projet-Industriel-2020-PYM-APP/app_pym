part of 'ar_view_bloc.dart';

@freezed
abstract class ArViewState with _$ArViewState {
  const factory ArViewState.initial() = ArViewInitial;
  const factory ArViewState.loaded() = ArViewLoaded;
  const factory ArViewState.loading() = ArViewLoading;
  const factory ArViewState.error(Exception error) = ArViewError;
}
