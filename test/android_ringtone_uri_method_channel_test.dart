import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:android_ringtone_uri/android_ringtone_uri_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelAndroidRingtoneUri platform = MethodChannelAndroidRingtoneUri();
  const MethodChannel channel = MethodChannel('android_ringtone_uri');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
