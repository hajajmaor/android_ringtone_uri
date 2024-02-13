import 'android_ringtone_uri_platform_interface.dart';

class AndroidRingtoneUri {
  Future<String?> getPlatformVersion() {
    return AndroidRingtoneUriPlatform.instance.getPlatformVersion();
  }

  /// Retrieves the default ringtone on an Android device.
  ///
  /// Returns the URI of the default ringtone as a [String], or `null` if no default ringtone is set.
  Future<String?> getDefaultRingtone() {
    return AndroidRingtoneUriPlatform.instance.getDefaultRingtone();
  }
}
