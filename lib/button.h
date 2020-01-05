#ifndef _BUTTON_H_
#define _BUTTON_H_

#include <stdint.h>

enum Response {
  None, Click, LongPress
};

class Button {
  private:
  volatile uint8_t& _port;
  uint8_t _pin;

  public:
  Button(volatile uint8_t& ddr, volatile uint8_t& port, uint8_t pin);

  Response peek();
};

#endif