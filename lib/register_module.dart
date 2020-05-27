import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:app_pym/data/models/app_pym/contact_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/data/models/app_pym/post_model.dart';
import 'package:app_pym/data/models/app_pym/service_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:archive/archive.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

@test
@Injectable(as: Box)
class MockBatimentsBox extends Mock implements Box<BatimentModel> {}

@test
@Injectable(as: Box)
class MockBookingsBox extends Mock implements Box<BookingModel> {}

@test
@Injectable(as: Box)
class MockContactCategoriesBox extends Mock
    implements Box<ContactCategorieModel> {}

@test
@Injectable(as: Box)
class MockContactsBox extends Mock implements Box<ContactModel> {}

@test
@Injectable(as: Connectivity)
class MockDataConnectionChecker extends Mock implements Connectivity {}

@test
@Injectable(as: Box)
class MockEntreprisesBox extends Mock implements Box<EntrepriseModel> {}

@test
@Injectable(as: Geolocator)
class MockGeolocator extends Mock implements Geolocator {}

@test
@Injectable(as: Client)
class MockHttpClient extends Mock implements Client {}

@test
@Injectable(as: Box)
class MockPostsBox extends Mock implements Box<PostModel> {}

@test
@Injectable(as: Box)
class MockServiceCategoriesBox extends Mock
    implements Box<ServiceCategorieModel> {}

@test
@Injectable(as: Box)
class MockServicesBox extends Mock implements Box<ServiceModel> {}

@test
@Injectable(as: SharedPreferences)
class MockSharedPreferences extends Mock implements SharedPreferences {}

@test
@Injectable(as: ZipDecoder)
class MockZipDecoder extends Mock implements ZipDecoder {}

@module
abstract class RegisterModule {
  @prod
  Box<BatimentModel> get batimentsBox => Hive.box<BatimentModel>('/batiments');

  @prod
  Box<BookingModel> get bookingsBox => Hive.box<BookingModel>('/bookings');

  @prod
  @lazySingleton
  Connectivity get connectivity;

  @prod
  Box<ContactCategorieModel> get contactCategoriesBox =>
      Hive.box<ContactCategorieModel>('/contact_categories');

  @prod
  Box<ContactModel> get contactsBox => Hive.box<ContactModel>('/contacts');

  @prod
  Box<EntrepriseModel> get entreprisesBox =>
      Hive.box<EntrepriseModel>('/entreprises');

  @prod
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging();

  @prod
  @lazySingleton
  Geolocator get geolocator => Geolocator();

  @prod
  @lazySingleton
  Client get httpClient => Client();

  @prod
  Box<PostModel> get postsBox => Hive.box<PostModel>('/posts');

  @prod
  Box<ServiceCategorieModel> get serviceCategoriesBox =>
      Hive.box<ServiceCategorieModel>('/service_categories');

  @prod
  Box<ServiceModel> get servicesBox => Hive.box<ServiceModel>('/services');

  @prod
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @prod
  ZipDecoder get zipDecoder;
}
