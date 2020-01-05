#include "common.h"

#ifdef PORTB
  template <>
  register8_t& ddr_ref<Port::B>() {
    return DDRB;
  }

  template <>
  register8_t& port_ref<Port::B>() {
    return PORTB;
  }

  template <>
  register8_t& pin_ref<Port::B>() {
    return PINB;
  }
#endif