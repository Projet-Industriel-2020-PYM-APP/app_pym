import 'package:equatable/equatable.dart';

class BusRoute extends Equatable {
  final int route_id;
  final int route_short_name;
  final String route_long_name;

  const BusRoute({
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
