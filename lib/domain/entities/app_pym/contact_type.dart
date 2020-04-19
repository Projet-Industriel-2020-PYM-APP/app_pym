import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/contact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_type.freezed.dart';

@freezed
abstract class ContactType with _$ContactType {
  const factory ContactType({
    String id,
    String title,
    String categorie_ref,
    String subtitle,
    String address,
    String img_url,
    List<Action> actions,
    Contact contact,
  }) = _ContactType;
}
