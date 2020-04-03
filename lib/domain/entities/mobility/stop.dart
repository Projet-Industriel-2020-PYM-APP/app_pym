import 'package:equatable/equatable.dart';

class Stop extends Equatable {
  final String stop_id;
  final String stop_code;
  final String stop_name;
  final String stop_lat;
  final String stop_long;

  const Stop({
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
