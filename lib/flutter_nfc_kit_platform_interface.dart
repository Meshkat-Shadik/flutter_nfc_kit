import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_nfc_kit_method_channel.dart';

abstract class FlutterNfcKitPlatform extends PlatformInterface {
  /// Constructs a FlutterNfcKitPlatform.
  FlutterNfcKitPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterNfcKitPlatform _instance = MethodChannelFlutterNfcKit();

  /// The default instance of [FlutterNfcKitPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterNfcKit].
  static FlutterNfcKitPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterNfcKitPlatform] when
  /// they register themselves.
  static set instance(FlutterNfcKitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
