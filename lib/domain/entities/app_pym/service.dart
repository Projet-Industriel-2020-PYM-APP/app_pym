import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.freezed.dart';

@freezed
abstract class Service with _$Service {
  const factory Service({
    @required int id,
    @nullable @required String title,
    @nullable @required int categorie_id,
    @nullable @required String subtitle,
    @nullable @required String address,
    @nullable @required String img_url,
    @nullable @required List<Action> actions,
  }) = _Service;
}
