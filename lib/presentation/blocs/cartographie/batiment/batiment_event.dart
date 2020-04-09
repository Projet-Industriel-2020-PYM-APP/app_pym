part of 'batiment_bloc.dart';

abstract class BatimentEvent extends Equatable {
  const BatimentEvent();
}

class GetBatimentDetailEvent extends BatimentEvent {
  final int id;

  const GetBatimentDetailEvent(this.id);

  @override
  List<Object> get props => [];
}
