import 'dart:ui';

import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_categorie.freezed.dart';

@freezed
abstract class ServiceCategorie with _$ServiceCategorie {
  const factory ServiceCategorie({
    @required int id,
    @nullable @required String name,
    @nullable @required Color primary_color,
    @nullable @required String img_url,
    @nullable @required Action action,
  }) = _ServiceCategorie;
}
