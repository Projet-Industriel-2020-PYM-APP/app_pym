import 'package:equatable/equatable.dart';

class RouteModel extends Equatable {
  final String route_id;
  final String route_short_name;
  final String route_long_name;

  const RouteModel({
    this.route_id,
    this.route_short_name,
    this.route_long_name,
  });

  @override
  List<Object> get props => <Object>[
        this.route_id,
        this.route_short_name,
        this.route_long_name,
      ];
}
