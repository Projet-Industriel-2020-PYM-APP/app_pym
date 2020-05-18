import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:app_pym/domain/repositories/map_pym/entreprise_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
class GetEntreprisesOfBatiment extends Usecase<Future<List<Entreprise>>, int> {
  final EntrepriseRepository entrepriseRepository;

  const GetEntreprisesOfBatiment({
    @required this.entrepriseRepository,
  });

  @override
  Future<List<Entreprise>> call(int idBatiment) =>
      entrepriseRepository.fetchEntreprisesOfBatiment(idBatiment);
}
