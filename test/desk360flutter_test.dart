import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:desk360flutter/desk360flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('desk360flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '1';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    //expect(await Desk360flutter.platformVersion, '1');
  });
}
