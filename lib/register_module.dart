import 'dart:io';

import 'package:archive/archive.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

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
  @lazySingleton
  Connectivity get connectivity;

  @prod
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @prod
  Firestore get firestore => Firestore.instance;

  @prod
  Box<String> get githubBox => Hive.box<String>('prefs');

  @prod
  @lazySingleton
  Client get httpClient => Client();

  @prod
  ZipDecoder get zipDecoder;
}
