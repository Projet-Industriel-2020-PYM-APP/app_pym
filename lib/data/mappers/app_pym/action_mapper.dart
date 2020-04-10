import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class ActionMapper implements Mapper<Action, ActionModel> {
  const ActionMapper();

  @override
  ActionModel mapFrom(Action entity) {
    return ActionModel(
      html_url: entity.html_url,
      id: entity.id,
      name: entity.name,
    );
  }

  @override
  Action mapTo(ActionModel model) {
    return Action(
      html_url: model.html_url,
      id: model.id,
      name: model.name,
    );
  }
}
