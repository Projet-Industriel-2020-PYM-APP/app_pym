import 'package:app_pym/data/devices/compass_device.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@RegisterAs(CompassDevice)
class MockCompassDevice extends Mock implements CompassDevice {}
