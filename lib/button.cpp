#include "button.h"
#include <avr/sfr_defs.h>
#include <avr/io.h>

Button::Button(volatile uint8_t& ddr, volatile uint8_t& port, uint8_t pin)
  : _port(port), _pin(pin) {

  ddr &= ~_BV(_pin);
  port |= _BV(pin);
}

Response Button::peek() {
  if ( (PINB & _BV(PINB2)) == 0 ) {
    return Response::Click;
  }
  return Response::None;
}