import 'package:flutter_driver/driver_extension.dart';
import 'package:app_pym/main.dart' as app;

Future<void> main() async {
  // This line enables the extension.
  enableFlutterDriverExtension();
  print("FLUTTER DRIVER ENABLED");

  // Call the `main()` function of the app, or call `runApp` with
  // any widget you are interested in testing.
  await app.main();
}
