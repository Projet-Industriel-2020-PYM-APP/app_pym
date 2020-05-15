import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/utils/time_formatter.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/mobility/stop_details/stop_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsBottomSheet extends StatelessWidget {
  final List<Trip> trips;
  final bool isBus;
  final String markerId;

  const DetailsBottomSheet(
    this.trips, {
    @required this.isBus,
    @required this.markerId,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: BlocProvider<StopDetailsBloc>(
        create: (_) => sl<StopDetailsBloc>()
          ..add(StopDetailsEvent.show(
            id: markerId,
            trips: trips,
            isBus: isBus,
          )),
        child: BlocBuilder<StopDetailsBloc, StopDetailsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.isError) {
              return Center(child: Text(state.exception.toString()));
            } else {
              final IconData icon = isBus ? Icons.directions_bus : Icons.train;
              final String line = isBus
                  ? MobilityConstants.busLine
                  : MobilityConstants.trainLine;
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          icon,
                          size: Theme.of(context).textTheme.headline3.fontSize,
                        ),
                        Text(
                          line,
                          style: Theme.of(context).textTheme.headline3,
                        )
                      ],
                    ),
                    Text(
                      state.stop_name,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Theme.of(context).textTheme.subtitle2.color,
                        ),
                        Text(
                          "Destination " + state.last_stop,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.arrow_right),
                        Text(
                          "${state.arrivalTimes[0]} (${state.arrivalTimes[0].arrivalTimeToTimeLeft().format()})",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    Text(
                      "${state.arrivalTimes[1]} (${state.arrivalTimes[1].arrivalTimeToTimeLeft().format()})",
                    ),
                    Text(
                      "${state.arrivalTimes[2]} (${state.arrivalTimes[2].arrivalTimeToTimeLeft().format()})",
                    ),
                    const Divider(),
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.trip.length,
                        itemBuilder: (context, index) {
                          final Color color =
                              state.trip[index].stop.stop_name ==
                                      state.destination
                                  ? Colors.red
                                  : Theme.of(context).textTheme.bodyText1.color;
                          IconData stopIcon;
                          if (state.trip[index].stop.stop_name ==
                              state.last_stop) {
                            stopIcon = Icons.fiber_manual_record;
                          } else if (state.trip[index].stop.stop_name ==
                              state.stop_name) {
                            stopIcon = Icons.my_location;
                          } else {
                            stopIcon = Icons.arrow_drop_down;
                          }
                          final TextStyle nameStyle = TextStyle(
                            color: color,
                            fontWeight: FontWeight.bold,
                          );
                          final TextStyle hourStyle = TextStyle(color: color);

                          return Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Icon(
                                  stopIcon,
                                  color: color,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  state.trip[index].stop.stop_name,
                                  style: nameStyle,
                                ),
                              ),
                              Text(
                                state.trip[index].arrival_time,
                                style: hourStyle,
                                textAlign: TextAlign.end,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

extension on String {
  Duration arrivalTimeToTimeLeft() {
    final now = DateTime.now();
    return DateTime(
      now.year,
      now.month,
      now.day,
      int.parse(this.split(':')[0]),
      int.parse(this.split(':')[1]),
      int.parse(this.split(':')[2]),
    ).difference(now);
  }
}
