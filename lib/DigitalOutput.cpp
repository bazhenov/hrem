#include <avr/io.h>
#include "DigitalOutput.h"

template <int PORT>
DigitalOutput<PORT>::DigitalOutput(uint8_t pin) : _pin(pin) {
  ddr_ref<PORT>() |= _BV(pin);
}

template <int PORT>
void DigitalOutput<PORT>::on() {
  port_ref<PORT>() |= _BV(_pin);
}

template <int PORT>
void DigitalOutput<PORT>::off() {
  port_ref<PORT>() &= ~_BV(_pin);
}

template <int PORT>
void DigitalOutput<PORT>::toggle() {
  port_ref<PORT>() ^= _BV(_pin);
}