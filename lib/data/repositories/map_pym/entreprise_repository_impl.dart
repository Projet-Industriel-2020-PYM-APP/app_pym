import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/mappers/map_pym/entreprise_mapper.dart';
import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:app_pym/domain/repositories/map_pym/entreprise_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(EntrepriseRepository)
@lazySingleton
@injectable
class EntrepriseRepositoryImpl implements EntrepriseRepository {
  final MapPymLocalDataSource localDataSource;
  final MapPymRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  final EntrepriseMapper mapper;

  const EntrepriseRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
    @required this.mapper,
  });

  @override
  Future<List<Entreprise>> fetchEntreprisesOfBatiment(int idBatiment) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final data =
          await remoteDataSource.fetchEntreprisesOfBatiment(idBatiment);
      await localDataSource.cacheAllEntreprise(data);
      return data.map(mapper.mapTo).toList();
    } else {
      final data = await localDataSource.fetchEntreprisesOfBatiment(idBatiment);
      return data.map(mapper.mapTo).toList();
    }
  }
}
