import 'package:equatable/equatable.dart';

class Action extends Equatable {
  final String action_id;
  final String action_name;
  final String action_html_url;

  const Action({
    this.action_id,
    this.action_name,
    this.action_html_url,
  });

  @override
  List<Object> get props => <Object>[
        action_id,
        action_name,
        action_html_url,
      ];
}
