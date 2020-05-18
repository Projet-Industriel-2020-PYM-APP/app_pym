// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:app_pym/domain/repositories/authentication/mock_app_user_repository.dart';
import 'package:app_pym/domain/repositories/authentication/app_user_repository.dart';
import 'package:app_pym/domain/usecases/authentication/mock_authentication.dart';
import 'package:app_pym/domain/usecases/authentication/signin.dart';
import 'package:app_pym/domain/usecases/authentication/signout.dart';
import 'package:app_pym/domain/usecases/authentication/signup.dart';
import 'package:app_pym/data/services/mock_authentication_service.dart';
import 'package:app_pym/data/services/authentication_service.dart';
import 'package:app_pym/data/services/authentication_service_dev_impl.dart';
import 'package:app_pym/dev_register_module.dart';
import 'package:app_pym/domain/repositories/map_pym/mock_batiment_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/mock_booking_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/booking_repository.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:hive/hive.dart';
import 'package:app_pym/register_module.dart';
import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:app_pym/data/models/app_pym/contact_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/data/models/app_pym/post_model.dart';
import 'package:app_pym/data/models/app_pym/service_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:http/src/client.dart';
import 'package:app_pym/data/devices/compass_device.dart';
import 'package:app_pym/data/devices/compass_device_mock.dart';
import 'package:connectivity/connectivity.dart';
import 'package:app_pym/domain/repositories/app_pym/mock_contact_categorie_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_categorie_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/mock_contact_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_repository.dart';
import 'package:app_pym/domain/usecases/services/booking/delete_booking_of_service.dart';
import 'package:app_pym/core/directory_manager/directory_manager.dart';
import 'package:app_pym/core/directory_manager/mock_directory_manager.dart';
import 'package:app_pym/domain/repositories/map_pym/mock_entreprise_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/entreprise_repository.dart';
import 'package:app_pym/domain/usecases/services/booking/fetch_all_bookings_of_service.dart';
import 'package:app_pym/presentation/blocs/services/booking/fetch_all_bookings_of_service/fetch_all_bookings_of_service_bloc.dart';
import 'package:app_pym/domain/usecases/contacts/mock_fetch_contact_categories.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_categories.dart';
import 'package:app_pym/domain/usecases/contacts/mock_fetch_contact_of_categorie.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_of_categorie.dart';
import 'package:app_pym/domain/usecases/services/mock_fetch_service_categories.dart';
import 'package:app_pym/domain/usecases/services/fetch_service_categories.dart';
import 'package:app_pym/domain/usecases/services/mock_fetch_services_of_categorie.dart';
import 'package:app_pym/domain/usecases/services/fetch_services_of_categorie.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:app_pym/domain/usecases/authentication/forgot_password.dart';
import 'package:geolocator/geolocator.dart';
import 'package:app_pym/data/devices/geolocator_device.dart';
import 'package:app_pym/data/devices/geolocator_device_mock.dart';
import 'package:app_pym/domain/usecases/authentication/get_app_user.dart';
import 'package:app_pym/domain/usecases/cartographie/get_batiment_detail.dart';
import 'package:app_pym/domain/usecases/cartographie/mock_get_batiment_detail.dart';
import 'package:app_pym/domain/usecases/cartographie/get_entreprises_of_batiment.dart';
import 'package:app_pym/domain/usecases/cartographie/mock_get_entreprises_of_batiment.dart';
import 'package:app_pym/domain/usecases/fil_actualite/mock_get_posts.dart';
import 'package:app_pym/domain/usecases/fil_actualite/get_posts.dart';
import 'package:app_pym/domain/usecases/cartographie/load_page_and_place_batiments.dart';
import 'package:app_pym/domain/usecases/cartographie/mock_load_page_and_place_batiments.dart';
import 'package:app_pym/presentation/blocs/authentication/login/login_bloc.dart';
import 'package:app_pym/presentation/blocs/main/main_page_bloc.dart';
import 'package:app_pym/data/datasources/mock_map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/datasources/mock_map_pym_remote_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source_dev_impl.dart';
import 'package:app_pym/data/datasources/metropole_remote_data_source.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/core/network/mock_network_info.dart';
import 'package:app_pym/core/permission_handler/permission_handler.dart';
import 'package:app_pym/core/permission_handler/mock_permission_handler.dart';
import 'package:app_pym/data/repositories/app_pym/post_repository_impl.dart';
import 'package:app_pym/domain/repositories/app_pym/post_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/mock_post_repository.dart';
import 'package:app_pym/data/datasources/sncf_remote_data_source.dart';
import 'package:app_pym/domain/usecases/authentication/send_email_confirmation.dart';
import 'package:app_pym/data/repositories/app_pym/service_categorie_repository_impl.dart';
import 'package:app_pym/domain/repositories/app_pym/service_categorie_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/mock_service_categorie_repository.dart';
import 'package:app_pym/presentation/blocs/services/service_categories/service_categories_bloc.dart';
import 'package:app_pym/data/repositories/app_pym/service_repository_impl.dart';
import 'package:app_pym/domain/repositories/app_pym/service_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/mock_service_repository.dart';
import 'package:app_pym/presentation/blocs/services/services_of_categorie/services_of_categorie_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app_pym/presentation/blocs/mobility/stop_details/stop_details_bloc.dart';
import 'package:app_pym/domain/usecases/services/booking/update_booking_of_service.dart';
import 'package:archive/archive.dart';
import 'package:app_pym/domain/usecases/services/booking/add_booking_to_service.dart';
import 'package:app_pym/data/repositories/authentication/app_user_repository_impl.dart';
import 'package:app_pym/presentation/blocs/cartographie/ar_view/ar_view_bloc.dart';
import 'package:app_pym/presentation/blocs/authentication/authentication/authentication_bloc.dart';
import 'package:app_pym/presentation/blocs/cartographie/batiment/batiment_bloc.dart';
import 'package:app_pym/data/repositories/map_pym/batiment_repository_impl.dart';
import 'package:app_pym/presentation/blocs/services/booking/booking_of_service/booking_of_service_bloc.dart';
import 'package:app_pym/data/repositories/app_pym/booking_repository_impl.dart';
import 'package:app_pym/presentation/blocs/cartographie/compass/compass_bloc.dart';
import 'package:app_pym/data/repositories/app_pym/contact_categorie_repository_impl.dart';
import 'package:app_pym/presentation/blocs/contacts/contact_categories/contact_categories_bloc.dart';
import 'package:app_pym/data/repositories/app_pym/contact_repository_impl.dart';
import 'package:app_pym/presentation/blocs/cartographie/entreprise/entreprise_bloc.dart';
import 'package:app_pym/data/repositories/map_pym/entreprise_repository_impl.dart';
import 'package:app_pym/presentation/blocs/fil_actualite/fil_actualite_bloc.dart';
import 'package:app_pym/presentation/blocs/authentication/forgot/forgot_bloc.dart';
import 'package:app_pym/presentation/blocs/mobility/maps/maps_bloc.dart';
import 'package:app_pym/data/datasources/metropole_local_data_source.dart';
import 'package:app_pym/data/repositories/mobility/metropole_route_repository_impl.dart';
import 'package:app_pym/domain/repositories/mobility/route_repository.dart';
import 'package:app_pym/presentation/blocs/notification/notification_bloc.dart';
import 'package:app_pym/data/datasources/sncf_local_data_source.dart';
import 'package:app_pym/data/repositories/mobility/sncf_route_repository_impl.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_bus_route.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_bus_trips.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_train_route.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_train_trips.dart';
import 'package:app_pym/presentation/blocs/mobility/trips/trips_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final devRegisterModule = _$DevRegisterModule(g);
  final registerModule = _$RegisterModule();

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerFactory<AppUserRepository>(() => MockAppUserRepository());
    g.registerFactory<AuthSignIn>(() => MockFirebaseAuthSignIn());
    g.registerFactory<AuthSignOut>(() => MockFirebaseAuthSignOut());
    g.registerFactory<AuthSignUp>(() => MockFirebaseAuthSignUp());
    g.registerLazySingleton<AuthenticationService>(
        () => MockAuthenticationService());
    g.registerFactory<BatimentRepository>(() => MockBatimentRepository());
    g.registerFactory<BookingRepository>(() => MockBookingRepository());
    g.registerFactory<Box<BatimentModel>>(() => MockBatimentsBox());
    g.registerFactory<Box<BookingModel>>(() => MockBookingsBox());
    g.registerFactory<Box<ContactCategorieModel>>(
        () => MockContactCategoriesBox());
    g.registerFactory<Box<ContactModel>>(() => MockContactsBox());
    g.registerFactory<Box<EntrepriseModel>>(() => MockEntreprisesBox());
    g.registerFactory<Box<PostModel>>(() => MockPostsBox());
    g.registerFactory<Box<ServiceCategorieModel>>(
        () => MockServiceCategoriesBox());
    g.registerFactory<Box<ServiceModel>>(() => MockServicesBox());
    g.registerFactory<Client>(() => MockHttpClient());
    g.registerFactory<CompassDevice>(() => MockCompassDevice());
    g.registerFactory<Connectivity>(() => MockDataConnectionChecker());
    g.registerFactory<ContactCategorieRepository>(
        () => MockContactCategorieRepository());
    g.registerFactory<ContactRepository>(() => MockContactRepository());
    g.registerFactory<DirectoryManager>(() => MockDirectoryManager());
    g.registerFactory<EntrepriseRepository>(() => MockEntrepriseRepository());
    g.registerFactory<FetchContactCategories>(
        () => MockFetchContactCategories());
    g.registerFactory<FetchContactOfCategorie>(
        () => MockFetchContactOfCategorie());
    g.registerFactory<FetchServiceCategories>(
        () => MockFetchServiceCategories());
    g.registerFactory<FetchServicesOfCategorie>(
        () => MockFetchServicesOfCategorie());
    g.registerFactory<ForgotPassword>(() => MockForgotPassword());
    g.registerFactory<Geolocator>(() => MockGeolocator());
    g.registerFactory<GeolocatorDevice>(() => MockGeolocatorDevice());
    g.registerFactory<GetAppUser>(() => MockGetAppUser());
    g.registerFactory<GetBatimentDetail>(() => MockGetBatimentDetail());
    g.registerFactory<GetEntreprisesOfBatiment>(
        () => MockGetEntreprisesOfBatiment());
    g.registerFactory<GetPosts>(() => MockGetPosts());
    g.registerFactory<LoadPageAndPlaceBatiments>(
        () => MockLoadPageAndPlaceBatiment());
    g.registerFactory<MapPymLocalDataSource>(() => MockMapPymLocalDataSource());
    g.registerFactory<MapPymRemoteDataSource>(
        () => MockMapPymRemoteDataSource());
    g.registerFactory<NetworkInfo>(() => MockNetworkInfo());
    g.registerFactory<PermissionHandler>(() => MockPermissionHandler());
    g.registerFactory<PostRepository>(() => MockPostRepository());
    g.registerFactory<SendEmailConfirmation>(() => MockSendEmailConfirmation());
    g.registerFactory<ServiceCategorieRepository>(
        () => MockServiceCategorieRepository());
    g.registerFactory<ServiceRepository>(() => MockServiceRepository());
    g.registerFactory<SharedPreferences>(() => MockSharedPreferences());
    g.registerFactory<ZipDecoder>(() => MockZipDecoder());
  }

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerLazySingleton<AuthenticationService>(
        () => devRegisterModule.authenticationService);
    g.registerFactory<Box<BatimentModel>>(() => devRegisterModule.batimentsBox);
    g.registerFactory<Box<BookingModel>>(() => devRegisterModule.bookingsBox);
    g.registerFactory<Box<ContactCategorieModel>>(
        () => devRegisterModule.contactCategoriesBox);
    g.registerFactory<Box<ContactModel>>(() => devRegisterModule.contactsBox);
    g.registerFactory<Box<EntrepriseModel>>(
        () => devRegisterModule.entreprisesBox);
    g.registerFactory<Box<PostModel>>(() => devRegisterModule.postsBox);
    g.registerFactory<Box<ServiceCategorieModel>>(
        () => devRegisterModule.serviceCategoriesBox);
    g.registerFactory<Box<ServiceModel>>(() => devRegisterModule.servicesBox);
    g.registerLazySingleton<Client>(() => devRegisterModule.httpClient);
    g.registerLazySingleton<CompassDevice>(
        () => devRegisterModule.compassDevice);
    g.registerLazySingleton<Connectivity>(() => devRegisterModule.connectivity);
    g.registerLazySingleton<DeleteBookingOfService>(
        () => devRegisterModule.deleteBookingOfService);
    g.registerLazySingleton<DirectoryManager>(
        () => devRegisterModule.directoryManager);
    g.registerLazySingleton<FetchAllBookingsOfService>(
        () => devRegisterModule.fetchAllBookingsOfService);
    g.registerFactory<FetchAllBookingsOfServiceBloc>(
        () => devRegisterModule.fetchAllBookingsOfServiceBloc);
    g.registerLazySingleton<FetchContactCategories>(
        () => devRegisterModule.fetchContactCategories);
    g.registerLazySingleton<FetchContactOfCategorie>(
        () => devRegisterModule.fetchContactOfCategorie);
    g.registerFactory<FirebaseMessaging>(
        () => devRegisterModule.firebaseMessaging);
    g.registerLazySingleton<ForgotPassword>(
        () => devRegisterModule.forgotPassword);
    g.registerLazySingleton<Geolocator>(() => devRegisterModule.geolocator);
    g.registerLazySingleton<GeolocatorDevice>(
        () => devRegisterModule.geolocatorDevice);
    g.registerLazySingleton<GetAppUser>(() => devRegisterModule.getAppUser);
    g.registerLazySingleton<GetBatimentDetail>(
        () => devRegisterModule.getBatimentDetail);
    g.registerLazySingleton<GetEntreprisesOfBatiment>(
        () => devRegisterModule.getEntreprisesOfBatiment);
    g.registerLazySingleton<LoadPageAndPlaceBatiments>(
        () => devRegisterModule.loadPageAndPlaceBatiment);
    g.registerFactory<LoginBloc>(() => devRegisterModule.loginBloc);
    g.registerFactory<MainPageBloc>(() => devRegisterModule.mainPageBloc);
    g.registerLazySingleton<MapPymRemoteDataSource>(
        () => devRegisterModule.mapPymRemoteDataSource);
    g.registerLazySingleton<MetropoleRemoteDataSource>(
        () => devRegisterModule.metropoleRemoteDataSource);
    g.registerLazySingleton<NetworkInfo>(() => devRegisterModule.networkInfo);
    g.registerLazySingleton<PermissionHandler>(
        () => devRegisterModule.permissionHandler);
    g.registerLazySingleton<PostRepository>(
        () => devRegisterModule.postRepository);
    g.registerLazySingleton<SNCFRemoteDataSource>(
        () => devRegisterModule.sncfRemoteDataSource);
    g.registerLazySingleton<SendEmailConfirmation>(
        () => devRegisterModule.sendEmailConfirmation);
    g.registerLazySingleton<ServiceCategorieRepository>(
        () => devRegisterModule.serviceCategorieRepository);
    g.registerFactory<ServiceCategoriesBloc>(
        () => devRegisterModule.serviceCategoriesBloc);
    g.registerLazySingleton<ServiceRepository>(
        () => devRegisterModule.serviceRepository);
    g.registerFactory<ServicesOfCategorieBloc>(
        () => devRegisterModule.servicesOfCategorieBloc);
    final sharedPreferences = await devRegisterModule.sharedPreferences;
    g.registerFactory<SharedPreferences>(() => sharedPreferences);
    g.registerFactory<StopDetailsBloc>(() => devRegisterModule.stopDetailsBloc);
    g.registerLazySingleton<UpdateBookingOfService>(
        () => devRegisterModule.updateBookingOfService);
    g.registerFactory<ZipDecoder>(() => devRegisterModule.zipDecoder);
    g.registerLazySingleton<AddBookingToService>(
        () => devRegisterModule.addBookingToService);
    g.registerLazySingleton<AppUserRepository>(
        () => devRegisterModule.appUserRepository);
    g.registerFactory<ArViewBloc>(() => devRegisterModule.arViewBloc);
    g.registerLazySingleton<AuthSignIn>(() => devRegisterModule.authSignIn);
    g.registerLazySingleton<AuthSignOut>(() => devRegisterModule.authSignOut);
    g.registerLazySingleton<AuthSignUp>(() => devRegisterModule.authSignUp);
    g.registerFactory<AuthenticationBloc>(
        () => devRegisterModule.authenticationBloc);
    g.registerFactory<BatimentBloc>(() => devRegisterModule.batimentBloc);
    g.registerLazySingleton<BatimentRepository>(
        () => devRegisterModule.batimentRepository);
    g.registerFactory<BookingOfServiceBloc>(
        () => devRegisterModule.bookingOfServiceBloc);
    g.registerLazySingleton<BookingRepository>(
        () => devRegisterModule.bookingRepository);
    g.registerFactory<CompassBloc>(() => devRegisterModule.compassBloc);
    g.registerLazySingleton<ContactCategorieRepository>(
        () => devRegisterModule.contactCategorieRepository);
    g.registerFactory<ContactCategoriesBloc>(
        () => devRegisterModule.contactCategoriesBloc);
    g.registerLazySingleton<ContactRepository>(
        () => devRegisterModule.contactRepository);
    g.registerFactory<EntrepriseBloc>(() => devRegisterModule.entrepriseBloc);
    g.registerLazySingleton<EntrepriseRepository>(
        () => devRegisterModule.entrepriseRepository);
    g.registerLazySingleton<FetchServiceCategories>(
        () => devRegisterModule.fetchServiceCategories);
    g.registerLazySingleton<FetchServicesOfCategorie>(
        () => devRegisterModule.fetchServicesOfCategorie);
    g.registerFactory<FilActualiteBloc>(
        () => devRegisterModule.filActualiteBloc);
    g.registerFactory<ForgotBloc>(() => devRegisterModule.forgotBloc);
    g.registerLazySingleton<GetPosts>(() => devRegisterModule.getPosts);
    g.registerLazySingleton<MapPymLocalDataSource>(
        () => devRegisterModule.mapPymLocalDataSource);
    g.registerFactory<MapsBloc>(() => devRegisterModule.mapsBloc);
    g.registerLazySingleton<MetropoleLocalDataSource>(
        () => devRegisterModule.metropoleLocalDataSource);
    g.registerLazySingleton<MetropoleRouteRepository>(
        () => devRegisterModule.metropoleRouteRepository);
    g.registerLazySingleton<SNCFLocalDataSource>(
        () => devRegisterModule.sncfLocalDataSource);
    g.registerLazySingleton<SNCFRouteRepository>(
        () => devRegisterModule.sncfRouteRepository);
    g.registerLazySingleton<FetchBusRoute>(
        () => devRegisterModule.fetchBusRoute);
    g.registerLazySingleton<FetchBusTrips>(
        () => devRegisterModule.fetchBusTrips);
    g.registerLazySingleton<FetchTrainRoute>(
        () => devRegisterModule.fetchTrainRoute);
    g.registerLazySingleton<FetchTrainTrips>(
        () => devRegisterModule.fetchTrainTrips);
    g.registerFactory<TripsBloc>(() => devRegisterModule.tripsBloc);
  }

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerFactory<Box<BatimentModel>>(() => registerModule.batimentsBox);
    g.registerFactory<Box<BookingModel>>(() => registerModule.bookingsBox);
    g.registerFactory<Box<ContactCategorieModel>>(
        () => registerModule.contactCategoriesBox);
    g.registerFactory<Box<ContactModel>>(() => registerModule.contactsBox);
    g.registerFactory<Box<EntrepriseModel>>(
        () => registerModule.entreprisesBox);
    g.registerFactory<Box<PostModel>>(() => registerModule.postsBox);
    g.registerFactory<Box<ServiceCategorieModel>>(
        () => registerModule.serviceCategoriesBox);
    g.registerFactory<Box<ServiceModel>>(() => registerModule.servicesBox);
    g.registerLazySingleton<Client>(() => registerModule.httpClient);
    g.registerLazySingleton<CompassDevice>(() => CompassDeviceImpl());
    g.registerLazySingleton<Connectivity>(() => registerModule.connectivity);
    g.registerLazySingleton<DeleteBookingOfService>(
        () => DeleteBookingOfService(g<BookingRepository>()));
    g.registerLazySingleton<DirectoryManager>(() => DirectoryManagerImpl());
    g.registerLazySingleton<FetchAllBookingsOfService>(
        () => FetchAllBookingsOfService(g<BookingRepository>()));
    g.registerFactory<FetchAllBookingsOfServiceBloc>(
        () => FetchAllBookingsOfServiceBloc(g<FetchAllBookingsOfService>()));
    g.registerLazySingleton<FetchContactCategories>(
        () => FetchContactCategories(g<ContactCategorieRepository>()));
    g.registerLazySingleton<FetchContactOfCategorie>(
        () => FetchContactOfCategorie(g<ContactRepository>()));
    g.registerFactory<FirebaseMessaging>(
        () => registerModule.firebaseMessaging);
    g.registerLazySingleton<ForgotPassword>(
        () => ForgotPassword(g<AuthenticationService>()));
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
    g.registerLazySingleton<LoadPageAndPlaceBatiments>(() =>
        LoadPageAndPlaceBatiments(
            geolocatorDevice: g<GeolocatorDevice>(),
            batimentRepository: g<BatimentRepository>()));
    g.registerFactory<LoginBloc>(
        () => LoginBloc(g<AuthSignIn>(), g<AuthSignUp>()));
    g.registerFactory<MainPageBloc>(() => MainPageBloc());
    g.registerLazySingleton<MapPymRemoteDataSource>(
        () => MapPymRemoteDataSourceImpl(client: g<Client>()));
    g.registerLazySingleton<MetropoleRemoteDataSource>(
        () => MetropoleRemoteDataSourceImpl(client: g<Client>()));
    g.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(g<Connectivity>()));
    g.registerLazySingleton<PermissionHandler>(() => PermissionHandlerImpl());
    g.registerLazySingleton<PostRepository>(() => PostRepositoryImpl(
          remoteDataSource: g<MapPymRemoteDataSource>(),
          localDataSource: g<MapPymLocalDataSource>(),
          networkInfo: g<NetworkInfo>(),
        ));
    g.registerLazySingleton<SNCFRemoteDataSource>(
        () => SNCFRemoteDataSourceImpl(client: g<Client>()));
    g.registerLazySingleton<SendEmailConfirmation>(
        () => SendEmailConfirmation(g<AuthenticationService>()));
    g.registerLazySingleton<ServiceCategorieRepository>(
        () => ServiceCategorieRepositoryImpl(
              localDataSource: g<MapPymLocalDataSource>(),
              remoteDataSource: g<MapPymRemoteDataSource>(),
              networkInfo: g<NetworkInfo>(),
            ));
    g.registerFactory<ServiceCategoriesBloc>(
        () => ServiceCategoriesBloc(g<FetchServiceCategories>()));
    g.registerLazySingleton<ServiceRepository>(() => ServiceRepositoryImpl(
          localDataSource: g<MapPymLocalDataSource>(),
          remoteDataSource: g<MapPymRemoteDataSource>(),
          networkInfo: g<NetworkInfo>(),
        ));
    g.registerFactory<ServicesOfCategorieBloc>(
        () => ServicesOfCategorieBloc(g<FetchServicesOfCategorie>()));
    final sharedPreferences1 = await registerModule.sharedPreferences;
    g.registerFactory<SharedPreferences>(() => sharedPreferences1);
    g.registerFactory<StopDetailsBloc>(() => StopDetailsBloc());
    g.registerLazySingleton<UpdateBookingOfService>(
        () => UpdateBookingOfService(g<BookingRepository>()));
    g.registerFactory<ZipDecoder>(() => registerModule.zipDecoder);
    g.registerLazySingleton<AddBookingToService>(
        () => AddBookingToService(g<BookingRepository>()));
    g.registerLazySingleton<AppUserRepository>(() => AppUserRepositoryImpl(
          auth: g<AuthenticationService>(),
          localDataSource: g<MapPymLocalDataSource>(),
          remoteDataSource: g<MapPymRemoteDataSource>(),
          networkInfo: g<NetworkInfo>(),
        ));
    g.registerFactory<ArViewBloc>(
        () => ArViewBloc(g<LoadPageAndPlaceBatiments>()));
    g.registerLazySingleton<AuthSignIn>(
        () => AuthSignIn(g<AuthenticationService>()));
    g.registerLazySingleton<AuthSignOut>(
        () => AuthSignOut(g<AuthenticationService>()));
    g.registerLazySingleton<AuthSignUp>(
        () => AuthSignUp(g<AuthenticationService>()));
    g.registerFactory<AuthenticationBloc>(() => AuthenticationBloc(
          getAppUser: g<GetAppUser>(),
          signOut: g<AuthSignOut>(),
          sendEmailConfirmation: g<SendEmailConfirmation>(),
        ));
    g.registerLazySingleton<AuthenticationService>(() =>
        AuthenticationServiceImpl(
            client: g<Client>(), prefs: g<SharedPreferences>()));
    g.registerFactory<BatimentBloc>(() => BatimentBloc(g<GetBatimentDetail>()));
    g.registerLazySingleton<BatimentRepository>(() => BatimentRepositoryImpl(
          localDataSource: g<MapPymLocalDataSource>(),
          remoteDataSource: g<MapPymRemoteDataSource>(),
          networkInfo: g<NetworkInfo>(),
        ));
    g.registerFactory<BookingOfServiceBloc>(() => BookingOfServiceBloc(
          g<AddBookingToService>(),
          g<DeleteBookingOfService>(),
          g<UpdateBookingOfService>(),
        ));
    g.registerLazySingleton<BookingRepository>(() => BookingRepositoryImpl(
          auth: g<AuthenticationService>(),
          localDataSource: g<MapPymLocalDataSource>(),
          remoteDataSource: g<MapPymRemoteDataSource>(),
          networkInfo: g<NetworkInfo>(),
        ));
    g.registerFactory<CompassBloc>(() => CompassBloc(
        permissionHandler: g<PermissionHandler>(),
        compassDevice: g<CompassDevice>()));
    g.registerLazySingleton<ContactCategorieRepository>(
        () => ContactCategorieRepositoryImpl(
              localDataSource: g<MapPymLocalDataSource>(),
              remoteDataSource: g<MapPymRemoteDataSource>(),
              networkInfo: g<NetworkInfo>(),
            ));
    g.registerFactory<ContactCategoriesBloc>(
        () => ContactCategoriesBloc(g<FetchContactCategories>()));
    g.registerLazySingleton<ContactRepository>(() => ContactRepositoryImpl(
          localDataSource: g<MapPymLocalDataSource>(),
          remoteDataSource: g<MapPymRemoteDataSource>(),
          networkInfo: g<NetworkInfo>(),
        ));
    g.registerFactory<EntrepriseBloc>(
        () => EntrepriseBloc(g<GetEntreprisesOfBatiment>()));
    g.registerLazySingleton<EntrepriseRepository>(
        () => EntrepriseRepositoryImpl(
              localDataSource: g<MapPymLocalDataSource>(),
              remoteDataSource: g<MapPymRemoteDataSource>(),
              networkInfo: g<NetworkInfo>(),
            ));
    g.registerLazySingleton<FetchServiceCategories>(
        () => FetchServiceCategories(g<ServiceCategorieRepository>()));
    g.registerLazySingleton<FetchServicesOfCategorie>(
        () => FetchServicesOfCategorie(g<ServiceRepository>()));
    g.registerFactory<FilActualiteBloc>(() => FilActualiteBloc(g<GetPosts>()));
    g.registerFactory<ForgotBloc>(() => ForgotBloc(g<ForgotPassword>()));
    g.registerLazySingleton<GetPosts>(() => GetPosts(g<PostRepository>()));
    g.registerLazySingleton<MapPymLocalDataSource>(
        () => MapPymLocalDataSourceImpl(
              serviceCategoriesBox: g<Box<ServiceCategorieModel>>(),
              servicesBox: g<Box<ServiceModel>>(),
              contactCategoriesBox: g<Box<ContactCategorieModel>>(),
              batimentsBox: g<Box<BatimentModel>>(),
              entreprisesBox: g<Box<EntrepriseModel>>(),
              postsBox: g<Box<PostModel>>(),
              contactsBox: g<Box<ContactModel>>(),
              bookingsBox: g<Box<BookingModel>>(),
              prefs: g<SharedPreferences>(),
            ));
    g.registerFactory<MapsBloc>(
        () => MapsBloc(permissionHandler: g<PermissionHandler>()));
    g.registerLazySingleton<MetropoleLocalDataSource>(() =>
        MetropoleLocalDataSourceImpl(
            directoryManager: g<DirectoryManager>(),
            zipDecoder: g<ZipDecoder>()));
    g.registerLazySingleton<MetropoleRouteRepository>(
        () => MetropoleRouteRepositoryImpl(
              localDataSource: g<MetropoleLocalDataSource>(),
              remoteDataSource: g<MetropoleRemoteDataSource>(),
              networkInfo: g<NetworkInfo>(),
            ));
    g.registerLazySingleton<SNCFLocalDataSource>(() => SNCFLocalDataSourceImpl(
        directoryManager: g<DirectoryManager>(), zipDecoder: g<ZipDecoder>()));
    g.registerLazySingleton<SNCFRouteRepository>(() => SNCFRouteRepositoryImpl(
          localDataSource: g<SNCFLocalDataSource>(),
          remoteDataSource: g<SNCFRemoteDataSource>(),
          networkInfo: g<NetworkInfo>(),
        ));
    g.registerLazySingleton<FetchBusRoute>(
        () => FetchBusRoute(g<MetropoleRouteRepository>()));
    g.registerLazySingleton<FetchBusTrips>(
        () => FetchBusTrips(g<FetchBusRoute>()));
    g.registerLazySingleton<FetchTrainRoute>(
        () => FetchTrainRoute(g<SNCFRouteRepository>()));
    g.registerLazySingleton<FetchTrainTrips>(
        () => FetchTrainTrips(g<FetchTrainRoute>()));
    g.registerFactory<TripsBloc>(() => TripsBloc(
        fetchBusTrips: g<FetchBusTrips>(),
        fetchTrainTrips: g<FetchTrainTrips>()));
  }

  //Eager singletons must be registered in the right order
  if (environment == 'dev') {
    g.registerSingleton<NotificationBloc>(devRegisterModule.notificationBloc);
  }
  if (environment == 'prod') {
    g.registerSingleton<NotificationBloc>(NotificationBloc(
        prefs: g<SharedPreferences>(),
        firebaseMessaging: g<FirebaseMessaging>()));
  }
}

class _$DevRegisterModule extends DevRegisterModule {
  final GetIt _g;
  _$DevRegisterModule(this._g);
  @override
  AuthenticationServiceDevImpl get authenticationService =>
      AuthenticationServiceDevImpl();
  @override
  CompassDeviceImpl get compassDevice => CompassDeviceImpl();
  @override
  Connectivity get connectivity => Connectivity();
  @override
  DeleteBookingOfService get deleteBookingOfService =>
      DeleteBookingOfService(_g<BookingRepository>());
  @override
  DirectoryManagerImpl get directoryManager => DirectoryManagerImpl();
  @override
  FetchAllBookingsOfService get fetchAllBookingsOfService =>
      FetchAllBookingsOfService(_g<BookingRepository>());
  @override
  FetchAllBookingsOfServiceBloc get fetchAllBookingsOfServiceBloc =>
      FetchAllBookingsOfServiceBloc(_g<FetchAllBookingsOfService>());
  @override
  FetchContactCategories get fetchContactCategories =>
      FetchContactCategories(_g<ContactCategorieRepository>());
  @override
  FetchContactOfCategorie get fetchContactOfCategorie =>
      FetchContactOfCategorie(_g<ContactRepository>());
  @override
  ForgotPassword get forgotPassword =>
      ForgotPassword(_g<AuthenticationService>());
  @override
  GeolocatorDeviceImpl get geolocatorDevice =>
      GeolocatorDeviceImpl(geolocator: _g<Geolocator>());
  @override
  GetAppUser get getAppUser => GetAppUser(_g<AppUserRepository>());
  @override
  GetBatimentDetail get getBatimentDetail =>
      GetBatimentDetail(batimentRepository: _g<BatimentRepository>());
  @override
  GetEntreprisesOfBatiment get getEntreprisesOfBatiment =>
      GetEntreprisesOfBatiment(
          entrepriseRepository: _g<EntrepriseRepository>());
  @override
  LoadPageAndPlaceBatiments get loadPageAndPlaceBatiment =>
      LoadPageAndPlaceBatiments(
          geolocatorDevice: _g<GeolocatorDevice>(),
          batimentRepository: _g<BatimentRepository>());
  @override
  LoginBloc get loginBloc => LoginBloc(_g<AuthSignIn>(), _g<AuthSignUp>());
  @override
  MainPageBloc get mainPageBloc => MainPageBloc();
  @override
  MapPymRemoteDataSourceDevImpl get mapPymRemoteDataSource =>
      MapPymRemoteDataSourceDevImpl();
  @override
  MetropoleRemoteDataSourceImpl get metropoleRemoteDataSource =>
      MetropoleRemoteDataSourceImpl(client: _g<Client>());
  @override
  NetworkInfoImpl get networkInfo => NetworkInfoImpl(_g<Connectivity>());
  @override
  PermissionHandlerImpl get permissionHandler => PermissionHandlerImpl();
  @override
  PostRepositoryImpl get postRepository => PostRepositoryImpl(
        remoteDataSource: _g<MapPymRemoteDataSource>(),
        localDataSource: _g<MapPymLocalDataSource>(),
        networkInfo: _g<NetworkInfo>(),
      );
  @override
  SNCFRemoteDataSourceImpl get sncfRemoteDataSource =>
      SNCFRemoteDataSourceImpl(client: _g<Client>());
  @override
  SendEmailConfirmation get sendEmailConfirmation =>
      SendEmailConfirmation(_g<AuthenticationService>());
  @override
  ServiceCategorieRepositoryImpl get serviceCategorieRepository =>
      ServiceCategorieRepositoryImpl(
        localDataSource: _g<MapPymLocalDataSource>(),
        remoteDataSource: _g<MapPymRemoteDataSource>(),
        networkInfo: _g<NetworkInfo>(),
      );
  @override
  ServiceCategoriesBloc get serviceCategoriesBloc =>
      ServiceCategoriesBloc(_g<FetchServiceCategories>());
  @override
  ServiceRepositoryImpl get serviceRepository => ServiceRepositoryImpl(
        localDataSource: _g<MapPymLocalDataSource>(),
        remoteDataSource: _g<MapPymRemoteDataSource>(),
        networkInfo: _g<NetworkInfo>(),
      );
  @override
  ServicesOfCategorieBloc get servicesOfCategorieBloc =>
      ServicesOfCategorieBloc(_g<FetchServicesOfCategorie>());
  @override
  StopDetailsBloc get stopDetailsBloc => StopDetailsBloc();
  @override
  UpdateBookingOfService get updateBookingOfService =>
      UpdateBookingOfService(_g<BookingRepository>());
  @override
  ZipDecoder get zipDecoder => ZipDecoder();
  @override
  AddBookingToService get addBookingToService =>
      AddBookingToService(_g<BookingRepository>());
  @override
  AppUserRepositoryImpl get appUserRepository => AppUserRepositoryImpl(
        auth: _g<AuthenticationService>(),
        localDataSource: _g<MapPymLocalDataSource>(),
        remoteDataSource: _g<MapPymRemoteDataSource>(),
        networkInfo: _g<NetworkInfo>(),
      );
  @override
  ArViewBloc get arViewBloc => ArViewBloc(_g<LoadPageAndPlaceBatiments>());
  @override
  AuthSignIn get authSignIn => AuthSignIn(_g<AuthenticationService>());
  @override
  AuthSignOut get authSignOut => AuthSignOut(_g<AuthenticationService>());
  @override
  AuthSignUp get authSignUp => AuthSignUp(_g<AuthenticationService>());
  @override
  AuthenticationBloc get authenticationBloc => AuthenticationBloc(
        getAppUser: _g<GetAppUser>(),
        signOut: _g<AuthSignOut>(),
        sendEmailConfirmation: _g<SendEmailConfirmation>(),
      );
  @override
  BatimentBloc get batimentBloc => BatimentBloc(_g<GetBatimentDetail>());
  @override
  BatimentRepositoryImpl get batimentRepository => BatimentRepositoryImpl(
        localDataSource: _g<MapPymLocalDataSource>(),
        remoteDataSource: _g<MapPymRemoteDataSource>(),
        networkInfo: _g<NetworkInfo>(),
      );
  @override
  BookingOfServiceBloc get bookingOfServiceBloc => BookingOfServiceBloc(
        _g<AddBookingToService>(),
        _g<DeleteBookingOfService>(),
        _g<UpdateBookingOfService>(),
      );
  @override
  BookingRepositoryImpl get bookingRepository => BookingRepositoryImpl(
        auth: _g<AuthenticationService>(),
        localDataSource: _g<MapPymLocalDataSource>(),
        remoteDataSource: _g<MapPymRemoteDataSource>(),
        networkInfo: _g<NetworkInfo>(),
      );
  @override
  CompassBloc get compassBloc => CompassBloc(
      permissionHandler: _g<PermissionHandler>(),
      compassDevice: _g<CompassDevice>());
  @override
  ContactCategorieRepositoryImpl get contactCategorieRepository =>
      ContactCategorieRepositoryImpl(
        localDataSource: _g<MapPymLocalDataSource>(),
        remoteDataSource: _g<MapPymRemoteDataSource>(),
        networkInfo: _g<NetworkInfo>(),
      );
  @override
  ContactCategoriesBloc get contactCategoriesBloc =>
      ContactCategoriesBloc(_g<FetchContactCategories>());
  @override
  ContactRepositoryImpl get contactRepository => ContactRepositoryImpl(
        localDataSource: _g<MapPymLocalDataSource>(),
        remoteDataSource: _g<MapPymRemoteDataSource>(),
        networkInfo: _g<NetworkInfo>(),
      );
  @override
  EntrepriseBloc get entrepriseBloc =>
      EntrepriseBloc(_g<GetEntreprisesOfBatiment>());
  @override
  EntrepriseRepositoryImpl get entrepriseRepository => EntrepriseRepositoryImpl(
        localDataSource: _g<MapPymLocalDataSource>(),
        remoteDataSource: _g<MapPymRemoteDataSource>(),
        networkInfo: _g<NetworkInfo>(),
      );
  @override
  FetchServiceCategories get fetchServiceCategories =>
      FetchServiceCategories(_g<ServiceCategorieRepository>());
  @override
  FetchServicesOfCategorie get fetchServicesOfCategorie =>
      FetchServicesOfCategorie(_g<ServiceRepository>());
  @override
  FilActualiteBloc get filActualiteBloc => FilActualiteBloc(_g<GetPosts>());
  @override
  ForgotBloc get forgotBloc => ForgotBloc(_g<ForgotPassword>());
  @override
  GetPosts get getPosts => GetPosts(_g<PostRepository>());
  @override
  MapPymLocalDataSourceImpl get mapPymLocalDataSource =>
      MapPymLocalDataSourceImpl(
        serviceCategoriesBox: _g<Box<ServiceCategorieModel>>(),
        servicesBox: _g<Box<ServiceModel>>(),
        contactCategoriesBox: _g<Box<ContactCategorieModel>>(),
        batimentsBox: _g<Box<BatimentModel>>(),
        entreprisesBox: _g<Box<EntrepriseModel>>(),
        postsBox: _g<Box<PostModel>>(),
        contactsBox: _g<Box<ContactModel>>(),
        bookingsBox: _g<Box<BookingModel>>(),
        prefs: _g<SharedPreferences>(),
      );
  @override
  MapsBloc get mapsBloc => MapsBloc(permissionHandler: _g<PermissionHandler>());
  @override
  MetropoleLocalDataSourceImpl get metropoleLocalDataSource =>
      MetropoleLocalDataSourceImpl(
          directoryManager: _g<DirectoryManager>(),
          zipDecoder: _g<ZipDecoder>());
  @override
  MetropoleRouteRepositoryImpl get metropoleRouteRepository =>
      MetropoleRouteRepositoryImpl(
        localDataSource: _g<MetropoleLocalDataSource>(),
        remoteDataSource: _g<MetropoleRemoteDataSource>(),
        networkInfo: _g<NetworkInfo>(),
      );
  @override
  NotificationBloc get notificationBloc => NotificationBloc(
      prefs: _g<SharedPreferences>(),
      firebaseMessaging: _g<FirebaseMessaging>());
  @override
  SNCFLocalDataSourceImpl get sncfLocalDataSource => SNCFLocalDataSourceImpl(
      directoryManager: _g<DirectoryManager>(), zipDecoder: _g<ZipDecoder>());
  @override
  SNCFRouteRepositoryImpl get sncfRouteRepository => SNCFRouteRepositoryImpl(
        localDataSource: _g<SNCFLocalDataSource>(),
        remoteDataSource: _g<SNCFRemoteDataSource>(),
        networkInfo: _g<NetworkInfo>(),
      );
  @override
  FetchBusRoute get fetchBusRoute =>
      FetchBusRoute(_g<MetropoleRouteRepository>());
  @override
  FetchBusTrips get fetchBusTrips => FetchBusTrips(_g<FetchBusRoute>());
  @override
  FetchTrainRoute get fetchTrainRoute =>
      FetchTrainRoute(_g<SNCFRouteRepository>());
  @override
  FetchTrainTrips get fetchTrainTrips => FetchTrainTrips(_g<FetchTrainRoute>());
  @override
  TripsBloc get tripsBloc => TripsBloc(
      fetchBusTrips: _g<FetchBusTrips>(),
      fetchTrainTrips: _g<FetchTrainTrips>());
}

class _$RegisterModule extends RegisterModule {
  @override
  Connectivity get connectivity => Connectivity();
  @override
  ZipDecoder get zipDecoder => ZipDecoder();
}
