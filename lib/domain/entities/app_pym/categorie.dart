import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorie.freezed.dart';

@freezed
abstract class Categorie with _$Categorie {
  const factory Categorie({
    String id,
    String name,
    Action action,
  }) = _Categorie;
}
