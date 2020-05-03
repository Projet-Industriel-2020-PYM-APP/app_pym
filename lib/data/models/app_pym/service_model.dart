import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

@freezed
abstract class ServiceModel with _$ServiceModel {
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 8)
  const factory ServiceModel({
    @required @HiveField(0) int id,
    @required @nullable @HiveField(1) String title,
    @required @nullable @HiveField(2) int categorie_id,
    @required @nullable @HiveField(3) String subtitle,
    @required @nullable @HiveField(4) String address,
    @required @nullable @HiveField(5) String img_url,
    @required @nullable @HiveField(6) List<ActionModel> actions,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}

extension ServiceModelX on ServiceModel {
  Service toEntity() {
    return Service(
      id: this.id,
      title: this.title,
      categorie_id: this.categorie_id,
      subtitle: this.subtitle,
      address: this.address,
      img_url: this.img_url,
      actions: this.actions.map((e) => e.toEntity()).toList(),
    );
  }
}

TypeAdapter<ServiceModel> ServiceModelAdapter() => _$_ServiceModelAdapter();
