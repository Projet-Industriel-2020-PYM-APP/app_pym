import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'stop_details_event.dart';
part 'stop_details_state.dart';

@prod
@injectable
class StopDetailsBloc extends Bloc<StopDetailsEvent, StopDetailsState> {
  StopDetailsBloc();

  @override
  StopDetailsState get initialState => const StopDetailsInitial();

  @override
  Stream<StopDetailsState> mapEventToState(
    StopDetailsEvent event,
  ) async* {
    if (event is FetchStopDetailsEvent) {
      yield const StopDetailsLoading();
      try {
        yield const StopDetailsLoaded();
      } catch (e) {
        yield StopDetailsError(message: e.toString());
      }
    } else if (event is HideStopDetailsEvent) {
      yield const StopDetailsInitial();
    }
  }
}
