#ifndef _BUTTON_H_
#define _BUTTON_H_

#include <stdint.h>
#include <avr/io.h>
#include "common.h"

enum Response {
  None, Click, LongPress
};

template<int T>
class Button {
  private:
  uint8_t _pin;

  public:
  Button(uint8_t pin);

  Response peek();
};

#ifdef PORTB
  template class Button<Port::B>;
#endif

#endif