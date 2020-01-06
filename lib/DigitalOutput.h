#ifndef _LED_H_
#define _LED_H_

#include <stdint.h>
#include "common.h"

template <class P>
class DigitalOutput {

  private:
  uint8_t _pin;

  public:
  DigitalOutput(uint8_t pin);

  void toggle();
  void off();
  void on();

  void strobe(uint16_t delayMs);
};

#ifdef PORTB
template class DigitalOutput<PortB>;
#endif

#endif