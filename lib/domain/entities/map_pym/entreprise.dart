import 'package:freezed_annotation/freezed_annotation.dart';

part 'entreprise.freezed.dart';

@freezed
abstract class Entreprise with _$Entreprise {
  const factory Entreprise({
    @required int id,
    @required String nom,
    @required String site_internet,
    @required int nb_salaries,
    @required String telephone,
    @required String mail,
    @required String logo,
    @required int idBatiment,
  }) = _Entreprise;
}
