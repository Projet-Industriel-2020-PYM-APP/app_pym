import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'batiment.freezed.dart';

@freezed
abstract class Batiment with _$Batiment {
  const factory Batiment({
    @required int id,
    @required String nom,
    @required int nbEtage,
    @required String description,
    @required bool accesHandicape,
    @required String url,
    @required String adresse,
    @required double latitude,
    @required double longitude,
  }) = _Batiment;
}
