import 'package:equatable/equatable.dart';

class BusCalendar extends Equatable {
  final int service_id;
  final int monday;
  final int tuesday;
  final int wednesday;
  final int thursday;
  final int friday;
  final int saturday;
  final int sunday;
  final int start_date;
  final int end_date;

  const BusCalendar({
    this.service_id,
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.saturday,
    this.sunday,
    this.start_date,
    this.end_date,
  });

  @override
  List<Object> get props => <Object>[
        this.service_id,
        this.monday,
        this.tuesday,
        this.wednesday,
        this.thursday,
        this.friday,
        this.saturday,
        this.sunday,
        this.start_date,
        this.end_date,
      ];
}
