#ifndef _COMMON_H_
#define _COMMON_H_

#include <avr/io.h>

typedef volatile uint8_t register8_t;

#ifdef PORTB
typedef struct {
  static register8_t& port() { return PORTB; }
  static register8_t& ddr() { return DDRB; }
  static register8_t& pin() { return PINB; }
} PortB;
#endif

#endif