import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class PermissionHandler {
  Future<Map<Permission, PermissionStatus>> get requestPermissions;
  Future<bool> get locationIsEnabled;
}

@prod
@lazySingleton
@RegisterAs(PermissionHandler)
@injectable
class PermissionHandlerImpl implements PermissionHandler {
  @override
  Future<Map<Permission, PermissionStatus>> get requestPermissions => [
        Permission.camera,
        Permission.locationWhenInUse,
      ].request();

  @override
  Future<bool> get locationIsEnabled =>
      Permission.locationWhenInUse.serviceStatus.isEnabled;
}
