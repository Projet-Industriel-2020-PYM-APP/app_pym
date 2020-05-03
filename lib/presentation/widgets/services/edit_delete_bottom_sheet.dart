import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/authentication/authentication/authentication_bloc.dart';
import 'package:app_pym/presentation/blocs/services/booking/booking_of_service/booking_of_service_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class BookingEditDeleteBottomSheet extends StatefulWidget {
  final Booking booking;

  const BookingEditDeleteBottomSheet({
    @required this.booking,
    Key key,
  }) : super(key: key);

  @override
  BookingEditDeleteBottomSheetState createState() =>
      BookingEditDeleteBottomSheetState();
}

class BookingEditDeleteBottomSheetState
    extends State<BookingEditDeleteBottomSheet> {
  TextEditingController _titleController;
  ValueNotifier<DateTime> _startDate;
  ValueNotifier<TimeOfDay> _startHour;
  ValueNotifier<DateTime> _endDate;
  ValueNotifier<TimeOfDay> _endHour;
  BookingOfServiceBloc _bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Titre',
                  ),
                  style: Theme.of(context).textTheme.headline6,
                  validator: (_) {
                    return !_bloc.state.isTitleValid
                        ? 'Ne doit pas être vide'
                        : null;
                  },
                ),
              ),
              OutlineButton(
                color: Colors.red,
                onPressed: () {
                  final state = context.bloc<AuthenticationBloc>().state;
                  if (state is Authenticated) {
                    _bloc.add(
                      BookingOfServiceEvent.delete(
                        booking: widget.booking,
                        appUser: state.user,
                      ),
                    );
                    Navigator.pop<bool>(context, true);
                  } else {
                    Scaffold.of(context).showSnackBar(const SnackBar(
                      content: Text("Nécéssite d'être connecté"),
                    ));
                  }
                },
                child: const Text('SUPPRIMER'),
              ),
              RaisedButton(
                onPressed: () {
                  final state = context.bloc<AuthenticationBloc>().state;
                  if (state is Authenticated) {
                    if (_bloc.state.isTitleValid) {
                      final start_date = DateTime(
                        _startDate.value.year,
                        _startDate.value.month,
                        _startDate.value.day,
                        _startHour.value.hour,
                        _startHour.value.minute,
                      );

                      final end_time = DateTime(
                        _endDate.value.year,
                        _endDate.value.month,
                        _endDate.value.day,
                        _endHour.value.hour,
                        _endHour.value.minute,
                      );
                      _bloc.add(
                        BookingOfServiceEvent.update(
                          booking: Booking(
                            id: widget.booking.id,
                            title: _titleController.text,
                            start_date: start_date,
                            end_date: end_time,
                            service_id: widget.booking.service_id,
                          ),
                          appUser: state.user,
                        ),
                      );
                      Navigator.pop<bool>(context, true);
                    } else {
                      Scaffold.of(context).showSnackBar(const SnackBar(
                        content: Text("Veuillez ajouter un titre"),
                      ));
                    }
                  } else {
                    Scaffold.of(context).showSnackBar(const SnackBar(
                      content: Text("Nécéssite d'être connecté"),
                    ));
                  }
                },
                child: const Text('MODIFIER'),
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              const Icon(Icons.access_time),
              ValueListenableBuilder<DateTime>(
                valueListenable: _startDate,
                builder: (BuildContext context, DateTime value, Widget _) {
                  return FlatButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: _startDate.value,
                        firstDate: DateTime(2010),
                        lastDate: _endDate.value,
                      ).then((date) {
                        if (date != null) {
                          _startDate.value = date;
                        }
                      });
                    },
                    child: Text(DateFormat.yMMMd('fr_FR').format(value)),
                  );
                },
              ),
              ValueListenableBuilder<TimeOfDay>(
                valueListenable: _startHour,
                builder: (BuildContext context, TimeOfDay value, Widget _) {
                  return FlatButton(
                    onPressed: () {
                      showTimePicker(
                        context: context,
                        initialTime: _startHour.value,
                      ).then((date) {
                        if (date != null) {
                          _startHour.value = date;
                        }
                      });
                    },
                    child: Text(MaterialLocalizations.of(context)
                        .formatTimeOfDay(value)),
                  );
                },
              ),
              const Text('-'),
              ValueListenableBuilder<TimeOfDay>(
                valueListenable: _endHour,
                builder: (BuildContext context, TimeOfDay value, Widget _) {
                  return FlatButton(
                    onPressed: () {
                      showTimePicker(
                        context: context,
                        initialTime: _endHour.value,
                      ).then((date) {
                        if (date != null) {
                          _endHour.value = date;
                        }
                      });
                    },
                    child: Text(MaterialLocalizations.of(context)
                        .formatTimeOfDay(value)),
                  );
                },
              ),
              ValueListenableBuilder<DateTime>(
                valueListenable: _endDate,
                builder: (BuildContext context, DateTime value, Widget _) {
                  return FlatButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: _endDate.value,
                        firstDate: _startDate.value,
                        lastDate: DateTime(2101),
                      ).then((date) {
                        if (date != null) {
                          _endDate.value = date;
                        }
                      });
                    },
                    child: Text(DateFormat.yMMMd('fr_FR').format(value)),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _titleController?.dispose();
    _startDate?.dispose();
    _startHour?.dispose();
    _endDate?.dispose();
    _endHour?.dispose();
    _bloc?.close();
    super.dispose();
  }

  @override
  void initState() {
    _bloc = sl<BookingOfServiceBloc>();
    _titleController = TextEditingController();
    _titleController.text = widget.booking.title;
    _titleController.addListener(() {
      _bloc.add(TitleChanged(_titleController.text));
    });
    _startDate = ValueNotifier<DateTime>(widget.booking.start_date);
    _startHour = ValueNotifier<TimeOfDay>(
        TimeOfDay.fromDateTime(widget.booking.start_date));
    _endDate = ValueNotifier<DateTime>(widget.booking.end_date);
    _endHour = ValueNotifier<TimeOfDay>(
        TimeOfDay.fromDateTime(widget.booking.end_date));

    super.initState();
  }
}
