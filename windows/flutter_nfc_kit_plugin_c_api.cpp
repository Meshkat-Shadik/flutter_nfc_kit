#include "include/flutter_nfc_kit/flutter_nfc_kit_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_nfc_kit_plugin.h"

void FlutterNfcKitPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_nfc_kit::FlutterNfcKitPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
