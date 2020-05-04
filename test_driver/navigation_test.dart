// Imports the Flutter Driver API.
import 'dart:io';

import 'package:app_pym/core/keys/keys.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import 'constants.dart';

void main() {
  group('PYM Navigation Testing', () {
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();

      var connected = false;
      while (!connected) {
        try {
          await driver.waitUntilFirstFrameRasterized();
          connected = true;
        } catch (error) {
          continue;
        }
      }
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      await driver?.close();
    });

    test('Check flutter driver health', () async {
      final Health health = await driver.checkHealth();
      print(health.status);
      expect(health.status, equals(HealthStatus.ok));
    }, timeout: const Timeout(Duration(minutes: 30)));

    group('Navigation', () {
      test('Move to Actualite', () async {
        await takeScreenshot(driver, ScreenshotsPaths.actualite);
      });

      test('Move to Mobilite', () async {
        await driver.tap(find.byValueKey(KeysStringNavigation.mobilite));
        await takeScreenshot(driver, ScreenshotsPaths.mobilite);
      });

      test('Move to Cartographie', () async {
        await driver.tap(find.byValueKey(KeysStringNavigation.cartographie));
        await Future<void>.delayed(const Duration(minutes: 1));
        await takeScreenshot(driver, ScreenshotsPaths.cartographie);
      }, timeout: const Timeout(Duration(minutes: 5)));

      // Note: AR is unstable. Do not use it for screen shots.
      // test('Move to AR', () async {
      //   await driver.tap(find.byValueKey(KeysStringNavigation.ar));
      //   await takeScreenshot(driver, ScreenshotsPaths.ar);
      //   await driver
      //       .tap(find.byValueKey(KeysStringNavigation.goBackAlternative));
      // });

      test('Move to Services', () async {
        await driver.tap(find.byValueKey(KeysStringNavigation.services));
        await takeScreenshot(driver, ScreenshotsPaths.services);
      });
      test('Open More', () async {
        await driver.tap(find.byValueKey(KeysStringNavigation.more));
      });

      test('Close More', () async {
        await driver.tap(find.byType('ModalBarrier'));
      });

      test('Move to Parameters', () async {
        await driver.tap(find.byValueKey(KeysStringNavigation.more));
        await driver.tap(find.byValueKey(KeysStringNavigation.parameters));
        await takeScreenshot(driver, ScreenshotsPaths.parameters);
        try {
          await driver.tap(find.pageBack()).timeout(const Duration(seconds: 5),
              onTimeout: () {
            throw Exception("pageBack failed. Using french tooltip...");
          });
        } catch (e) {
          print(e);
          await driver
              .tap(find.byTooltip('Retour'))
              .timeout(const Duration(seconds: 5), onTimeout: () {
            throw Exception("tooltip 'Retour' failed.");
          });
        }
      });

      test('Move to Contact', () async {
        await driver.tap(find.byValueKey(KeysStringNavigation.more));
        await driver.tap(find.byValueKey(KeysStringNavigation.contacts));
        await takeScreenshot(driver, ScreenshotsPaths.contacts);
        try {
          await driver.tap(find.pageBack()).timeout(const Duration(seconds: 5),
              onTimeout: () {
            throw Exception("pageBack failed. Using french tooltip...");
          });
        } catch (e) {
          print(e);
          await driver
              .tap(find.byTooltip('Retour'))
              .timeout(const Duration(seconds: 5), onTimeout: () {
            throw Exception("tooltip 'Retour' failed.");
          });
        }
      });
    }, timeout: const Timeout(Duration(minutes: 15)));
  }, timeout: const Timeout(Duration(minutes: 15)));
}

Future<void> takeScreenshot(FlutterDriver driver, String path) async {
  await driver
      .waitUntilNoTransientCallbacks()
      .timeout(const Duration(seconds: 5), onTimeout: () {
    print("waitUntilNoTransientCallbacks timed out.");
  });
  final List<int> pixels = await driver.screenshot();
  final File file = File(path);
  file.createSync(recursive: true);
  file.writeAsBytesSync(pixels);
  print(path);
}
