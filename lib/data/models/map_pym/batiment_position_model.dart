import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'batiment_position_model.g.dart';

@HiveType(typeId: 0)
@JsonSerializable(explicitToJson: true)
class BatimentPositionModel extends Equatable {
  @HiveField(0)
  final num latitude;
  @HiveField(1)
  final num longitude;
  @HiveField(2)
  final int idBatiment;

  const BatimentPositionModel({
    this.latitude,
    this.longitude,
    this.idBatiment,
  });

  factory BatimentPositionModel.fromJson(Map<String, dynamic> json) =>
      _$BatimentPositionModelFromJson(json);

  @override
  List<Object> get props => <Object>[
        this.latitude,
        this.longitude,
        this.idBatiment,
      ];

  Map<String, dynamic> toJson() => _$BatimentPositionModelToJson(this);
}
