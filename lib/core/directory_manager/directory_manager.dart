import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

abstract class DirectoryManager {
  Future<String> get metropole;
  Future<String> get sncf;
}

@prod
@LazySingleton(as: DirectoryManager)
class DirectoryManagerImpl implements DirectoryManager {
  @override
  Future<String> get metropole async {
    final dir = path_provider.getApplicationDocumentsDirectory();
    return "${(await dir).path}/metropole";
  }

  @override
  Future<String> get sncf async {
    final dir = path_provider.getApplicationDocumentsDirectory();
    return "${(await dir).path}/sncf";
  }
}
