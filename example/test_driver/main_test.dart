import 'package:flutter/material.dart';
import 'package:flutter_driver/flutter_driver.dart' as Driver;
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('end-to-end test', () {
    Driver.FlutterDriver? driver;

    setUpAll(() async {
      driver = await Driver.FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) await driver!.close();
    });

    test('tap on the floating action button; verify counter', () async {
      Finder fab = find.byIcon(Icons.add);
      await screenshot(driver, config, '0');
    });
  });
}
