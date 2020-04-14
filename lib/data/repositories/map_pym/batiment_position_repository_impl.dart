import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:app_pym/domain/entities/map_pym/batiment_position.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_position_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(BatimentPositionRepository)
@lazySingleton
@injectable
class BatimentPositionRepositoryImpl implements BatimentPositionRepository {
  final MapPymLocalDataSource localDataSource;
  final MapPymRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  const BatimentPositionRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<List<BatimentPosition>> fetchBatimentsPosition() =>
      _fetchBatimentsPosition();

  Future<List<BatimentPosition>> _fetchBatimentsPosition() async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final data = await remoteDataSource.fetchBatimentsPosition();
      await localDataSource.cacheBatimentsPosition(data);
      return data.map((e) => e.toEntity()).toList();
    } else {
      final data = await localDataSource.fetchBatimentsPosition();
      return data.map((e) => e.toEntity()).toList();
    }
  }
}
