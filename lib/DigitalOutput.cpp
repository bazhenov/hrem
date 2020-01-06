#include <avr/io.h>
#include "DigitalOutput.h"

template <class P>
DigitalOutput<P>::DigitalOutput(uint8_t pin) : _pin(pin) {
  P::ddr() |= _BV(pin);
}

template <class P>
void DigitalOutput<P>::on() {
  P::port() |= _BV(_pin);
}

template <class P>
void DigitalOutput<P>::off() {
  P::port() &= ~_BV(_pin);
}

template <class P>
void DigitalOutput<P>::toggle() {
  P::port() ^= _BV(_pin);
}