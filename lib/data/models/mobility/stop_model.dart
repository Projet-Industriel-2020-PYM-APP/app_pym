import 'package:equatable/equatable.dart';

class StopModel extends Equatable {
  final String stop_id;
  final String stop_code;
  final String stop_name;
  final String stop_lat;
  final String stop_long;
  final int location_type;

  const StopModel({
    this.stop_id,
    this.stop_code,
    this.stop_name,
    this.stop_lat,
    this.stop_long,
    this.location_type,
  });

  @override
  List<Object> get props => <Object>[
        stop_id,
        stop_code,
        stop_name,
        stop_lat,
        stop_long,
        location_type,
      ];
}
