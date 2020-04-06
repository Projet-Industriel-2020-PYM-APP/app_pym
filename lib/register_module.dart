import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

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
@RegisterAs(Box)
@injectable
class MockBox extends Mock implements Box<String> {}

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
class MockBox extends Mock implements Box<String> {}

@test
@RegisterAs(Connectivity)
@injectable
class MockDataConnectionChecker extends Mock implements Connectivity {}

@test
@RegisterAs(Client)
@injectable
class MockHttpClient extends Mock implements Client {}

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
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @prod
  Firestore get firestore => Firestore.instance;

  @prod
  @lazySingleton
  Geolocator get geolocator => Geolocator();

  @prod
  Box<String> get githubBox => Hive.box<String>('prefs');

  @prod
  @lazySingleton
  Client get httpClient => Client();

  @prod
  ZipDecoder get zipDecoder;
}
