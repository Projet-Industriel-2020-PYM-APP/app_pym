import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class GetBatimentDetail extends Usecase<Future<Batiment>, int> {
  final BatimentRepository batimentRepository;

  const GetBatimentDetail({
    @required this.batimentRepository,
  });

  @override
  Future<Batiment> call(int id) => batimentRepository.fetchBatiment(id);
}
