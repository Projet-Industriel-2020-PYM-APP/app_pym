import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:app_pym/presentation/blocs/services/booking/fetch_all_bookings_of_service/fetch_all_bookings_of_service_bloc.dart';
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
        ? DateFormat.Hm('fr_FR').format(booking.end_date)
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
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .apply(color: Colors.white),
                  ),
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
