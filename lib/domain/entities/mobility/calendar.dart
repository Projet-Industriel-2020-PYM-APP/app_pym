import 'package:equatable/equatable.dart';

class Calendar extends Equatable {
  final String service_id;
  final List<bool> weekdays;
  final String start_date;
  final String end_date;

  const Calendar({
    this.service_id,
    this.weekdays,
    this.start_date,
    this.end_date,
  });

  @override
  List<Object> get props => <Object>[
        this.service_id,
        this.weekdays,
        this.start_date,
        this.end_date,
      ];
}
