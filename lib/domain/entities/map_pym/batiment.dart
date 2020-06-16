import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'batiment.freezed.dart';

@freezed
abstract class Batiment with _$Batiment {
  const factory Batiment({
    @required int id,
    @nullable @required String nom,
    @nullable @required int nbEtage,
    @nullable @required String description,
    @nullable @required bool accesHandicape,
    @nullable @required String url,
    @nullable @required String adresse,
    @nullable @required double latitude,
    @nullable @required double longitude,
    @nullable @required bool isVisibleAR,
    @nullable @required String img_url,
  }) = _Batiment;
}
