#pragma once
#ifdef __cplusplus
namespace pcsc_interface{
extern "C" {
#endif

bool available();

// TODO: abstract some interfaces from PC/SC API
// On Linux, implement with PCSCLite:
// https://pcsclite.apdu.fr/api/group__API.html
// On Windows, implement use PC/SC API on Windows in <winscard.h>:
// https://learn.microsoft.com/en-us/windows/win32/secauthn/smart-card-and-reader-access-functions

#ifdef __cplusplus
}
}
#endif
