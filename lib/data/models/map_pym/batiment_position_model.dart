import 'package:app_pym/domain/entities/map_pym/batiment_position.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'batiment_position_model.g.dart';
part 'batiment_position_model.freezed.dart';

@freezed
abstract class BatimentPositionModel with _$BatimentPositionModel {
  @HiveType(typeId: 0)
  @JsonSerializable(explicitToJson: true)
  const factory BatimentPositionModel({
    @required @HiveField(0) num latitude,
    @required @HiveField(1) num longitude,
    @required @HiveField(2) int idBatiment,
  }) = _BatimentPositionModel;

  factory BatimentPositionModel.fromJson(Map<String, dynamic> json) =>
      _$BatimentPositionModelFromJson(json);
}

TypeAdapter<BatimentPositionModel> BatimentPositionModelAdapter() =>
    _$_BatimentPositionModelAdapter();

extension BatimentPositionModelX on BatimentPositionModel {
  BatimentPosition toEntity() {
    return BatimentPosition(
      latitude: this.latitude,
      longitude: this.longitude,
      idBatiment: this.idBatiment,
    );
  }
}
