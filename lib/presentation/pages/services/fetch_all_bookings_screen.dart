import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/services/booking/fetch_all_bookings_of_service/fetch_all_bookings_of_service_bloc.dart';
import 'package:app_pym/presentation/widgets/services/add_bottom_sheet.dart';
import 'package:app_pym/presentation/widgets/services/edit_delete_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class BookingCard extends StatelessWidget {
  final Booking booking;
  final DateTime date;

  const BookingCard(this.booking, this.date);

  @override
  Widget build(BuildContext context) {
    final shownStartDate = booking.start_date.day == this.date.day
        ? DateFormat.Hm('fr_FR').format(booking.start_date)
        : '00:00';
    final shownEndDate = booking.end_date.day == this.date.day
        ? DateFormat.Hm('fr_FR').format(booking.start_date)
        : '23:59';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Card(
        elevation: 4.0,
        color: Colors.blue,
        child: InkWell(
          onTap: () {
            _onButtonEditPressed(context, booking);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                text: "${booking.title}\n",
                children: [
                  TextSpan(
                      text: "${shownStartDate} - ${shownEndDate}",
                      style: Theme.of(context).textTheme.headline6),
                ],
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .apply(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onButtonEditPressed(BuildContext context, Booking booking) {
    showModalBottomSheet<bool>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(5.0),
          topEnd: Radius.circular(5.0),
        ),
      ),
      builder: (newContext) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: BookingEditDeleteBottomSheet(
            booking: booking,
          ),
        );
      },
    ).then((refresh) {
      refresh ??= false;
      if (refresh) {
        context
            .bloc<FetchAllBookingsOfServiceBloc>()
            .add(FetchAllBookingsOfServiceEvent.fetch(booking.service_id));
      }
    });
  }
}

class FetchAllBookingsPage extends StatelessWidget {
  final Service service;

  const FetchAllBookingsPage(this.service, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FetchAllBookingsOfServiceBloc>(
      create: (_) => sl<FetchAllBookingsOfServiceBloc>()
        ..add(FetchAllBookingsOfServiceEvent.fetch(service.id)),
      child: Scaffold(
        appBar: AppBar(title: Text(service.title)),
        body: buildBooked(context, service),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () {
              final state = context.bloc<FetchAllBookingsOfServiceBloc>().state;
              if (state is FetchAllBookingsOfServiceLoaded) {
                _onButtonAddPressed(context, state.date);
              }
            },
            backgroundColor: Theme.of(context).primaryColor,
            child: const Icon(Icons.add),
          );
        }),
      ),
    );
  }

  Widget buildBooked(BuildContext context, Service service) {
    return Center(
      child: BlocBuilder<FetchAllBookingsOfServiceBloc,
          FetchAllBookingsOfServiceState>(
        builder: (BuildContext context, FetchAllBookingsOfServiceState state) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (bookings, date) => FetchAllBookingsScreen(
                bookings,
                date,
                service,
                key: Key(date.toString()), // Allow animation
              ),
              error: (e) => Center(
                child: Text(e.toString()),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onButtonAddPressed(BuildContext context, DateTime hintDate) {
    showModalBottomSheet<bool>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(5.0),
          topEnd: Radius.circular(5.0),
        ),
      ),
      builder: (newContext) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: BookingAddBottomSheet(
            hintDate: hintDate,
            service: service,
          ),
        );
      },
    ).then((refresh) {
      refresh ??= false;
      if (refresh) {
        context
            .bloc<FetchAllBookingsOfServiceBloc>()
            .add(FetchAllBookingsOfServiceEvent.fetch(service.id));
      }
    });
  }
}

class FetchAllBookingsScreen extends StatelessWidget {
  final Service service;
  final DateTime date;
  final List<Booking> bookings;

  const FetchAllBookingsScreen(this.bookings, this.date, this.service,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Booking> filteredBookings = bookings.where((e) {
      // Add today booking or inside
      return e.start_date.day == date.day ||
          e.end_date.day == date.day ||
          (e.start_date.isBefore(date) && e.end_date.isAfter(date));
    }).toList()
      ..sort((a, b) => a.start_date.compareTo(b.start_date));

    return Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.access_time),
            ),
            FlatButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(2010),
                  lastDate: DateTime(2101),
                ).then((value) {
                  if (value != null) {
                    context.bloc<FetchAllBookingsOfServiceBloc>().add(
                          FetchAllBookingsOfServiceEvent.refresh(
                              bookings, value),
                        );
                  }
                });
              },
              child: Text(DateFormat.yMMMMd('fr_FR').format(date)),
            ),
          ],
        ),
        const Divider(),
        Expanded(
          child: Scrollbar(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: filteredBookings.length,
              itemBuilder: (context, id) {
                return BookingCard(filteredBookings[id], date);
              },
            ),
          ),
        ),
      ],
    );
  }
}
