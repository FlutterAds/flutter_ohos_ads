import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_ohos_ads_platform_interface.dart';

/// An implementation of [FlutterOhosAdsPlatform] that uses method channels.
class MethodChannelFlutterOhosAds extends FlutterOhosAdsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_ohos_ads');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
