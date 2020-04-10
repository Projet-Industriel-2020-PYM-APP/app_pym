import 'package:equatable/equatable.dart';

class ActionModel extends Equatable {
  final String id;
  final String name;
  final String html_url;

  const ActionModel({
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

  factory ActionModel.fromMap(Map<String, dynamic> data) {
    return ActionModel(
      id: data["id"] as String ?? '',
      name: data['name'] as String ?? '',
      html_url: data['html_url'] as String ?? '',
    );
  }

  @override
  bool get stringify => true;
}
