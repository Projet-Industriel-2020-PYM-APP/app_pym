import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:app_pym/domain/repositories/map_pym/entreprise_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: EntrepriseRepository)
class EntrepriseRepositoryImpl implements EntrepriseRepository {
  final MapPymLocalDataSource localDataSource;
  final MapPymRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  const EntrepriseRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<List<Entreprise>> fetchEntreprisesOfBatiment(int idBatiment) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final data =
          await remoteDataSource.fetchEntreprisesOfBatiment(idBatiment) ?? [];
      await localDataSource.cacheAllEntreprise(data);
      return data.map((e) => e?.toEntity()).toList();
    } else {
      final data = localDataSource.fetchEntreprisesOfBatiment(idBatiment) ?? [];
      return data.map((e) => e?.toEntity()).toList();
    }
  }
}
