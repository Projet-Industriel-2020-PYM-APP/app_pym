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
@RegisterAs(Box)
@injectable
class MockBatimentsBox extends Mock implements Box<BatimentModel> {}

@test
@RegisterAs(Box)
@injectable
class MockContactCategoriesBox extends Mock
    implements Box<ContactCategorieModel> {}

@test
@RegisterAs(Box)
@injectable
class MockContactsBox extends Mock implements Box<ContactModel> {}

@test
@RegisterAs(Connectivity)
@injectable
class MockDataConnectionChecker extends Mock implements Connectivity {}

@test
@RegisterAs(Box)
@injectable
class MockEntreprisesBox extends Mock implements Box<EntrepriseModel> {}

@test
@RegisterAs(Geolocator)
@injectable
class MockGeolocator extends Mock implements Geolocator {}

@test
@RegisterAs(Client)
@injectable
class MockHttpClient extends Mock implements Client {}

@test
@RegisterAs(Box)
@injectable
class MockPostsBox extends Mock implements Box<PostModel> {}

@test
@RegisterAs(Box)
@injectable
class MockServiceCategoriesBox extends Mock
    implements Box<ServiceCategorieModel> {}

@test
@RegisterAs(Box)
@injectable
class MockServicesBox extends Mock implements Box<ServiceModel> {}

@test
@RegisterAs(SharedPreferences)
@injectable
class MockSharedPreferences extends Mock implements SharedPreferences {}

@test
@RegisterAs(ZipDecoder)
@injectable
class MockZipDecoder extends Mock implements ZipDecoder {}

@registerModule
abstract class RegisterModule {
  @prod
  Box<BatimentModel> get batimentsBox => Hive.box<BatimentModel>('/batiments');

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
