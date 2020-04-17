import 'package:app_pym/data/models/blogger/post_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:archive/archive.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
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
class MockBatimentPositionBox extends Mock
    implements Box<List<BatimentPositionModel>> {}

@test
@RegisterAs(Box)
@injectable
class MockBatimentsBox extends Mock implements Box<BatimentModel> {}

@test
@RegisterAs(Connectivity)
@injectable
class MockDataConnectionChecker extends Mock implements Connectivity {}

@test
@RegisterAs(Box)
@injectable
class MockEntreprisesBox extends Mock implements Box<EntrepriseModel> {}

@test
@RegisterAs(FirebaseAuth)
@injectable
class MockFirebaseAuth extends Mock implements FirebaseAuth {}

@test
@RegisterAs(Firestore)
@injectable
class MockFirestore extends Mock implements Firestore {}

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
class MockPostsBox extends Mock implements Box<List<PostModel>> {}

@test
@RegisterAs(ZipDecoder)
@injectable
class MockZipDecoder extends Mock implements ZipDecoder {}

@registerModule
abstract class RegisterModule {
  @prod
  Box<List<BatimentPositionModel>> get batimentPositionBox =>
      Hive.box<List<BatimentPositionModel>>('/batiments_position');

  @prod
  Box<BatimentModel> get batimentsBox => Hive.box<BatimentModel>('/batiments');

  @prod
  @lazySingleton
  Connectivity get connectivity;

  @prod
  Box<EntrepriseModel> get entreprisesBox =>
      Hive.box<EntrepriseModel>('/entreprises');

  @prod
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics();

  @prod
  FirebaseAuth get firebaseAuth => FirebaseAuth.fromApp(FirebaseApp.instance);

  @prod
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging();

  @prod
  Firestore get firestore => Firestore(app: FirebaseApp.instance);

  @prod
  @lazySingleton
  Geolocator get geolocator => Geolocator();

  @prod
  @lazySingleton
  Client get httpClient => Client();

  @prod
  Box<List<PostModel>> get postsBox => Hive.box<List<PostModel>>('/posts');

  @prod
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @prod
  ZipDecoder get zipDecoder;
}
