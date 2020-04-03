import 'package:equatable/equatable.dart';

class CalendarModel extends Equatable {
  final String service_id;
  final bool monday;
  final bool tuesday;
  final bool wednesday;
  final bool thursday;
  final bool friday;
  final bool saturday;
  final bool sunday;
  final String start_date;
  final String end_date;

  const CalendarModel({
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
        service_id,
        monday,
        tuesday,
        wednesday,
        thursday,
        friday,
        saturday,
        sunday,
        start_date,
        end_date,
      ];
}
