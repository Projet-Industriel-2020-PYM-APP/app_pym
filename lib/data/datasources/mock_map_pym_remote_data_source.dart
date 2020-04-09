import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@RegisterAs(MapPymRemoteDataSource)
class MockMapPymRemoteDataSource extends Mock
    implements MapPymRemoteDataSource {}
