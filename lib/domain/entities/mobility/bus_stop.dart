import 'package:equatable/equatable.dart';

class BusStop extends Equatable {
  final int stop_id;
  final int stop_code;
  final String stop_name;
  final int stop_lat;
  final int stop_long;

  const BusStop({
    this.stop_id,
    this.stop_code,
    this.stop_name,
    this.stop_lat,
    this.stop_long,
  });

  @override
  List<Object> get props => <Object>[
        this.stop_id,
        this.stop_code,
        this.stop_name,
        this.stop_lat,
        this.stop_long,
      ];
}
