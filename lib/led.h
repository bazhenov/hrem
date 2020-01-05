#ifndef _LED_H_
#define _LED_H_

#include <stdint.h>

class Led {

  private:
  volatile uint8_t& _port;
  uint8_t _pin;

  public:
  Led(volatile uint8_t& ddr, volatile uint8_t& port, uint8_t pin);

  void toggle();
  void off();
  void on();
};

#endif