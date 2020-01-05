#ifndef _LED_H_
#define _LED_H_

#include <stdint.h>
#include "common.h"

template <int port>
class DigitalOutput {

  private:
  uint8_t _pin;

  public:
  DigitalOutput(uint8_t pin);

  void toggle();
  void off();
  void on();
};

#ifdef PORTB
template class DigitalOutput<Port::B>;
#endif

#endif