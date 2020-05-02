import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/domain/entities/app_pym/contact.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@injectable
@RegisterAs(ContactRepository)
@lazySingleton
class ContactRepositoryImpl implements ContactRepository {
  final MapPymLocalDataSource localDataSource;
  final MapPymRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  const ContactRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Contact> fetch(int id) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final data = await remoteDataSource.fetchContact(id);
      await localDataSource.cacheContact(data);
      return data?.toEntity();
    } else {
      final data = localDataSource.fetchContact(id);
      return data?.toEntity();
    }
  }
}
