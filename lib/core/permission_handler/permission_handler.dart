import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class PermissionHandler {
  Future<Map<Permission, PermissionStatus>> get requestPermissions;
  Future<bool> get locationIsEnabled;
  Future<PermissionStatus> get requestPermissionLocationWhenInUse;
}

@prod
@LazySingleton(as: PermissionHandler)
class PermissionHandlerImpl implements PermissionHandler {
  @override
  Future<Map<Permission, PermissionStatus>> get requestPermissions => [
        Permission.camera,
        Permission.locationWhenInUse,
      ].request();

  @override
  Future<PermissionStatus> get requestPermissionLocationWhenInUse {
    return Permission.locationWhenInUse.request();
  }

  @override
  Future<bool> get locationIsEnabled =>
      Permission.locationWhenInUse.serviceStatus.isEnabled;
}
