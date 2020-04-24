import 'package:app_pym/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_pym/presentation/blocs/services/booking/fetch_all_bookings_of_service/fetch_all_bookings_of_service_bloc.dart';

class FetchAllBookingsPage extends StatelessWidget {
  final Service service;

  const FetchAllBookingsPage(this.service, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(service.title)),
      body: buildBooked(context, service),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
    );
  }

  BlocProvider<FetchAllBookingsOfServiceBloc> buildBooked(
      BuildContext context, Service service) {
    return BlocProvider<FetchAllBookingsOfServiceBloc>(
      create: (_) {
        final FetchAllBookingsOfServiceBloc bloc =
            sl<FetchAllBookingsOfServiceBloc>();
        bloc.add(FetchAllBookingsOfServiceEvent.fetch(service.id));
        return bloc;
      },
      child: Center(
        child: BlocBuilder<FetchAllBookingsOfServiceBloc,
            FetchAllBookingsOfServiceState>(
          builder:
              (BuildContext context, FetchAllBookingsOfServiceState state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (List<Booking> bookings) =>
                  FetchAllBookingsScreen(bookings, service),
              error: (e) => Center(
                child: Text(e.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}

class FetchAllBookingsScreen extends StatelessWidget {
  final Service service;
  final List<Booking> bookings;

  const FetchAllBookingsScreen(this.bookings, this.service);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scrollbar(
          child: ListView.builder(
            padding: const EdgeInsets.all(4),
            itemCount: bookings.length,
            itemBuilder: (context, id) {
              return BookingCard(bookings[id]);
            },
          ),
        );
      },
    );
  }
}

class BookingCard extends StatelessWidget {
  final Booking booking;

  const BookingCard(this.booking);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            Text(
              booking.title,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .apply(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  booking.start_date.toString(),
                ),
                Text(
                  booking.end_date.toString(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
