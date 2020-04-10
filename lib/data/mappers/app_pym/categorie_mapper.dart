import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/mappers/app_pym/action_mapper.dart';
import 'package:app_pym/data/models/app_pym/categorie_model.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class CategorieMapper implements Mapper<Categorie, CategorieModel> {
  final ActionMapper actionMapper;

  const CategorieMapper({@required this.actionMapper});

  @override
  CategorieModel mapFrom(Categorie entity) {
    return CategorieModel(
      id: entity.id,
      name: entity.name,
      action: actionMapper.mapFrom(entity.action),
    );
  }

  @override
  Categorie mapTo(CategorieModel model) {
    return Categorie(
      id: model.id,
      name: model.name,
      action: actionMapper.mapTo(model.action),
    );
  }
}
