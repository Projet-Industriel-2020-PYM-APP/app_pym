import 'package:app_pym/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_pym/presentation/blocs/services/booking/fetch_all_bookings_of_service/fetch_all_bookings_of_service_bloc.dart';
import 'package:app_pym/presentation/blocs/services/booking/booking_of_service/booking_of_service_bloc.dart';

class FetchAllBookingsPage extends StatelessWidget {
  final Service service;

  const FetchAllBookingsPage(this.service, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(service.title)),
      body: buildBooked(context, service),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onButtonPressed(context),
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

  void _onButtonPressed(BuildContext context) {
    showModalBottomSheet<Widget>(
      context: context,
      builder: (context) {
        String bookingTitle; //TODO: nom par défaut ?
        DateTime startDate;
        DateTime endDate;

        Booking booking;

        return Container(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: <Widget>[
              const Text('Titre :'),
              TextField(
                onSubmitted: (str) {
                  bookingTitle = str;
                },
              ), //TODO: à raffiner
              const Text('Début :'),
              Text(startDate == null ? '---' : startDate.toString()),
              Row(children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2038),
                    ).then((date) {
                      startDate = date;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.watch_later),
                  onPressed:
                      () {}, //TODO: ajouter le controle de l'heure à la classe Booking
                ),
              ]),
              const Text('Fin :'),
              Text(startDate == null ? '---' : endDate.toString()),
              Row(children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2038),
                    ).then((date) {
                      endDate = date;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.watch_later),
                  onPressed:
                      () {}, //TODO: ajouter le controle de l'heure à la classe Booking
                ),
              ]),
              RaisedButton(
                onPressed: () {
                  if (startDate == null || endDate == null) {
                    errorMessage(context);
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: const Text('Confirmer'),
              ),
            ],
          ),
        );
      },
    );
  }

  void errorMessage(BuildContext context) {
    showDialog<Widget>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Réservation invalide'),
          content: const Text('Date(s) manquante(s)'),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            )
          ],
        );
      },
      barrierDismissible: true,
    );
  }
}

class FetchAllBookingsScreen extends StatelessWidget {
  final Service service;
  final List<Booking> bookings;

  const FetchAllBookingsScreen(this.bookings, this.service);

  @override
  Widget build(BuildContext context) {
    //(techniquement fonctionnel) Tri des bookings pour n'afficher que les pertinents actuellement
    List<Booking> currentBookings;
    for (int i; i >= bookings.length; i++) {
      if (DateTime.now().isAfter(bookings[i].start_date) &&
          DateTime.now().isBefore(bookings[i].end_date)) {
        currentBookings.insert(-1, bookings[i]);
      }
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scrollbar(
          child: ListView.builder(
            padding: const EdgeInsets.all(4),
            itemCount: currentBookings.length,
            itemBuilder: (context, id) {
              return BookingCard(currentBookings[id]);
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
