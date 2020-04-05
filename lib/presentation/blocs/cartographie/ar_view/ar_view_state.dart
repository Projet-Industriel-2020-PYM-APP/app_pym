part of 'ar_view_bloc.dart';

abstract class ArViewState extends Equatable {
  const ArViewState();
}

class ArViewUnloaded extends ArViewState {
  const ArViewUnloaded();

  @override
  List<Object> get props => [];
}

class ArViewLoaded extends ArViewState {
  const ArViewLoaded();

  @override
  List<Object> get props => [];
}

class ArViewLoading extends ArViewState {
  const ArViewLoading();

  @override
  List<Object> get props => [];
}

class ArViewError extends ArViewState {
  final dynamic error;

  const ArViewError(this.error);

  @override
  List<Object> get props => [error];
}
