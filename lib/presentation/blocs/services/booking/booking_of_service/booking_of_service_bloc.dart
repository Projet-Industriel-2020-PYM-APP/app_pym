import 'dart:async';

import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:app_pym/domain/usecases/services/booking/add_booking_to_service.dart';
import 'package:app_pym/domain/usecases/services/booking/booking_of_service_params.dart';
import 'package:app_pym/domain/usecases/services/booking/delete_booking_of_service.dart';
import 'package:app_pym/domain/usecases/services/booking/update_booking_of_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

part 'booking_of_service_bloc.freezed.dart';
part 'booking_of_service_event.dart';
part 'booking_of_service_state.dart';

@prod
@injectable
class BookingOfServiceBloc
    extends Bloc<BookingOfServiceEvent, BookingOfServiceState> {
  final AddBookingToService addBookingToService;
  final DeleteBookingOfService deleteBookingOfService;
  final UpdateBookingOfService updateBookingOfService;

  BookingOfServiceBloc(
    this.addBookingToService,
    this.deleteBookingOfService,
    this.updateBookingOfService,
  );

  @override
  BookingOfServiceState get initialState => BookingOfServiceState.empty();

  @override
  Stream<BookingOfServiceState> mapEventToState(
    BookingOfServiceEvent event,
  ) async* {
    yield* event.when(
      titleChanged: _mapTitleChangedToState,
      add: _mapAddToState,
      delete: _mapDeleteToState,
      update: _mapUpdateToState,
    );
  }

  @override
  Stream<BookingOfServiceState> transformEvents(
    Stream<BookingOfServiceEvent> events,
    Stream<BookingOfServiceState> Function(BookingOfServiceEvent event) next,
  ) {
    final nonDebounceStream = events.where((event) {
      return event is! TitleChanged;
    });
    final debounceStream = events.where((event) {
      return event is TitleChanged;
    }).debounceTime(const Duration(milliseconds: 100));
    return super
        .transformEvents(nonDebounceStream.mergeWith([debounceStream]), next);
  }

  Stream<BookingOfServiceState> _mapAddToState(
      String service_id, Booking booking) async* {
    yield BookingOfServiceState.loading();
    try {
      await addBookingToService(BookingOfServiceParams(service_id, booking));
      yield BookingOfServiceState.success();
    } on PlatformException catch (e) {
      yield BookingOfServiceState.failure(e.message);
    } catch (e) {
      yield BookingOfServiceState.failure(e.toString());
    }
  }

  Stream<BookingOfServiceState> _mapDeleteToState(
      String service_id, Booking booking) async* {
    yield BookingOfServiceState.loading();
    try {
      await deleteBookingOfService(BookingOfServiceParams(service_id, booking));
      yield BookingOfServiceState.success();
    } on PlatformException catch (e) {
      yield BookingOfServiceState.failure(e.message);
    } catch (e) {
      yield BookingOfServiceState.failure(e.toString());
    }
  }

  Stream<BookingOfServiceState> _mapTitleChangedToState(String title) async* {
    yield state.updateTitle(isTitleValid: title != null && title.isNotEmpty);
  }

  Stream<BookingOfServiceState> _mapUpdateToState(
      String service_id, Booking booking) async* {
    yield BookingOfServiceState.loading();
    try {
      await updateBookingOfService(BookingOfServiceParams(service_id, booking));
      yield BookingOfServiceState.success();
    } on PlatformException catch (e) {
      yield BookingOfServiceState.failure(e.message);
    } catch (e) {
      yield BookingOfServiceState.failure(e.toString());
    }
  }
}
