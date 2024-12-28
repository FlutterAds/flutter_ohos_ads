
import 'flutter_ohos_ads_platform_interface.dart';

class FlutterOhosAds {
  Future<String?> getPlatformVersion() {
    return FlutterOhosAdsPlatform.instance.getPlatformVersion();
  }
}
