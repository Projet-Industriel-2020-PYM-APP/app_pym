import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/app_pym/contact_categorie_model.dart';
import 'package:app_pym/domain/entities/app_pym/contact_categorie.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_categorie_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(ContactCategorieRepository)
@lazySingleton
@injectable
class ContactCategorieRepositoryImpl implements ContactCategorieRepository {
  final MapPymLocalDataSource localDataSource;
  final MapPymRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  const ContactCategorieRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<List<ContactCategorie>> fetchAll() async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final data = await remoteDataSource.fetchAllContactCategories() ?? [];
      await localDataSource.cacheAllContactCategories(data);
      return data.map((e) => e?.toEntity()).toList();
    } else {
      final data = localDataSource.fetchAllContactCategories() ?? [];
      return data.map((e) => e?.toEntity()).toList();
    }
  }
}
