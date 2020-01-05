#ifndef _COMMON_H_
#define _COMMON_H_

#include <avr/io.h>

typedef volatile uint8_t register8_t;

template<int port>
register8_t& ddr_ref();

template<int port>
register8_t& port_ref();

template<int port>
register8_t& pin_ref();



enum Port {
#ifdef PORTA
  A,
#endif
#ifdef PORTB
  B,
#endif
};

#endif