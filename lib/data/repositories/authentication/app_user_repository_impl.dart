import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/authentication/app_user_model.dart';
import 'package:app_pym/data/services/authentication_service.dart';
import 'package:app_pym/domain/entities/authentication/app_user.dart';
import 'package:app_pym/domain/repositories/authentication/app_user_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: AppUserRepository)
class AppUserRepositoryImpl implements AppUserRepository {
  final AuthenticationService auth;
  final MapPymRemoteDataSource remoteDataSource;
  final MapPymLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AppUserRepositoryImpl({
    @required this.auth,
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<AppUser> fetch() async {
    print("TOKEN ${auth.token}");
    if (auth.token != null) {
      if (await networkInfo.result != ConnectivityResult.none) {
        final data = await remoteDataSource.fetchUser(auth.token);
        await localDataSource.cacheUser(data);
        return data?.toEntity();
      } else {
        final data = localDataSource.fetchUser();
        return data?.toEntity();
      }
    } else {
      return null;
    }
  }
}
