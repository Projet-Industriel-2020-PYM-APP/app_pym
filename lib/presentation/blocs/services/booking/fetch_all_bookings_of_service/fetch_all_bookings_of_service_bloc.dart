import 'dart:async';

import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:app_pym/domain/usecases/services/booking/fetch_all_bookings_of_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fetch_all_bookings_of_service_bloc.freezed.dart';
part 'fetch_all_bookings_of_service_event.dart';
part 'fetch_all_bookings_of_service_state.dart';

@prod
@injectable
class FetchAllBookingsOfServiceBloc extends Bloc<FetchAllBookingsOfServiceEvent,
    FetchAllBookingsOfServiceState> {
  final FetchAllBookingsOfService fetchAllBookingsOfService;

  FetchAllBookingsOfServiceBloc(this.fetchAllBookingsOfService);

  @override
  FetchAllBookingsOfServiceState get initialState =>
      const FetchAllBookingsOfServiceState.initial();

  @override
  Stream<FetchAllBookingsOfServiceState> mapEventToState(
    FetchAllBookingsOfServiceEvent event,
  ) async* {
    yield* event.when(
      fetch: (service_id) async* {
        yield const FetchAllBookingsOfServiceState.loading();
        try {
          final data = await fetchAllBookingsOfService(service_id);
          add(FetchAllBookingsOfServiceEvent.refresh(data));
        } catch (e) {
          yield FetchAllBookingsOfServiceState.error(e.toString());
        }
      },
      refresh: (bookings) async* {
        yield FetchAllBookingsOfServiceState.loaded(bookings);
      },
    );
  }
}
