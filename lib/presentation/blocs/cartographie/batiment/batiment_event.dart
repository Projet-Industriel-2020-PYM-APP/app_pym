part of 'batiment_bloc.dart';

@freezed
abstract class BatimentEvent with _$BatimentEvent {
  const factory BatimentEvent.getBatimentDetail(int id) =
      GetBatimentDetailEvent;
}
