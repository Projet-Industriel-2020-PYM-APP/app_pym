import 'package:app_pym/core/directory_manager/directory_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: DirectoryManager)
class MockDirectoryManager extends Mock implements DirectoryManager {}
