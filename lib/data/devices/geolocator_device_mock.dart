import 'package:app_pym/data/devices/geolocator_device.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@RegisterAs(GeolocatorDevice)
class MockGeolocatorDevice extends Mock implements GeolocatorDevice {}
