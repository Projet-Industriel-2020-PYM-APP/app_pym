// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:app_pym/core/network/mock_network_info.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/core/permission_handler/mock_permission_handler.dart';
import 'package:app_pym/core/permission_handler/permission_handler.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/datasources/mock_github_local_data_source.dart';
import 'package:app_pym/data/datasources/github_local_data_source.dart';
import 'package:app_pym/data/datasources/mock_github_remote_data_source.dart';
import 'package:app_pym/data/datasources/github_remote_data_source.dart';
import 'package:app_pym/data/datasources/mock_map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/mock_map_pym_remote_data_source.dart';
import 'package:app_pym/data/devices/compass_device.dart';
import 'package:app_pym/data/devices/compass_device_mock.dart';
import 'package:app_pym/data/devices/geolocator_device_mock.dart';
import 'package:app_pym/data/devices/geolocator_device.dart';
import 'package:app_pym/data/mappers/firebase_auth/app_user_mapper.dart';
import 'package:app_pym/data/mappers/github/mock_asset_mapper.dart';
import 'package:app_pym/data/mappers/github/asset_mapper.dart';
import 'package:app_pym/data/mappers/github/mock_release_mapper.dart';
import 'package:app_pym/data/mappers/github/release_mapper.dart';
import 'package:app_pym/data/mappers/github/mock_user_mapper.dart';
import 'package:app_pym/data/mappers/github/user_mapper.dart';
import 'package:app_pym/data/mappers/gitlab_user_mapper.dart';
import 'package:app_pym/data/mappers/map_pym/batiment_mapper.dart';
import 'package:app_pym/data/mappers/map_pym/batiment_position_mapper.dart';
import 'package:app_pym/data/mappers/map_pym/entreprise_mapper.dart';
import 'package:app_pym/data/mappers/map_pym/mock_batiment_mapper.dart';
import 'package:app_pym/data/mappers/map_pym/mock_batiment_position_mapper.dart';
import 'package:app_pym/data/mappers/map_pym/mock_entreprise_mapper.dart';
import 'package:app_pym/data/repositories/github/releases_repository_impl.dart';
import 'package:app_pym/domain/repositories/github/releases_repository.dart';
import 'package:app_pym/data/repositories/github/user_repository_impl.dart';
import 'package:app_pym/domain/repositories/github/user_repository.dart';
import 'package:app_pym/data/repositories/map_pym/batiment_position_repository_impl.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_position_repository.dart';
import 'package:app_pym/data/repositories/map_pym/batiment_repository_impl.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_repository.dart';
import 'package:app_pym/data/repositories/map_pym/entreprise_repository_impl.dart';
import 'package:app_pym/domain/repositories/map_pym/entreprise_repository.dart';
import 'package:app_pym/domain/repositories/github/mock_releases_repository.dart';
import 'package:app_pym/domain/repositories/github/mock_user_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/mock_batiment_position_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/mock_batiment_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/mock_entreprise_repository.dart';
import 'package:app_pym/domain/usecases/cartographie/get_batiment_detail.dart';
import 'package:app_pym/domain/usecases/cartographie/get_entreprises_of_batiment.dart';
import 'package:app_pym/domain/usecases/cartographie/load_page_and_place_batiments.dart';
import 'package:app_pym/domain/usecases/cartographie/mock_get_batiment_detail.dart';
import 'package:app_pym/domain/usecases/cartographie/mock_get_entreprises_of_batiment.dart';
import 'package:app_pym/domain/usecases/cartographie/mock_load_page_and_place_batiments.dart';
import 'package:app_pym/domain/usecases/github/get_releases.dart';
import 'package:app_pym/domain/usecases/github/get_user.dart';
import 'package:app_pym/domain/usecases/github/mock_get_releases.dart';
import 'package:app_pym/domain/usecases/github/mock_get_user.dart';
import 'package:app_pym/presentation/blocs/cartographie/ar_view/ar_view_bloc.dart';
import 'package:app_pym/presentation/blocs/cartographie/batiment/batiment_bloc.dart';
import 'package:app_pym/presentation/blocs/cartographie/compass/compass_bloc.dart';
import 'package:app_pym/presentation/blocs/cartographie/entreprise/entreprise_bloc.dart';
import 'package:app_pym/presentation/blocs/github_releases/github_releases_bloc.dart';
import 'package:app_pym/presentation/blocs/github_user/github_user_bloc.dart';
import 'package:app_pym/presentation/blocs/main/main_page_bloc.dart';
import 'package:app_pym/register_module.dart';
import 'package:hive/hive.dart';
import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:connectivity/connectivity.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/src/client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:app_pym/data/mappers/app_pym/action_mapper.dart';
import 'package:app_pym/data/mappers/app_pym/service_mapper.dart';
import 'package:app_pym/data/mappers/app_pym/categorie_mapper.dart';
import 'package:app_pym/data/mappers/app_pym/mock_action_mapper.dart';
import 'package:app_pym/data/mappers/app_pym/mock_categorie_mapper.dart';
import 'package:app_pym/data/mappers/app_pym/mock_service_mapper.dart';
import 'package:app_pym/domain/repositories/app_pym/mock_categorie_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/categorie_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/mock_service_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/service_repository.dart';
import 'package:app_pym/domain/usecases/services/mock_fetch_categories.dart';
import 'package:app_pym/domain/usecases/services/fetch_categories.dart';
import 'package:app_pym/domain/usecases/services/mock_fetch_services_of_categorie.dart';
import 'package:app_pym/domain/usecases/services/fetch_services_of_categorie.dart';
import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/datasources/mock_firestore_data_source.dart';
import 'package:app_pym/data/datasources/firebase_auth_data_source.dart';
import 'package:app_pym/data/datasources/gitlab_remote_data_source.dart';
import 'package:app_pym/data/repositories/firebase_auth/app_user_repository_impl.dart';
import 'package:app_pym/domain/repositories/firebase_auth/app_user_repository.dart';
import 'package:app_pym/data/repositories/gitlab_user_repository_impl.dart';
import 'package:app_pym/domain/repositories/gitlab_user_repository.dart';
import 'package:app_pym/domain/usecases/firebase_auth/get_user.dart';
import 'package:app_pym/domain/usecases/firebase_auth/is_signed_in.dart';
import 'package:app_pym/domain/usecases/firebase_auth/set_user_data.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signin.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signout.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signup.dart';
import 'package:app_pym/domain/usecases/get_gitlab_user.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/authentication/authentication_bloc.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/forgot/forgot_bloc.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/login/login_bloc.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/register/register_bloc.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/user_data/user_data_bloc.dart';
import 'package:app_pym/presentation/blocs/gitlab_user/gitlab_user_bloc.dart';
import 'package:app_pym/presentation/blocs/services/categories/categories_bloc.dart';
import 'package:app_pym/presentation/blocs/services/services_of_categorie/services_of_categorie_bloc.dart';
import 'package:app_pym/data/repositories/app_pym/categorie_repository_impl.dart';
import 'package:app_pym/data/repositories/app_pym/service_repository_impl.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerFactory<NetworkInfo>(() => MockNetworkInfo());
    g.registerFactory<PermissionHandler>(() => MockPermissionHandler());
    g.registerFactory<GithubLocalDataSource>(() => MockGithubLocalDataSource());
    g.registerFactory<GithubRemoteDataSource>(
        () => MockGithubRemoteDataSource());
    g.registerFactory<MapPymLocalDataSource>(() => MockMapPymLocalDataSource());
    g.registerFactory<MapPymRemoteDataSource>(
        () => MockMapPymRemoteDataSource());
    g.registerFactory<CompassDevice>(() => MockCompassDevice());
    g.registerFactory<GeolocatorDevice>(() => MockGeolocatorDevice());
    g.registerFactory<GithubAssetMapper>(() => MockGithubAssetMapper());
    g.registerFactory<GithubReleaseMapper>(() => MockGithubReleaseMapper());
    g.registerFactory<GithubUserMapper>(() => MockGithubUserMapper());
    g.registerFactory<BatimentMapper>(() => MockBatimentMapper());
    g.registerFactory<BatimentPositionMapper>(
        () => MockBatimentPositionMapper());
    g.registerFactory<EntrepriseMapper>(() => MockEntrepriseMapper());
    g.registerFactory<ReleasesRepository>(() => MockReleasesRepository());
    g.registerFactory<UserRepository>(() => MockUserRepository());
    g.registerFactory<BatimentPositionRepository>(
        () => MockBatimentPositionRepository());
    g.registerFactory<BatimentRepository>(() => MockBatimentRepository());
    g.registerFactory<EntrepriseRepository>(() => MockEntrepriseRepository());
    g.registerFactory<GetBatimentDetail>(() => MockGetBatimentDetail());
    g.registerFactory<GetEntreprisesOfBatiment>(
        () => MockGetEntreprisesOfBatiment());
    g.registerFactory<LoadPageAndPlaceBatiment>(
        () => MockLoadPageAndPlaceBatiment());
    g.registerFactory<GetGithubReleases>(() => MockGetGithubReleases());
    g.registerFactory<GetGithubUser>(() => MockGetGithubUser());
    g.registerFactory<Box<List<BatimentPositionModel>>>(
        () => MockBatimentPositionBox());
    g.registerFactory<Box<BatimentModel>>(() => MockBatimentsBox());
    g.registerFactory<Box<String>>(() => MockBox());
    g.registerFactory<Connectivity>(() => MockDataConnectionChecker());
    g.registerFactory<Box<EntrepriseModel>>(() => MockEntreprisesBox());
    g.registerFactory<Firestore>(() => MockFirestore());
    g.registerFactory<Geolocator>(() => MockGeolocator());
    g.registerFactory<Client>(() => MockHttpClient());
    g.registerFactory<ActionMapper>(() => MockActionMapper());
    g.registerFactory<CategorieMapper>(() => MockCategorieMapper());
    g.registerFactory<ServiceMapper>(() => MockServiceMapper());
    g.registerFactory<CategorieRepository>(() => MockCategorieRepository());
    g.registerFactory<ServiceRepository>(() => MockServiceRepository());
    g.registerFactory<FetchCategories>(() => MockFetchCategories());
    g.registerFactory<FetchServicesOfCategorie>(
        () => MockFetchServicesOfCategorie());
    g.registerFactory<FirestoreDataSource>(() => MockFirestoreDataSource());
  }

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<PermissionHandler>(() => PermissionHandlerImpl());
    g.registerLazySingleton<MapPymRemoteDataSource>(
        () => MapPymRemoteDataSourceDevImpl());
    g.registerLazySingleton<CompassDevice>(() => CompassDeviceImpl());
    g.registerLazySingleton<AppUserMapper>(() => AppUserMapper());
    g.registerLazySingleton<GithubReleaseMapper>(() => GithubReleaseMapper(
        userMapper: g<GithubUserMapper>(),
        assetMapper: g<GithubAssetMapper>()));
    g.registerLazySingleton<GithubUserMapper>(() => GithubUserMapper());
    g.registerLazySingleton<GitlabUserMapper>(() => GitlabUserMapper());
    g.registerLazySingleton<BatimentMapper>(() => BatimentMapper());
    g.registerLazySingleton<BatimentPositionMapper>(
        () => BatimentPositionMapper());
    g.registerLazySingleton<EntrepriseMapper>(() => EntrepriseMapper());
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
    g.registerLazySingleton<BatimentPositionRepository>(
        () => BatimentPositionRepositoryImpl(
              localDataSource: g<MapPymLocalDataSource>(),
              remoteDataSource: g<MapPymRemoteDataSource>(),
              networkInfo: g<NetworkInfo>(),
              mapper: g<BatimentPositionMapper>(),
            ));
    g.registerLazySingleton<BatimentRepository>(() => BatimentRepositoryImpl(
          localDataSource: g<MapPymLocalDataSource>(),
          remoteDataSource: g<MapPymRemoteDataSource>(),
          networkInfo: g<NetworkInfo>(),
          mapper: g<BatimentMapper>(),
        ));
    g.registerLazySingleton<EntrepriseRepository>(
        () => EntrepriseRepositoryImpl(
              localDataSource: g<MapPymLocalDataSource>(),
              remoteDataSource: g<MapPymRemoteDataSource>(),
              networkInfo: g<NetworkInfo>(),
              mapper: g<EntrepriseMapper>(),
            ));
    g.registerLazySingleton<GetBatimentDetail>(
        () => GetBatimentDetail(batimentRepository: g<BatimentRepository>()));
    g.registerLazySingleton<GetEntreprisesOfBatiment>(() =>
        GetEntreprisesOfBatiment(
            entrepriseRepository: g<EntrepriseRepository>()));
    g.registerLazySingleton<LoadPageAndPlaceBatiment>(
        () => LoadPageAndPlaceBatiment(
              geolocatorDevice: g<GeolocatorDevice>(),
              batimentPositionRepository: g<BatimentPositionRepository>(),
              batimentRepository: g<BatimentRepository>(),
            ));
    g.registerLazySingleton<GetGithubReleases>(
        () => GetGithubReleases(g<ReleasesRepository>()));
    g.registerLazySingleton<GetGithubUser>(
        () => GetGithubUser(g<UserRepository>()));
    g.registerFactory<ArViewBloc>(
        () => ArViewBloc(g<LoadPageAndPlaceBatiment>()));
    g.registerFactory<BatimentBloc>(() => BatimentBloc(g<GetBatimentDetail>()));
    g.registerFactory<CompassBloc>(() => CompassBloc(
        permissionHandler: g<PermissionHandler>(),
        compassDevice: g<CompassDevice>()));
    g.registerFactory<EntrepriseBloc>(
        () => EntrepriseBloc(g<GetEntreprisesOfBatiment>()));
    g.registerFactory<GithubReleasesBloc>(
        () => GithubReleasesBloc(getGithubReleases: g<GetGithubReleases>()));
    g.registerFactory<GithubUserBloc>(
        () => GithubUserBloc(getGithubUser: g<GetGithubUser>()));
    g.registerFactory<MainPageBloc>(() => MainPageBloc());
    g.registerFactory<Box<List<BatimentPositionModel>>>(
        () => registerModule.batimentPositionBox);
    g.registerFactory<Box<BatimentModel>>(() => registerModule.batimentsBox);
    g.registerLazySingleton<Connectivity>(() => registerModule.connectivity);
    g.registerFactory<Box<EntrepriseModel>>(
        () => registerModule.entreprisesBox);
    g.registerFactory<FirebaseAuth>(() => registerModule.firebaseAuth);
    g.registerFactory<Firestore>(() => registerModule.firestore);
    g.registerLazySingleton<Geolocator>(() => registerModule.geolocator);
    g.registerFactory<Box<String>>(() => registerModule.githubBox);
    g.registerLazySingleton<Client>(() => registerModule.httpClient);
    g.registerLazySingleton<ActionMapper>(() => ActionMapper());
    g.registerLazySingleton<ServiceMapper>(
        () => ServiceMapper(actionMapper: g<ActionMapper>()));
    g.registerLazySingleton<CategorieMapper>(
        () => CategorieMapper(actionMapper: g<ActionMapper>()));
    g.registerLazySingleton<FirestoreDataSource>(
        () => FirestoreDataSourceImpl(firestore: g<Firestore>()));
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
    g.registerLazySingleton<MapPymLocalDataSource>(
        () => MapPymLocalDataSourceImpl(
              batimentsBox: g<Box<BatimentModel>>(),
              batimentsPositionBox: g<Box<List<BatimentPositionModel>>>(),
              entreprisesBox: g<Box<EntrepriseModel>>(),
            ));
    g.registerLazySingleton<GeolocatorDevice>(
        () => GeolocatorDeviceImpl(geolocator: g<Geolocator>()));
    g.registerLazySingleton<GithubAssetMapper>(
        () => GithubAssetMapper(userMapper: g<GithubUserMapper>()));
    g.registerLazySingleton<AppUserRepository>(() => AppUserRepositoryImpl(
        dataSource: g<FirebaseAuthDataSource>(),
        userMapper: g<AppUserMapper>()));
    g.registerLazySingleton<GitlabUserRepository>(() =>
        GitlabUserRepositoryImpl(
            g<GitlabRemoteDataSource>(), g<GitlabUserMapper>()));
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
    g.registerLazySingleton<FetchCategories>(
        () => FetchCategories(g<CategorieRepository>()));
    g.registerLazySingleton<FetchServicesOfCategorie>(
        () => FetchServicesOfCategorie(g<ServiceRepository>()));
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
    g.registerFactory<CategoriesBloc>(
        () => CategoriesBloc(g<FetchCategories>()));
    g.registerFactory<ServicesOfCategorieBloc>(
        () => ServicesOfCategorieBloc(g<FetchServicesOfCategorie>()));
    g.registerLazySingleton<CategorieRepository>(() => CategorieRepositoryImpl(
        dataSource: g<FirestoreDataSource>(), mapper: g<CategorieMapper>()));
    g.registerLazySingleton<ServiceRepository>(() => ServiceRepositoryImpl(
        dataSource: g<FirestoreDataSource>(), mapper: g<ServiceMapper>()));
  }

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerLazySingleton<MapPymRemoteDataSource>(
        () => MapPymRemoteDataSourceImpl(client: g<Client>()));
  }
}

class _$RegisterModule extends RegisterModule {
  @override
  Connectivity get connectivity => Connectivity();
}
