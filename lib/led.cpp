#include <avr/io.h>
#include "led.h"

Led::Led(volatile uint8_t& ddr, volatile uint8_t& port, uint8_t pin)
  : _port(port), _pin(pin) {

  ddr |= _BV(pin);
}

void Led::on() {
  _port |= _BV(_pin);
}

void Led::off() {
  _port &= ~_BV(_pin);
}

void Led::toggle() {
  _port ^= _BV(_pin);
}