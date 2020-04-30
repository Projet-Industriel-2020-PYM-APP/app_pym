import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart' show Color;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorie.freezed.dart';

@freezed
abstract class Categorie with _$Categorie {
  const factory Categorie({
    String id,
    String name,
    Color primary_color,
    String img_url,
    Action action,
  }) = _Categorie;
}
