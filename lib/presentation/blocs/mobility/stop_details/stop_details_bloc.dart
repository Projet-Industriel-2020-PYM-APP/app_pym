import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stop_details_bloc.freezed.dart';
part 'stop_details_event.dart';
part 'stop_details_state.dart';

@prod
@injectable
class StopDetailsBloc extends Bloc<StopDetailsEvent, StopDetailsState> {
  @override
  StopDetailsState get initialState => const StopDetailsState.initial();

  @override
  Stream<StopDetailsState> mapEventToState(
    StopDetailsEvent event,
  ) async* {
    yield* event.when(
      fetch: () async* {
        yield const StopDetailsState.loading();
        try {
          yield const StopDetailsState.loaded();
        } catch (e) {
          yield StopDetailsState.error(e.toString());
        }
      },
      hide: () async* {
        yield const StopDetailsState.initial();
      },
    );
  }
}
