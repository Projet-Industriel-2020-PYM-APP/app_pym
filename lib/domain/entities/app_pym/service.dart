import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.freezed.dart';

@freezed
abstract class Service with _$Service {
  const factory Service({
    String id,
    String title,
    String categorie_id,
    String subtitle,
    String address,
    String img_url,
    List<Action> actions,
  }) = _Service;
}
