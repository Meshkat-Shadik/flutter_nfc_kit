import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit_platform_interface.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterNfcKitPlatform
    with MockPlatformInterfaceMixin
    implements FlutterNfcKitPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterNfcKitPlatform initialPlatform = FlutterNfcKitPlatform.instance;

  test('$MethodChannelFlutterNfcKit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterNfcKit>());
  });

  test('getPlatformVersion', () async {
    FlutterNfcKit flutterNfcKitPlugin = FlutterNfcKit();
    MockFlutterNfcKitPlatform fakePlatform = MockFlutterNfcKitPlatform();
    FlutterNfcKitPlatform.instance = fakePlatform;

    expect(await flutterNfcKitPlugin.getPlatformVersion(), '42');
  });
}
