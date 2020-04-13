part of 'stop_details_bloc.dart';

@immutable
abstract class StopDetailsState extends Equatable {
  const StopDetailsState();

  @override
  List<Object> get props => [];
}

class StopDetailsError extends StopDetailsState {
  final String message;

  const StopDetailsError({@required this.message});

  @override
  List<Object> get props => [message];
}

class StopDetailsInitial extends StopDetailsState {
  const StopDetailsInitial();
}

class StopDetailsLoaded extends StopDetailsState {
  const StopDetailsLoaded();

  @override
  List<Object> get props => [];
}

class StopDetailsLoading extends StopDetailsState {
  const StopDetailsLoading();
}
