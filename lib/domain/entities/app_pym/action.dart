import 'package:equatable/equatable.dart';

class Action extends Equatable {
  final String id;
  final String name;
  final String html_url;

  const Action({
    this.id,
    this.name,
    this.html_url,
  });

  @override
  List<Object> get props => <Object>[
        id,
        name,
        html_url,
      ];
}
