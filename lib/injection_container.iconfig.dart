// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:app_pym/domain/repositories/firebase_auth/mock_app_user_repository.dart';
import 'package:app_pym/domain/repositories/firebase_auth/app_user_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/mock_batiment_position_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_position_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/mock_batiment_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_repository.dart';
import 'package:app_pym/register_module.dart';
import 'package:hive/hive.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:app_pym/domain/repositories/app_pym/mock_categorie_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/categorie_repository.dart';
import 'package:http/src/client.dart';
import 'package:app_pym/data/devices/compass_device.dart';
import 'package:app_pym/data/devices/compass_device_mock.dart';
import 'package:connectivity/connectivity.dart';
import 'package:app_pym/domain/repositories/map_pym/mock_entreprise_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/entreprise_repository.dart';
import 'package:app_pym/domain/usecases/services/mock_fetch_categories.dart';
import 'package:app_pym/domain/usecases/services/fetch_categories.dart';
import 'package:app_pym/domain/usecases/services/mock_fetch_services_of_categorie.dart';
import 'package:app_pym/domain/usecases/services/fetch_services_of_categorie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:app_pym/data/datasources/mock_firebase_auth_data_source.dart';
import 'package:app_pym/data/datasources/firebase_auth_data_source.dart';
import 'package:app_pym/domain/usecases/firebase_auth/mock_firebase_auth.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signin.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signout.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signup.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/datasources/mock_firestore_data_source.dart';
import 'package:app_pym/domain/usecases/firebase_auth/forgot_password.dart';
import 'package:geolocator/geolocator.dart';
import 'package:app_pym/data/devices/geolocator_device_mock.dart';
import 'package:app_pym/data/devices/geolocator_device.dart';
import 'package:app_pym/domain/usecases/firebase_auth/get_app_user.dart';
import 'package:app_pym/domain/usecases/cartographie/get_batiment_detail.dart';
import 'package:app_pym/domain/usecases/cartographie/mock_get_batiment_detail.dart';
import 'package:app_pym/domain/usecases/cartographie/get_entreprises_of_batiment.dart';
import 'package:app_pym/domain/usecases/cartographie/mock_get_entreprises_of_batiment.dart';
import 'package:app_pym/domain/usecases/cartographie/load_page_and_place_batiments.dart';
import 'package:app_pym/domain/usecases/cartographie/mock_load_page_and_place_batiments.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/login/login_bloc.dart';
import 'package:app_pym/presentation/blocs/main/main_page_bloc.dart';
import 'package:app_pym/data/datasources/mock_map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/mock_map_pym_remote_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/core/network/mock_network_info.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/core/permission_handler/permission_handler.dart';
import 'package:app_pym/core/permission_handler/mock_permission_handler.dart';
import 'package:app_pym/domain/usecases/firebase_auth/send_email_confirmation.dart';
import 'package:app_pym/domain/repositories/app_pym/mock_service_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/service_repository.dart';
import 'package:app_pym/data/repositories/app_pym/service_repository_impl.dart';
import 'package:app_pym/presentation/blocs/services/services_of_categorie/services_of_categorie_bloc.dart';
import 'package:app_pym/domain/usecases/firebase_auth/set_user_data.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/user_data/user_data_bloc.dart';
import 'package:app_pym/data/repositories/firebase_auth/app_user_repository_impl.dart';
import 'package:app_pym/presentation/blocs/cartographie/ar_view/ar_view_bloc.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/authentication/authentication_bloc.dart';
import 'package:app_pym/presentation/blocs/cartographie/batiment/batiment_bloc.dart';
import 'package:app_pym/data/repositories/map_pym/batiment_position_repository_impl.dart';
import 'package:app_pym/data/repositories/map_pym/batiment_repository_impl.dart';
import 'package:app_pym/data/repositories/app_pym/categorie_repository_impl.dart';
import 'package:app_pym/presentation/blocs/services/categories/categories_bloc.dart';
import 'package:app_pym/presentation/blocs/cartographie/compass/compass_bloc.dart';
import 'package:app_pym/presentation/blocs/cartographie/entreprise/entreprise_bloc.dart';
import 'package:app_pym/data/repositories/map_pym/entreprise_repository_impl.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/forgot/forgot_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerFactory<AppUserRepository>(() => MockAppUserRepository());
    g.registerFactory<BatimentPositionRepository>(
        () => MockBatimentPositionRepository());
    g.registerFactory<BatimentRepository>(() => MockBatimentRepository());
    g.registerFactory<Box<BatimentModel>>(() => MockBatimentsBox());
    g.registerFactory<Box<EntrepriseModel>>(() => MockEntreprisesBox());
    g.registerFactory<Box<List<BatimentPositionModel>>>(
        () => MockBatimentPositionBox());
    g.registerFactory<CategorieRepository>(() => MockCategorieRepository());
    g.registerFactory<Client>(() => MockHttpClient());
    g.registerFactory<CompassDevice>(() => MockCompassDevice());
    g.registerFactory<Connectivity>(() => MockDataConnectionChecker());
    g.registerFactory<EntrepriseRepository>(() => MockEntrepriseRepository());
    g.registerFactory<FetchCategories>(() => MockFetchCategories());
    g.registerFactory<FetchServicesOfCategorie>(
        () => MockFetchServicesOfCategorie());
    g.registerFactory<FirebaseAuth>(() => MockFirebaseAuth());
    g.registerFactory<FirebaseAuthDataSource>(
        () => MockFirebaseAuthDataSource());
    g.registerFactory<FirebaseAuthSignIn>(() => MockFirebaseAuthSignIn());
    g.registerFactory<FirebaseAuthSignOut>(() => MockFirebaseAuthSignOut());
    g.registerFactory<FirebaseAuthSignUp>(() => MockFirebaseAuthSignUp());
    g.registerFactory<Firestore>(() => MockFirestore());
    g.registerFactory<FirestoreDataSource>(() => MockFirestoreDataSource());
    g.registerFactory<ForgotPassword>(() => MockForgotPassword());
    g.registerFactory<Geolocator>(() => MockGeolocator());
    g.registerFactory<GeolocatorDevice>(() => MockGeolocatorDevice());
    g.registerFactory<GetAppUser>(() => MockGetAppUser());
    g.registerFactory<GetBatimentDetail>(() => MockGetBatimentDetail());
    g.registerFactory<GetEntreprisesOfBatiment>(
        () => MockGetEntreprisesOfBatiment());
    g.registerFactory<LoadPageAndPlaceBatiment>(
        () => MockLoadPageAndPlaceBatiment());
    g.registerFactory<MapPymLocalDataSource>(() => MockMapPymLocalDataSource());
    g.registerFactory<MapPymRemoteDataSource>(
        () => MockMapPymRemoteDataSource());
    g.registerFactory<NetworkInfo>(() => MockNetworkInfo());
    g.registerFactory<PermissionHandler>(() => MockPermissionHandler());
    g.registerFactory<SendEmailConfirmation>(() => MockSendEmailConfirmation());
    g.registerFactory<ServiceRepository>(() => MockServiceRepository());
    g.registerFactory<SetUserData>(() => MockSetUserData());
  }

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerFactory<Box<BatimentModel>>(() => registerModule.batimentsBox);
    g.registerFactory<Box<EntrepriseModel>>(
        () => registerModule.entreprisesBox);
    g.registerFactory<Box<List<BatimentPositionModel>>>(
        () => registerModule.batimentPositionBox);
    g.registerLazySingleton<Client>(() => registerModule.httpClient);
    g.registerLazySingleton<CompassDevice>(() => CompassDeviceImpl());
    g.registerLazySingleton<Connectivity>(() => registerModule.connectivity);
    g.registerLazySingleton<FetchCategories>(
        () => FetchCategories(g<CategorieRepository>()));
    g.registerFactory<FirebaseAuth>(() => registerModule.firebaseAuth);
    g.registerLazySingleton<FirebaseAuthSignIn>(
        () => FirebaseAuthSignIn(g<AppUserRepository>()));
    g.registerLazySingleton<FirebaseAuthSignOut>(
        () => FirebaseAuthSignOut(g<AppUserRepository>()));
    g.registerLazySingleton<FirebaseAuthSignUp>(
        () => FirebaseAuthSignUp(g<AppUserRepository>()));
    g.registerFactory<Firestore>(() => registerModule.firestore);
    g.registerLazySingleton<FirestoreDataSource>(
        () => FirestoreDataSourceImpl(firestore: g<Firestore>()));
    g.registerLazySingleton<ForgotPassword>(
        () => ForgotPassword(g<FirebaseAuthDataSource>()));
    g.registerLazySingleton<Geolocator>(() => registerModule.geolocator);
    g.registerLazySingleton<GeolocatorDevice>(
        () => GeolocatorDeviceImpl(geolocator: g<Geolocator>()));
    g.registerLazySingleton<GetAppUser>(
        () => GetAppUser(g<AppUserRepository>()));
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
    g.registerFactory<LoginBloc>(
        () => LoginBloc(g<FirebaseAuthSignIn>(), g<FirebaseAuthSignUp>()));
    g.registerFactory<MainPageBloc>(() => MainPageBloc());
    g.registerLazySingleton<MapPymLocalDataSource>(
        () => MapPymLocalDataSourceImpl(
              batimentsBox: g<Box<BatimentModel>>(),
              batimentsPositionBox: g<Box<List<BatimentPositionModel>>>(),
              entreprisesBox: g<Box<EntrepriseModel>>(),
            ));
    g.registerLazySingleton<MapPymRemoteDataSource>(
        () => MapPymRemoteDataSourceDevImpl());
    g.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(g<Connectivity>()));
    g.registerLazySingleton<PermissionHandler>(() => PermissionHandlerImpl());
    g.registerLazySingleton<SendEmailConfirmation>(
        () => SendEmailConfirmation(g<FirebaseAuthDataSource>()));
    g.registerLazySingleton<ServiceRepository>(
        () => ServiceRepositoryImpl(dataSource: g<FirestoreDataSource>()));
    g.registerFactory<ServicesOfCategorieBloc>(
        () => ServicesOfCategorieBloc(g<FetchServicesOfCategorie>()));
    g.registerLazySingleton<SetUserData>(
        () => SetUserData(g<AppUserRepository>()));
    g.registerFactory<UserDataBloc>(() => UserDataBloc(g<SetUserData>()));
    g.registerLazySingleton<AppUserRepository>(
        () => AppUserRepositoryImpl(dataSource: g<FirebaseAuthDataSource>()));
    g.registerFactory<ArViewBloc>(
        () => ArViewBloc(g<LoadPageAndPlaceBatiment>()));
    g.registerFactory<AuthenticationBloc>(() => AuthenticationBloc(
          getAppUser: g<GetAppUser>(),
          signOut: g<FirebaseAuthSignOut>(),
          sendEmailConfirmation: g<SendEmailConfirmation>(),
        ));
    g.registerFactory<BatimentBloc>(() => BatimentBloc(g<GetBatimentDetail>()));
    g.registerLazySingleton<BatimentPositionRepository>(
        () => BatimentPositionRepositoryImpl(
              localDataSource: g<MapPymLocalDataSource>(),
              remoteDataSource: g<MapPymRemoteDataSource>(),
              networkInfo: g<NetworkInfo>(),
            ));
    g.registerLazySingleton<BatimentRepository>(() => BatimentRepositoryImpl(
          localDataSource: g<MapPymLocalDataSource>(),
          remoteDataSource: g<MapPymRemoteDataSource>(),
          networkInfo: g<NetworkInfo>(),
        ));
    g.registerLazySingleton<CategorieRepository>(
        () => CategorieRepositoryImpl(dataSource: g<FirestoreDataSource>()));
    g.registerFactory<CategoriesBloc>(
        () => CategoriesBloc(g<FetchCategories>()));
    g.registerFactory<CompassBloc>(() => CompassBloc(
        permissionHandler: g<PermissionHandler>(),
        compassDevice: g<CompassDevice>()));
    g.registerFactory<EntrepriseBloc>(
        () => EntrepriseBloc(g<GetEntreprisesOfBatiment>()));
    g.registerLazySingleton<EntrepriseRepository>(
        () => EntrepriseRepositoryImpl(
              localDataSource: g<MapPymLocalDataSource>(),
              remoteDataSource: g<MapPymRemoteDataSource>(),
              networkInfo: g<NetworkInfo>(),
            ));
    g.registerLazySingleton<FetchServicesOfCategorie>(
        () => FetchServicesOfCategorie(g<ServiceRepository>()));
    g.registerLazySingleton<FirebaseAuthDataSource>(() =>
        FirebaseAuthDataSourceImpl(
            auth: g<FirebaseAuth>(), db: g<Firestore>()));
    g.registerFactory<ForgotBloc>(() => ForgotBloc(g<ForgotPassword>()));
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
