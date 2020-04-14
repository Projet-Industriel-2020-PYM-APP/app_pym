part of 'batiment_bloc.dart';

@freezed
abstract class BatimentState with _$BatimentState {
  const factory BatimentState.initial() = BatimentInitial;
  const factory BatimentState.loaded(Batiment batiment) = BatimentLoaded;
  const factory BatimentState.loading() = BatimentLoading;
  const factory BatimentState.error(Exception error) = BatimentError;
}
