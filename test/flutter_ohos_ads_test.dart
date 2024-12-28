import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ohos_ads/flutter_ohos_ads.dart';
import 'package:flutter_ohos_ads/flutter_ohos_ads_platform_interface.dart';
import 'package:flutter_ohos_ads/flutter_ohos_ads_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterOhosAdsPlatform
    with MockPlatformInterfaceMixin
    implements FlutterOhosAdsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterOhosAdsPlatform initialPlatform = FlutterOhosAdsPlatform.instance;

  test('$MethodChannelFlutterOhosAds is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterOhosAds>());
  });

  test('getPlatformVersion', () async {
    FlutterOhosAds flutterOhosAdsPlugin = FlutterOhosAds();
    MockFlutterOhosAdsPlatform fakePlatform = MockFlutterOhosAdsPlatform();
    FlutterOhosAdsPlatform.instance = fakePlatform;

    expect(await flutterOhosAdsPlugin.getPlatformVersion(), '42');
  });
}
