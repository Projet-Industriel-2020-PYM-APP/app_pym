import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_categorie.freezed.dart';

@freezed
abstract class ContactCategorie with _$ContactCategorie {
  const factory ContactCategorie({
    @required int id,
    @nullable @required String title,
    @nullable @required String subtitle,
    @nullable @required String address,
    @nullable @required String img_url,
    @nullable @required List<Action> actions,
    @nullable @required int contact_id,
  }) = _ContactCategorie;
}
