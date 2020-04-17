import 'package:app_pym/data/datasources/firebase_auth_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@RegisterAs(FirebaseAuthDataSource)
class MockFirebaseAuthDataSource extends Mock
    implements FirebaseAuthDataSource {}
