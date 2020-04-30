import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'batiment_position.freezed.dart';

@freezed
abstract class BatimentPosition with _$BatimentPosition {
  const factory BatimentPosition({
    @required num latitude,
    @required num longitude,
    @required int idBatiment,
  }) = _BatimentPosition;
}
