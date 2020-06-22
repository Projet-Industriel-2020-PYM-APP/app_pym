import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/services/booking/fetch_all_bookings_of_service/fetch_all_bookings_of_service_bloc.dart';
import 'package:app_pym/presentation/widgets/services/add_bottom_sheet.dart';
import 'package:app_pym/presentation/widgets/services/booking_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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
                child: Wrap(
                  direction: Axis.vertical,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(e),
                    RaisedButton(
                      onPressed: () => context
                          .bloc<FetchAllBookingsOfServiceBloc>()
                          .add(
                              FetchAllBookingsOfServiceEvent.fetch(service.id)),
                      child: Text(
                        "Rafraîchir".toUpperCase(),
                      ),
                    ),
                  ],
                ),
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
