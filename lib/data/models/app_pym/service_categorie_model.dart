import 'dart:ui';

import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'service_categorie_model.freezed.dart';
part 'service_categorie_model.g.dart';

TypeAdapter<ServiceCategorieModel> ServiceCategorieModelAdapter() =>
    _$_ServiceCategorieModelAdapter();

@freezed
abstract class ServiceCategorieModel with _$ServiceCategorieModel {
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 5)
  const factory ServiceCategorieModel({
    @required @HiveField(0) int id,
    @required @nullable @HiveField(1) String name,
    @required @nullable @HiveField(2) String primary_color,
    @required @nullable @HiveField(3) String img_url,
    @required @nullable @HiveField(4) ActionModel action,
  }) = _ServiceCategorieModel;

  factory ServiceCategorieModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceCategorieModelFromJson(json);
}

extension on String {
  Color toColor() {
    final string = this.replaceFirst('#', '');
    final int color = int.tryParse(string, radix: 16);
    return color != null ? Color(color + 0xff000000) : null;
  }
}

extension ServiceCategorieModelX on ServiceCategorieModel {
  ServiceCategorie toEntity() {
    return ServiceCategorie(
      id: this.id,
      name: this.name,
      primary_color: this.primary_color?.toColor(),
      img_url: img_url,
      action: this.action?.toEntity(),
    );
  }
}
