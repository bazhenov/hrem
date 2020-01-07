#ifndef _LED_H_
#define _LED_H_

#include "common.h"
#include <stdint.h>
#include <avr/io.h>
#include <util/delay.h>

template <class PORT, uint8_t PIN>
class DigitalOutput {

  public:
  DigitalOutput();

  void toggle();
  void off();
  void on();

  void strobe(uint16_t delayMs);
};

template <class PORT, uint8_t PIN>
DigitalOutput<PORT, PIN>::DigitalOutput() {
  PORT::ddr() |= _BV(PIN);
}

template <class PORT, uint8_t PIN>
void DigitalOutput<PORT, PIN>::on() {
  PORT::port() |= _BV(PIN);
}

template <class PORT, uint8_t PIN>
void DigitalOutput<PORT, PIN>::off() {
  PORT::port() &= ~_BV(PIN);
}

template <class PORT, uint8_t PIN>
void DigitalOutput<PORT, PIN>::toggle() {
  PORT::port() ^= _BV(PIN);
}

template <class PORT, uint8_t PIN>
void DigitalOutput<PORT, PIN>::strobe(uint16_t delayMs) {
  on();
  _delay_ms(50);
  off();
  _delay_ms(50);
}

#endif