import 'package:flutter_compass/flutter_compass.dart';
import 'package:injectable/injectable.dart';

abstract class CompassDevice {
  /// The heading varies from 0-360, 0 being north.
  Stream<double> get heading;
}

@RegisterAs(CompassDevice)
@prod
@lazySingleton
@injectable
class CompassDeviceImpl implements CompassDevice {
  @override
  Stream<double> get heading => FlutterCompass.events;
}
