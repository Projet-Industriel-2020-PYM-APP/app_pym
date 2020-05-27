import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:flutter/services.dart' show ByteData, rootBundle;

abstract class DirectoryManager {
  Future<String> get metropole;
  Future<String> get sncf;
  Future<ByteData> get cpaZip;
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

  @override
  Future<ByteData> get cpaZip => rootBundle.load('assets/bus_data/CPA.zip');
}
