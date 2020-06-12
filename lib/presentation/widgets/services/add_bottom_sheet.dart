import 'package:app_pym/core/routes/routes.dart';
import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/authentication/authentication/authentication_bloc.dart';
import 'package:app_pym/presentation/blocs/services/booking/booking_of_service/booking_of_service_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class BookingAddBottomSheet extends StatefulWidget {
  final DateTime hintDate;
  final Service service;

  const BookingAddBottomSheet({
    @required this.hintDate,
    @required this.service,
    Key key,
  }) : super(key: key);

  @override
  BookingAddBottomSheetState createState() => BookingAddBottomSheetState();
}

class BookingAddBottomSheetState extends State<BookingAddBottomSheet> {
  TextEditingController _titleController;
  ValueNotifier<DateTime> _startDate;
  ValueNotifier<TimeOfDay> _startHour;
  ValueNotifier<DateTime> _endDate;
  ValueNotifier<TimeOfDay> _endHour;
  ValueNotifier<bool> _superpose;
  BookingOfServiceBloc _bloc;

  @override
  Widget build(BuildContext context) {
    return BlocListener<BookingOfServiceBloc, BookingOfServiceState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state.isFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.error.toString()),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state.isSubmitting) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Envoi...'),
                    const CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state.isSuccess) {
          Navigator.pop<bool>(context, true);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      hintText: 'Titre',
                    ),
                    style: Theme.of(context).textTheme.headline6,
                    validator: (_) {
                      return !_bloc.state.isTitleValid
                          ? 'Ne doit pas être vide'
                          : null;
                    },
                    autovalidate: true,
                  ),
                ),
                RaisedButton(
                  color: Theme.of(context).buttonColor,
                  onPressed: () {
                    context
                        .bloc<AuthenticationBloc>()
                        .add(const AuthenticationEvent.refresh());
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
                          BookingOfServiceEvent.add(
                            booking: Booking(
                              id: 0,
                              title: _titleController.text,
                              start_date: start_date,
                              end_date: end_time,
                              service_id: widget.service.id,
                              superpose: _superpose.value,
                            ),
                            appUser: state.user,
                          ),
                        );
                      } else {
                        Scaffold.of(context).showSnackBar(const SnackBar(
                          content: Text("Veuillez ajouter un titre"),
                        ));
                      }
                    } else {
                      Navigator.pushNamed(context, RoutePaths.login);
                    }
                  },
                  child: const Text('AJOUTER'),
                ),
              ],
            ),
            const Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
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
            ),
            ListTile(
              leading: ValueListenableBuilder<bool>(
                valueListenable: _superpose,
                builder: (BuildContext context, bool value, Widget _) {
                  return Checkbox(
                    value: value,
                    onChanged: (value) => _superpose.value = value,
                  );
                },
              ),
              title: const Text("Peut chevaucher d'autres événements"),
            ),
          ],
        ),
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
    _superpose?.dispose();
    _bloc?.close();
    super.dispose();
  }

  @override
  void initState() {
    _bloc = sl<BookingOfServiceBloc>();
    _titleController = TextEditingController();
    _titleController.addListener(() {
      _bloc.add(TitleChanged(_titleController.text));
    });
    _startDate = ValueNotifier<DateTime>(widget.hintDate);
    _startHour =
        ValueNotifier<TimeOfDay>(TimeOfDay.fromDateTime(widget.hintDate));
    _endDate = ValueNotifier<DateTime>(widget.hintDate);
    _endHour =
        ValueNotifier<TimeOfDay>(TimeOfDay.fromDateTime(widget.hintDate));
    _superpose = ValueNotifier<bool>(true);

    super.initState();
  }
}
