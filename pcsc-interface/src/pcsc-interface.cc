#include "pcsc-interface.h"

#include <winscard.h>

bool pcsc_interface::available() {
  // TODO: this is a non-sense stub that references symbols from PCSCLite / PCSC
  return SCardCancel == SCardIsValidContext;
}
