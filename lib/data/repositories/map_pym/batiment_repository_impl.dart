import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(BatimentRepository)
@lazySingleton
@injectable
class BatimentRepositoryImpl implements BatimentRepository {
  final MapPymLocalDataSource localDataSource;
  final MapPymRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  const BatimentRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Batiment> fetchBatiment(int id) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final data = await remoteDataSource.fetchBatiment(id);
      await localDataSource.cacheBatiment(data);
      return data.toEntity();
    } else {
      final data = localDataSource.fetchBatiment(id);
      return data.toEntity();
    }
  }
}
