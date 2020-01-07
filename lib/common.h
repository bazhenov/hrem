#ifndef _COMMON_H_
#define _COMMON_H_

#include <avr/io.h>

typedef volatile uint8_t register8_t;

class PollBase {
  public:
  virtual uint16_t poll() = 0;
};

typedef struct {
  PollBase& component;
  uint32_t deadline = 0;
} PollingEntry;

void run_poll_loop(PollingEntry* components, uint8_t size);

#ifdef PORTB
typedef struct {
  static inline register8_t& port() { return PORTB; }
  static inline register8_t& ddr() { return DDRB; }
  static inline register8_t& pin() { return PINB; }
} PortB;
#endif

#endif