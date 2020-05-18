import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

import 'network_info.dart';

@Injectable(as: NetworkInfo)
@test
class MockNetworkInfo extends Mock implements NetworkInfo {}
