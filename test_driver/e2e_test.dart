import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {
    final counterTextFinder = find.byValueKey('counter_value');
    final incrementButtonFinder = find.byValueKey('increment_button');

    FlutterDriver? driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver!.close();
      }
    });

    test('starts at 0', () async {
      expect(await driver!.getText(counterTextFinder), '0');
    });

    test('increments the counter', () async {
      await driver!.tap(incrementButtonFinder);
      expect(await driver!.getText(counterTextFinder), '1');
    });
  });
}
