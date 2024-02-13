import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'android_ringtone_uri_method_channel.dart';

abstract class AndroidRingtoneUriPlatform extends PlatformInterface {
  /// Constructs a AndroidRingtoneUriPlatform.
  AndroidRingtoneUriPlatform() : super(token: _token);

  static final Object _token = Object();

  static AndroidRingtoneUriPlatform _instance =
      MethodChannelAndroidRingtoneUri();

  /// The default instance of [AndroidRingtoneUriPlatform] to use.
  ///
  /// Defaults to [MethodChannelAndroidRingtoneUri].
  static AndroidRingtoneUriPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AndroidRingtoneUriPlatform] when
  /// they register themselves.
  static set instance(AndroidRingtoneUriPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getDefaultRingtone() {
    throw UnimplementedError('getDefaultRingtone() has not been implemented.');
  }
}
