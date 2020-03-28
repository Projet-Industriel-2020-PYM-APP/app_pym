import 'package:equatable/equatable.dart';

class Bus extends Equatable {
  final int trip_id;
  final String stop_name;
  final String time;
  final String days;

  const Bus({
    this.trip_id,
    this.stop_name,
    this.time,
    this.days,
  });

  @override
  List<Object> get props => <Object>[
        this.trip_id,
        this.stop_name,
        this.time,
        this.days,
      ];
}
