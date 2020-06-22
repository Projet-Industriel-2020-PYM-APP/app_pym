import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

@freezed
abstract class Contact with _$Contact {
  const factory Contact({
    @required int id,
    @nullable @required String nom,
    @nullable @required String prenom,
    @nullable @required String mail,
    @nullable @required String telephone,
    @nullable @required int idEntreprise,
  }) = _Contact;
}
