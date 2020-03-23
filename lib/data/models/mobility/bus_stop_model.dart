import 'package:equatable/equatable.dart';

part 'bus_stop_model.g.dart';

class BusStopModel extends Equatable {
  final int stop_id;
  final int stop_code;
  final String stop_name;
  final int stop_lat;
  final int stop_long;

  const BusStopModel({
    this.stop_id,
    this.stop_code,
    this.stop_name,
    this.stop_lat,
    this.stop_long,
  });

  factory BusStopModel.fromJson(Map<String, dynamic> json) =>
      _$BusStopModelFromJson(json);

  @override
  List<Object> get props => <Object>[
        stop_id,
        stop_code,
        stop_name,
        stop_lat,
        stop_long,
      ];

  Map<String, dynamic> toJson() => _$BusStopModelToJson(this);
}
