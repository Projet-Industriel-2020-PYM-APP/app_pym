import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/repositories/app_pym/service_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(ServiceRepository)
@lazySingleton
@injectable
class ServiceRepositoryImpl implements ServiceRepository {
  final MapPymLocalDataSource localDataSource;
  final MapPymRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  const ServiceRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<List<Service>> fetchServicesOf(int categorie_id) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final data = await remoteDataSource.fetchServicesOf(categorie_id) ?? [];
      await localDataSource.cacheAllServices(data);
      return data.map((e) => e?.toEntity()).toList();
    } else {
      final data = localDataSource.fetchServicesOf(categorie_id) ?? [];
      return data.map((e) => e?.toEntity()).toList();
    }
  }
}
