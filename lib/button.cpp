#include "button.h"
#include <avr/sfr_defs.h>
#include <avr/io.h>

template <int PORT>
Button<PORT>::Button(uint8_t pin) : _pin(pin) {
  ddr_ref<PORT>() &= ~_BV(_pin);
  port_ref<PORT>() |= _BV(_pin);
}

template <int PORT>
Response Button<PORT>::peek() {
  if ( (pin_ref<PORT>() & _BV(_pin)) == 0 ) {
    return Response::Click;
  }
  return Response::None;
}