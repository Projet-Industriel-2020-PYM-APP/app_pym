import 'dart:io';
import 'package:path/path.dart';

String get testDirectory {
  return join(
    Directory.current.path,
    Directory.current.path.endsWith('test') ? '' : 'test',
  );
}

String fixture(String name) {
  return File('$testDirectory/fixtures/$name').readAsStringSync();
}

Stream<List<int>> fixtureByte(String name) async* {
  yield* File('$testDirectory/fixtures/$name').openRead();
}
