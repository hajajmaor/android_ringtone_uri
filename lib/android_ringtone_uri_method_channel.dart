import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'android_ringtone_uri_platform_interface.dart';

/// An implementation of [AndroidRingtoneUriPlatform] that uses method channels.
class MethodChannelAndroidRingtoneUri extends AndroidRingtoneUriPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('android_ringtone_uri');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getDefaultRingtone() async {
    final ringtone =
        await methodChannel.invokeMethod<String>('getDefaultRingtone');
    return ringtone;
  }
}
