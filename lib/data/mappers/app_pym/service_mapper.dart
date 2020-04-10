import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/mappers/app_pym/action_mapper.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class ServiceMapper implements Mapper<Service, ServiceModel> {
  final ActionMapper actionMapper;

  const ServiceMapper({@required this.actionMapper});

  @override
  ServiceModel mapFrom(Service entity) {
    return ServiceModel(
      id: entity.id,
      title: entity.title,
      categorie_id: entity.categorie_id,
      subtitle: entity.subtitle,
      address: entity.address,
      img_url: entity.img_url,
      actions: entity.actions.map(actionMapper.mapFrom).toList(),
    );
  }

  @override
  Service mapTo(ServiceModel model) {
    return Service(
      id: model.id,
      title: model.title,
      categorie_id: model.categorie_id,
      subtitle: model.subtitle,
      address: model.address,
      img_url: model.img_url,
      actions: model.actions.map(actionMapper.mapTo).toList(),
    );
  }
}
