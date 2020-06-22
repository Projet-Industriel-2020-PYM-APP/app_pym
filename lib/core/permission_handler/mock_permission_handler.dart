import 'package:app_pym/core/permission_handler/permission_handler.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: PermissionHandler)
class MockPermissionHandler extends Mock implements PermissionHandler {}
