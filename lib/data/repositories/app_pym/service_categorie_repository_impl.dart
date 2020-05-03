import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/app_pym/service_categorie_model.dart';
import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
import 'package:app_pym/domain/repositories/app_pym/service_categorie_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(ServiceCategorieRepository)
@lazySingleton
@injectable
class ServiceCategorieRepositoryImpl implements ServiceCategorieRepository {
  final MapPymLocalDataSource localDataSource;
  final MapPymRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  const ServiceCategorieRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<List<ServiceCategorie>> fetchAll() async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final data = await remoteDataSource.fetchAllServiceCategories() ?? [];
      await localDataSource.cacheAllServiceCategories(data);
      return data.map((e) => e?.toEntity()).toList();
    } else {
      final data = localDataSource.fetchAllServiceCategories() ?? [];
      return data.map((e) => e?.toEntity()).toList();
    }
  }
}
