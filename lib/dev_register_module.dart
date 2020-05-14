import 'package:app_pym/core/directory_manager/directory_manager.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/core/permission_handler/permission_handler.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source_dev_impl.dart';
import 'package:app_pym/data/datasources/metropole_local_data_source.dart';
import 'package:app_pym/data/datasources/metropole_remote_data_source.dart';
import 'package:app_pym/data/datasources/sncf_local_data_source.dart';
import 'package:app_pym/data/datasources/sncf_remote_data_source.dart';
import 'package:app_pym/data/devices/compass_device.dart';
import 'package:app_pym/data/devices/geolocator_device.dart';
import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:app_pym/data/models/app_pym/contact_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/data/models/app_pym/post_model.dart';
import 'package:app_pym/data/models/app_pym/service_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/data/repositories/app_pym/contact_categorie_repository_impl.dart';
import 'package:app_pym/data/repositories/app_pym/contact_repository_impl.dart';
import 'package:app_pym/data/repositories/app_pym/post_repository_impl.dart';
import 'package:app_pym/data/repositories/app_pym/service_categorie_repository_impl.dart';
import 'package:app_pym/data/repositories/app_pym/service_repository_impl.dart';
import 'package:app_pym/data/repositories/authentication/app_user_repository_impl.dart';
import 'package:app_pym/data/repositories/map_pym/batiment_repository_impl.dart';
import 'package:app_pym/data/repositories/map_pym/entreprise_repository_impl.dart';
import 'package:app_pym/data/repositories/mobility/metropole_route_repository_impl.dart';
import 'package:app_pym/data/repositories/mobility/sncf_route_repository_impl.dart';
import 'package:app_pym/data/services/authentication_service.dart';
import 'package:app_pym/data/services/authentication_service_dev_impl.dart';
import 'package:app_pym/domain/repositories/app_pym/booking_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_categorie_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/post_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/service_categorie_repository.dart';
import 'package:app_pym/domain/repositories/app_pym/service_repository.dart';
import 'package:app_pym/domain/repositories/authentication/app_user_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/entreprise_repository.dart';
import 'package:app_pym/domain/repositories/mobility/route_repository.dart';
import 'package:app_pym/domain/usecases/authentication/forgot_password.dart';
import 'package:app_pym/domain/usecases/authentication/get_app_user.dart';
import 'package:app_pym/domain/usecases/authentication/send_email_confirmation.dart';
import 'package:app_pym/domain/usecases/authentication/signin.dart';
import 'package:app_pym/domain/usecases/authentication/signout.dart';
import 'package:app_pym/domain/usecases/authentication/signup.dart';
import 'package:app_pym/domain/usecases/cartographie/get_batiment_detail.dart';
import 'package:app_pym/domain/usecases/cartographie/get_entreprises_of_batiment.dart';
import 'package:app_pym/domain/usecases/cartographie/load_page_and_place_batiments.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_categories.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_of_categorie.dart';
import 'package:app_pym/domain/usecases/fil_actualite/get_posts.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_bus_route.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_bus_trips.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_train_route.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_train_stops.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_train_trips.dart';
import 'package:app_pym/domain/usecases/services/booking/add_booking_to_service.dart';
import 'package:app_pym/domain/usecases/services/booking/delete_booking_of_service.dart';
import 'package:app_pym/domain/usecases/services/booking/fetch_all_bookings_of_service.dart';
import 'package:app_pym/domain/usecases/services/booking/update_booking_of_service.dart';
import 'package:app_pym/domain/usecases/services/fetch_service_categories.dart';
import 'package:app_pym/domain/usecases/services/fetch_services_of_categorie.dart';
import 'package:app_pym/presentation/blocs/authentication/authentication/authentication_bloc.dart';
import 'package:app_pym/presentation/blocs/authentication/forgot/forgot_bloc.dart';
import 'package:app_pym/presentation/blocs/authentication/login/login_bloc.dart';
import 'package:app_pym/presentation/blocs/cartographie/ar_view/ar_view_bloc.dart';
import 'package:app_pym/presentation/blocs/cartographie/batiment/batiment_bloc.dart';
import 'package:app_pym/presentation/blocs/cartographie/compass/compass_bloc.dart';
import 'package:app_pym/presentation/blocs/cartographie/entreprise/entreprise_bloc.dart';
import 'package:app_pym/presentation/blocs/contacts/contact_categories/contact_categories_bloc.dart';
import 'package:app_pym/presentation/blocs/fil_actualite/fil_actualite_bloc.dart';
import 'package:app_pym/presentation/blocs/main/main_page_bloc.dart';
import 'package:app_pym/presentation/blocs/mobility/maps/maps_bloc.dart';
import 'package:app_pym/presentation/blocs/mobility/stop_details/stop_details_bloc.dart';
import 'package:app_pym/presentation/blocs/mobility/trips/trips_bloc.dart';
import 'package:app_pym/presentation/blocs/notification/notification_bloc.dart';
import 'package:app_pym/presentation/blocs/services/booking/booking_of_service/booking_of_service_bloc.dart';
import 'package:app_pym/presentation/blocs/services/booking/fetch_all_bookings_of_service/fetch_all_bookings_of_service_bloc.dart';
import 'package:app_pym/presentation/blocs/services/service_categories/service_categories_bloc.dart';
import 'package:app_pym/presentation/blocs/services/services_of_categorie/services_of_categorie_bloc.dart';
import 'package:archive/archive.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/repositories/app_pym/booking_repository_impl.dart';

/// Register module pour l'environnement dev
///
/// Mettez ici toute les dépendances devant apparaître en environnement dev.
/// Généralement, vous mettez ici :
///
/// -  Les dépendances externes
/// -  Les dépendances falsifiés
/// -  Les dépendances en production qui fonctionnent
@registerModule
abstract class DevRegisterModule {
  @dev
  @lazySingleton
  AddBookingToService get addBookingToService;

  @dev
  @lazySingleton
  @RegisterAs(AppUserRepository)
  AppUserRepositoryImpl get appUserRepository;

  @dev
  ArViewBloc get arViewBloc;

  @dev
  AuthenticationBloc get authenticationBloc;

  @dev
  @lazySingleton
  @RegisterAs(AuthenticationService)
  AuthenticationServiceDevImpl get authenticationService;

  @dev
  @lazySingleton
  AuthSignIn get authSignIn;

  @dev
  @lazySingleton
  AuthSignOut get authSignOut;

  @dev
  @lazySingleton
  AuthSignUp get authSignUp;

  @dev
  BatimentBloc get batimentBloc;

  @dev
  @lazySingleton
  @RegisterAs(BatimentRepository)
  BatimentRepositoryImpl get batimentRepository;

  @dev
  Box<BatimentModel> get batimentsBox => Hive.box<BatimentModel>('/batiments');

  @dev
  BookingOfServiceBloc get bookingOfServiceBloc;

  @dev
  @lazySingleton
  @RegisterAs(BookingRepository)
  BookingRepositoryImpl get bookingRepository;

  @dev
  Box<BookingModel> get bookingsBox => Hive.box<BookingModel>('/bookings');

  @dev
  CompassBloc get compassBloc;

  @dev
  @lazySingleton
  @RegisterAs(CompassDevice)
  CompassDeviceImpl get compassDevice;

  @dev
  @lazySingleton
  Connectivity get connectivity;

  @dev
  @lazySingleton
  @RegisterAs(ContactCategorieRepository)
  ContactCategorieRepositoryImpl get contactCategorieRepository;

  @dev
  ContactCategoriesBloc get contactCategoriesBloc;

  @dev
  Box<ContactCategorieModel> get contactCategoriesBox =>
      Hive.box<ContactCategorieModel>('/contact_categories');

  @dev
  @lazySingleton
  @RegisterAs(ContactRepository)
  ContactRepositoryImpl get contactRepository;

  @dev
  Box<ContactModel> get contactsBox => Hive.box<ContactModel>('/contacts');

  @dev
  @lazySingleton
  DeleteBookingOfService get deleteBookingOfService;

  @dev
  @lazySingleton
  @RegisterAs(DirectoryManager)
  DirectoryManagerImpl get directoryManager;

  @dev
  EntrepriseBloc get entrepriseBloc;

  @dev
  @lazySingleton
  @RegisterAs(EntrepriseRepository)
  EntrepriseRepositoryImpl get entrepriseRepository;

  @dev
  Box<EntrepriseModel> get entreprisesBox =>
      Hive.box<EntrepriseModel>('/entreprises');

  @dev
  @lazySingleton
  FetchAllBookingsOfService get fetchAllBookingsOfService;

  @dev
  FetchAllBookingsOfServiceBloc get fetchAllBookingsOfServiceBloc;

  @dev
  @lazySingleton
  FetchBusRoute get fetchBusRoute;

  @dev
  @lazySingleton
  FetchBusTrips get fetchBusTrips;

  @dev
  @lazySingleton
  FetchContactCategories get fetchContactCategories;

  @dev
  @lazySingleton
  FetchContactOfCategorie get fetchContactOfCategorie;

  @dev
  @lazySingleton
  FetchServiceCategories get fetchServiceCategories;

  @dev
  @lazySingleton
  FetchServicesOfCategorie get fetchServicesOfCategorie;

  @dev
  @lazySingleton
  FetchTrainRoute get fetchTrainRoute;

  @dev
  @lazySingleton
  FetchTrainStops get fetchTrainStops;

  @dev
  @lazySingleton
  FetchTrainTrips get fetchTrainTrips;

  @dev
  FilActualiteBloc get filActualiteBloc;

  @dev
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging();

  @dev
  ForgotBloc get forgotBloc;

  @dev
  @lazySingleton
  ForgotPassword get forgotPassword;

  @dev
  @lazySingleton
  Geolocator get geolocator => Geolocator();

  @dev
  @lazySingleton
  @RegisterAs(GeolocatorDevice)
  GeolocatorDeviceImpl get geolocatorDevice;

  @dev
  @lazySingleton
  GetAppUser get getAppUser;

  @dev
  @lazySingleton
  GetBatimentDetail get getBatimentDetail;

  @dev
  @lazySingleton
  GetEntreprisesOfBatiment get getEntreprisesOfBatiment;

  @dev
  @lazySingleton
  GetPosts get getPosts;

  @dev
  @lazySingleton
  Client get httpClient => Client();

  @dev
  @lazySingleton
  LoadPageAndPlaceBatiments get loadPageAndPlaceBatiment;

  @dev
  LoginBloc get loginBloc;

  @dev
  MainPageBloc get mainPageBloc;

  @dev
  @lazySingleton
  @RegisterAs(MapPymLocalDataSource)
  MapPymLocalDataSourceImpl get mapPymLocalDataSource;

  @dev
  @lazySingleton
  @RegisterAs(MapPymRemoteDataSource)
  MapPymRemoteDataSourceDevImpl get mapPymRemoteDataSource;

  @dev
  MapsBloc get mapsBloc;

  @dev
  @lazySingleton
  @RegisterAs(MetropoleLocalDataSource)
  MetropoleLocalDataSourceImpl get metropoleLocalDataSource;

  @dev
  @lazySingleton
  @RegisterAs(MetropoleRemoteDataSource)
  MetropoleRemoteDataSourceImpl get metropoleRemoteDataSource;

  @dev
  @lazySingleton
  @RegisterAs(MetropoleRouteRepository)
  MetropoleRouteRepositoryImpl get metropoleRouteRepository;

  @dev
  @lazySingleton
  @RegisterAs(NetworkInfo)
  NetworkInfoImpl get networkInfo;

  @dev
  @singleton
  NotificationBloc get notificationBloc;

  @dev
  @lazySingleton
  @RegisterAs(PermissionHandler)
  PermissionHandlerImpl get permissionHandler;

  @dev
  @lazySingleton
  @RegisterAs(PostRepository)
  PostRepositoryImpl get postRepository;

  @dev
  Box<PostModel> get postsBox => Hive.box<PostModel>('/posts');

  @dev
  @lazySingleton
  SendEmailConfirmation get sendEmailConfirmation;

  @dev
  @lazySingleton
  @RegisterAs(ServiceCategorieRepository)
  ServiceCategorieRepositoryImpl get serviceCategorieRepository;

  @dev
  ServiceCategoriesBloc get serviceCategoriesBloc;

  @dev
  Box<ServiceCategorieModel> get serviceCategoriesBox =>
      Hive.box<ServiceCategorieModel>('/service_categories');

  @dev
  @lazySingleton
  @RegisterAs(ServiceRepository)
  ServiceRepositoryImpl get serviceRepository;

  @dev
  Box<ServiceModel> get servicesBox => Hive.box<ServiceModel>('/services');
  @dev
  ServicesOfCategorieBloc get servicesOfCategorieBloc;
  @dev
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @dev
  @lazySingleton
  @RegisterAs(SNCFLocalDataSource)
  SNCFLocalDataSourceImpl get sncfLocalDataSource;

  @dev
  @lazySingleton
  @RegisterAs(SNCFRemoteDataSource)
  SNCFRemoteDataSourceImpl get sncfRemoteDataSource;

  @dev
  @lazySingleton
  @RegisterAs(SNCFRouteRepository)
  SNCFRouteRepositoryImpl get sncfRouteRepository;

  @dev
  StopDetailsBloc get stopDetailsBloc;

  @dev
  TripsBloc get tripsBloc;

  @dev
  @lazySingleton
  UpdateBookingOfService get updateBookingOfService;

  @dev
  ZipDecoder get zipDecoder;
}
