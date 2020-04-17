import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@RegisterAs(FirestoreDataSource)
class MockFirestoreDataSource extends Mock implements FirestoreDataSource {}
