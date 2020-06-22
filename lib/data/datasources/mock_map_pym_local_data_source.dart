import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: MapPymLocalDataSource)
class MockMapPymLocalDataSource extends Mock implements MapPymLocalDataSource {}
