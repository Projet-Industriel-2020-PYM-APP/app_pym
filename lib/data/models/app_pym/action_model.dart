import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_model.freezed.dart';

@freezed
abstract class ActionModel with _$ActionModel {
  const factory ActionModel({
    String id,
    String name,
    String html_url,
  }) = _ActionModel;

  factory ActionModel.fromMap(Map<String, dynamic> data) {
    return ActionModel(
      id: data["id"] as String,
      name: data['name'] as String,
      html_url: data['html_url'] as String,
    );
  }
}

extension ActionModelX on ActionModel {
  Action toEntity() {
    return Action(
      html_url: this.html_url,
      id: this.id,
      name: this.name,
    );
  }
}
