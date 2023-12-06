#ifndef FLUTTER_PLUGIN_FLUTTER_NFC_KIT_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_NFC_KIT_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_nfc_kit {

class FlutterNfcKitPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterNfcKitPlugin();

  virtual ~FlutterNfcKitPlugin();

  // Disallow copy and assign.
  FlutterNfcKitPlugin(const FlutterNfcKitPlugin&) = delete;
  FlutterNfcKitPlugin& operator=(const FlutterNfcKitPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_nfc_kit

#endif  // FLUTTER_PLUGIN_FLUTTER_NFC_KIT_PLUGIN_H_
