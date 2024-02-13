import 'package:android_ringtone_uri/android_ringtone_uri.dart';
import 'package:android_ringtone_uri/android_ringtone_uri_method_channel.dart';
import 'package:android_ringtone_uri/android_ringtone_uri_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAndroidRingtoneUriPlatform
    with MockPlatformInterfaceMixin
    implements AndroidRingtoneUriPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getDefaultRingtone() {
    return Future.value("content://settings/system/ringtone");
  }
}

void main() {
  final AndroidRingtoneUriPlatform initialPlatform =
      AndroidRingtoneUriPlatform.instance;

  test('$MethodChannelAndroidRingtoneUri is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAndroidRingtoneUri>());
  });

  test('getPlatformVersion', () async {
    AndroidRingtoneUri androidRingtoneUriPlugin = AndroidRingtoneUri();
    MockAndroidRingtoneUriPlatform fakePlatform =
        MockAndroidRingtoneUriPlatform();
    AndroidRingtoneUriPlatform.instance = fakePlatform;

    expect(await androidRingtoneUriPlugin.getPlatformVersion(), '42');
    expect(await androidRingtoneUriPlugin.getDefaultRingtone(),
        'content://settings/system/ringtone');
  });
}
