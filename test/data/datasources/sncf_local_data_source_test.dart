import 'package:app_pym/core/directory_manager/directory_manager.dart';
import 'package:app_pym/data/datasources/sncf_local_data_source.dart';
import 'package:app_pym/injection_container.dart';
import 'package:archive/archive.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';

void main() {
  SNCFLocalDataSource dataSource;
  DirectoryManager mockDirectoryManager;
  ZipDecoder mockZipDecoder;

  init(env: Environment.test);

  setUp(() {
    mockZipDecoder = sl<ZipDecoder>();
    mockDirectoryManager = sl<DirectoryManager>();

    dataSource = SNCFLocalDataSourceImpl(
      directoryManager: mockDirectoryManager,
      zipDecoder: mockZipDecoder,
    );
  });
}
