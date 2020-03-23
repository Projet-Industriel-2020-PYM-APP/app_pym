import 'package:equatable/equatable.dart';

part 'bus_calendar_model.g.dart';

class BusCalendarModel extends Equatable {
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

  const BusCalendarModel({
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

  factory BusCalendarModel.fromJson(Map<String, dynamic> json) =>
      _$BusCalendarModelFromJson(json);

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

  Map<String, dynamic> toJson() => _$BusCalendarModelToJson(this);
}
