// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:app_pym/core/network/mock_network_info.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/mock_github_local_data_source.dart';
import 'package:app_pym/data/datasources/github_local_data_source.dart';
import 'package:app_pym/data/datasources/mock_github_remote_data_source.dart';
import 'package:app_pym/data/datasources/github_remote_data_source.dart';
import 'package:app_pym/data/mappers/firebase_auth/app_user_mapper.dart';
import 'package:app_pym/data/mappers/github/mock_asset_mapper.dart';
import 'package:app_pym/data/mappers/github/asset_mapper.dart';
import 'package:app_pym/data/mappers/github/mock_release_mapper.dart';
import 'package:app_pym/data/mappers/github/release_mapper.dart';
import 'package:app_pym/data/mappers/github/mock_user_mapper.dart';
import 'package:app_pym/data/mappers/github/user_mapper.dart';
import 'package:app_pym/data/mappers/gitlab_user_mapper.dart';
import 'package:app_pym/data/mappers/mobility/calendar_mapper.dart';
import 'package:app_pym/data/mappers/mobility/mock_route_mapper.dart';
import 'package:app_pym/data/mappers/mobility/route_mapper.dart';
import 'package:app_pym/data/mappers/mobility/stop_mapper.dart';
import 'package:app_pym/data/mappers/mobility/stop_time_mapper.dart';
import 'package:app_pym/data/mappers/mobility/trip_mapper.dart';
import 'package:app_pym/data/repositories/github/releases_repository_impl.dart';
import 'package:app_pym/domain/repositories/github/releases_repository.dart';
import 'package:app_pym/data/repositories/github/user_repository_impl.dart';
import 'package:app_pym/domain/repositories/github/user_repository.dart';
import 'package:app_pym/domain/repositories/github/mock_releases_repository.dart';
import 'package:app_pym/domain/repositories/github/mock_user_repository.dart';
import 'package:app_pym/domain/usecases/github/get_releases.dart';
import 'package:app_pym/domain/usecases/github/get_user.dart';
import 'package:app_pym/domain/usecases/github/mock_get_releases.dart';
import 'package:app_pym/domain/usecases/github/mock_get_user.dart';
import 'package:app_pym/presentation/blocs/github_releases/github_releases_bloc.dart';
import 'package:app_pym/presentation/blocs/github_user/github_user_bloc.dart';
import 'package:app_pym/presentation/blocs/main/main_page_bloc.dart';
import 'package:app_pym/register_module.dart';
import 'package:hive/hive.dart';
import 'package:connectivity/connectivity.dart';
import 'package:http/src/client.dart';
import 'package:archive/archive.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_pym/core/directory_manager/directory_manager.dart';
import 'package:app_pym/core/directory_manager/mock_directory_manager.dart';
import 'package:app_pym/data/datasources/firebase_auth_data_source.dart';
import 'package:app_pym/data/datasources/gitlab_remote_data_source.dart';
import 'package:app_pym/data/datasources/metropole_local_data_source.dart';
import 'package:app_pym/data/datasources/metropole_remote_data_source.dart';
import 'package:app_pym/data/datasources/sncf_local_data_source.dart';
import 'package:app_pym/data/datasources/sncf_remote_data_source.dart';
import 'package:app_pym/data/repositories/firebase_auth/app_user_repository_impl.dart';
import 'package:app_pym/domain/repositories/firebase_auth/app_user_repository.dart';
import 'package:app_pym/data/repositories/gitlab_user_repository_impl.dart';
import 'package:app_pym/domain/repositories/gitlab_user_repository.dart';
import 'package:app_pym/data/repositories/mobility/metropole_route_repository_impl.dart';
import 'package:app_pym/domain/repositories/mobility/route_repository.dart';
import 'package:app_pym/data/repositories/mobility/sncf_route_repository_impl.dart';
import 'package:app_pym/domain/usecases/firebase_auth/get_user.dart';
import 'package:app_pym/domain/usecases/firebase_auth/is_signed_in.dart';
import 'package:app_pym/domain/usecases/firebase_auth/set_user_data.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signin.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signout.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signup.dart';
import 'package:app_pym/domain/usecases/get_gitlab_user.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_bus_trips.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_train_trips.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/authentication/authentication_bloc.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/forgot/forgot_bloc.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/login/login_bloc.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/register/register_bloc.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/user_data/user_data_bloc.dart';
import 'package:app_pym/presentation/blocs/gitlab_user/gitlab_user_bloc.dart';
import 'package:app_pym/presentation/blocs/mobility/bus_trips/bus_trips_bloc.dart';
import 'package:app_pym/presentation/blocs/mobility/train_trips/train_trips_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerFactory<NetworkInfo>(() => MockNetworkInfo());
    g.registerFactory<GithubLocalDataSource>(() => MockGithubLocalDataSource());
    g.registerFactory<GithubRemoteDataSource>(
        () => MockGithubRemoteDataSource());
    g.registerFactory<GithubAssetMapper>(() => MockGithubAssetMapper());
    g.registerFactory<GithubReleaseMapper>(() => MockGithubReleaseMapper());
    g.registerFactory<GithubUserMapper>(() => MockGithubUserMapper());
    g.registerFactory<RouteMapper>(() => MockRouteMapper());
    g.registerFactory<ReleasesRepository>(() => MockReleasesRepository());
    g.registerFactory<UserRepository>(() => MockUserRepository());
    g.registerFactory<GetGithubReleases>(() => MockGetGithubReleases());
    g.registerFactory<GetGithubUser>(() => MockGetGithubUser());
    g.registerFactory<Box<String>>(() => MockBox());
    g.registerFactory<Connectivity>(() => MockDataConnectionChecker());
    g.registerFactory<Client>(() => MockHttpClient());
    g.registerFactory<ZipDecoder>(() => MockZipDecoder());
    g.registerFactory<DirectoryManager>(() => MockDirectoryManager());
  }

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<AppUserMapper>(() => AppUserMapper());
    g.registerLazySingleton<GithubReleaseMapper>(() => GithubReleaseMapper(
        userMapper: g<GithubUserMapper>(),
        assetMapper: g<GithubAssetMapper>()));
    g.registerLazySingleton<GithubUserMapper>(() => GithubUserMapper());
    g.registerLazySingleton<GitlabUserMapper>(() => GitlabUserMapper());
    g.registerLazySingleton<CalendarMapper>(() => CalendarMapper());
    g.registerLazySingleton<StopMapper>(() => StopMapper());
    g.registerLazySingleton<StopTimeMapper>(() => StopTimeMapper());
    g.registerLazySingleton<TripMapper>(() => TripMapper());
    g.registerLazySingleton<ReleasesRepository>(() => ReleasesRepositoryImpl(
          localDataSource: g<GithubLocalDataSource>(),
          remoteDataSource: g<GithubRemoteDataSource>(),
          networkInfo: g<NetworkInfo>(),
          releaseMapper: g<GithubReleaseMapper>(),
        ));
    g.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(
          remoteDataSource: g<GithubRemoteDataSource>(),
          localDataSource: g<GithubLocalDataSource>(),
          networkInfo: g<NetworkInfo>(),
          mapper: g<GithubUserMapper>(),
        ));
    g.registerLazySingleton<GetGithubReleases>(
        () => GetGithubReleases(g<ReleasesRepository>()));
    g.registerLazySingleton<GetGithubUser>(
        () => GetGithubUser(g<UserRepository>()));
    g.registerFactory<GithubReleasesBloc>(
        () => GithubReleasesBloc(getGithubReleases: g<GetGithubReleases>()));
    g.registerFactory<GithubUserBloc>(
        () => GithubUserBloc(getGithubUser: g<GetGithubUser>()));
    g.registerFactory<MainPageBloc>(() => MainPageBloc());
    g.registerLazySingleton<Connectivity>(() => registerModule.connectivity);
    g.registerFactory<FirebaseAuth>(() => registerModule.firebaseAuth);
    g.registerFactory<Firestore>(() => registerModule.firestore);
    g.registerFactory<Box<String>>(() => registerModule.githubBox);
    g.registerLazySingleton<Client>(() => registerModule.httpClient);
    g.registerFactory<ZipDecoder>(() => registerModule.zipDecoder);
    g.registerLazySingleton<DirectoryManager>(() => DirectoryManagerImpl());
    g.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(g<Connectivity>()));
    g.registerLazySingleton<FirebaseAuthDataSource>(() =>
        FirebaseAuthDataSourceImpl(
            auth: g<FirebaseAuth>(), db: g<Firestore>()));
    g.registerLazySingleton<GithubLocalDataSource>(
        () => GithubLocalDataSourceImpl(box: g<Box<String>>()));
    g.registerLazySingleton<GithubRemoteDataSource>(
        () => GithubRemoteDataSourceImpl(client: g<Client>()));
    g.registerLazySingleton<GitlabRemoteDataSource>(
        () => GitlabRemoteDataSourceImpl(client: g<Client>()));
    g.registerLazySingleton<MetropoleLocalDataSource>(() =>
        MetropoleLocalDataSourceImpl(
            directoryManager: g<DirectoryManager>(),
            zipDecoder: g<ZipDecoder>()));
    g.registerLazySingleton<MetropoleRemoteDataSource>(
        () => MetropoleRemoteDataSourceImpl(client: g<Client>()));
    g.registerLazySingleton<SNCFLocalDataSource>(() => SNCFLocalDataSourceImpl(
        directoryManager: g<DirectoryManager>(), zipDecoder: g<ZipDecoder>()));
    g.registerLazySingleton<SNCFRemoteDataSource>(
        () => SNCFRemoteDataSourceImpl(client: g<Client>()));
    g.registerLazySingleton<GithubAssetMapper>(
        () => GithubAssetMapper(userMapper: g<GithubUserMapper>()));
    g.registerLazySingleton<RouteMapper>(
        () => RouteMapper(tripMapper: g<TripMapper>()));
    g.registerLazySingleton<AppUserRepository>(() => AppUserRepositoryImpl(
        dataSource: g<FirebaseAuthDataSource>(),
        userMapper: g<AppUserMapper>()));
    g.registerLazySingleton<GitlabUserRepository>(() =>
        GitlabUserRepositoryImpl(
            g<GitlabRemoteDataSource>(), g<GitlabUserMapper>()));
    g.registerLazySingleton<MetropoleRouteRepository>(
        () => MetropoleRouteRepositoryImpl(
              localDataSource: g<MetropoleLocalDataSource>(),
              remoteDataSource: g<MetropoleRemoteDataSource>(),
              networkInfo: g<NetworkInfo>(),
              routeMapper: g<RouteMapper>(),
              tripMapper: g<TripMapper>(),
              calendarMapper: g<CalendarMapper>(),
              stopTimeMapper: g<StopTimeMapper>(),
              stopMapper: g<StopMapper>(),
            ));
    g.registerLazySingleton<SNCFRouteRepository>(() => SNCFRouteRepositoryImpl(
          localDataSource: g<SNCFLocalDataSource>(),
          remoteDataSource: g<SNCFRemoteDataSource>(),
          networkInfo: g<NetworkInfo>(),
          routeMapper: g<RouteMapper>(),
          tripMapper: g<TripMapper>(),
          calendarMapper: g<CalendarMapper>(),
          stopTimeMapper: g<StopTimeMapper>(),
          stopMapper: g<StopMapper>(),
        ));
    g.registerLazySingleton<GetAppUser>(
        () => GetAppUser(g<AppUserRepository>()));
    g.registerLazySingleton<IsSignedIn>(
        () => IsSignedIn(g<AppUserRepository>()));
    g.registerLazySingleton<SetUserData>(
        () => SetUserData(g<AppUserRepository>()));
    g.registerLazySingleton<FirebaseAuthSignIn>(
        () => FirebaseAuthSignIn(g<AppUserRepository>()));
    g.registerLazySingleton<FirebaseAuthSignOut>(
        () => FirebaseAuthSignOut(g<AppUserRepository>()));
    g.registerLazySingleton<FirebaseAuthSignUp>(
        () => FirebaseAuthSignUp(g<AppUserRepository>()));
    g.registerLazySingleton<GetGitlabUser>(
        () => GetGitlabUser(g<GitlabUserRepository>()));
    g.registerLazySingleton<FetchBusTrips>(
        () => FetchBusTrips(g<MetropoleRouteRepository>()));
    g.registerLazySingleton<FetchTrainTrips>(
        () => FetchTrainTrips(g<SNCFRouteRepository>()));
    g.registerFactory<AuthenticationBloc>(() => AuthenticationBloc(
          getAppUser: g<GetAppUser>(),
          isSignedIn: g<IsSignedIn>(),
          signOut: g<FirebaseAuthSignOut>(),
        ));
    g.registerFactory<ForgotBloc>(
        () => ForgotBloc(firebaseAuthDataSource: g<FirebaseAuthDataSource>()));
    g.registerFactory<LoginBloc>(
        () => LoginBloc(firebaseAuthSignIn: g<FirebaseAuthSignIn>()));
    g.registerFactory<RegisterBloc>(
        () => RegisterBloc(firebaseAuthSignUp: g<FirebaseAuthSignUp>()));
    g.registerFactory<UserDataBloc>(
        () => UserDataBloc(setUserData: g<SetUserData>()));
    g.registerFactory<GitlabUserBloc>(
        () => GitlabUserBloc(getGitlabUser: g<GetGitlabUser>()));
    g.registerFactory<BusTripsBloc>(
        () => BusTripsBloc(fetchBusTrips: g<FetchBusTrips>()));
    g.registerFactory<TrainTripsBloc>(
        () => TrainTripsBloc(fetchTrainTrips: g<FetchTrainTrips>()));
  }
}

class _$RegisterModule extends RegisterModule {
  @override
  Connectivity get connectivity => Connectivity();
  @override
  ZipDecoder get zipDecoder => ZipDecoder();
}
