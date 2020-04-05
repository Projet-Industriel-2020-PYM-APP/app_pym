import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class PermissionHandler {
  Future<bool> get cameraIsGranted;
  Future<bool> get locationWhenInUseIsGranted;
  Future<bool> get locationIsEnabled;
}

@prod
@lazySingleton
@RegisterAs(PermissionHandler)
@injectable
class PermissionHandlerImpl implements PermissionHandler {
  @override
  Future<bool> get cameraIsGranted => Permission.camera.request().isGranted;

  @override
  Future<bool> get locationWhenInUseIsGranted =>
      Permission.locationWhenInUse.request().isGranted;

  @override
  Future<bool> get locationIsEnabled =>
      Permission.locationWhenInUse.serviceStatus.isEnabled;
}
