import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'action_model.freezed.dart';
part 'action_model.g.dart';

@freezed
abstract class ActionModel with _$ActionModel {
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 4)
  const factory ActionModel({
    @required @nullable @HiveField(0) String name,
    @required @nullable @HiveField(1) String html_url,
  }) = _ActionModel;

  factory ActionModel.fromJson(Map<String, dynamic> json) =>
      _$ActionModelFromJson(json);
}

extension ActionModelX on ActionModel {
  Action toEntity() {
    return Action(
      html_url: this.html_url,
      name: this.name,
    );
  }
}

TypeAdapter<ActionModel> ActionModelAdapter() => _$_ActionModelAdapter();
