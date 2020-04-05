part of 'batiment_bloc.dart';

abstract class BatimentState extends Equatable {
  const BatimentState();
}

class BatimentUnloaded extends BatimentState {
  const BatimentUnloaded();
  @override
  List<Object> get props => [];
}

class BatimentLoading extends BatimentState {
  const BatimentLoading();

  @override
  List<Object> get props => [];
}

class BatimentLoaded extends BatimentState {
  final Batiment batiment;

  const BatimentLoaded(this.batiment);

  @override
  List<Object> get props => [batiment];
}

class BatimentError extends BatimentState {
  final dynamic error;

  const BatimentError(this.error);
  @override
  List<Object> get props => [error];
}
