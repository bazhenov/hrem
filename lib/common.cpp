#include <util/delay.h>
#include "common.h"

void run_poll_loop(PollingEntry* components, uint8_t size) {
  uint32_t ms_counter = 0;

  for (;;) {
    for (uint8_t i = 0; i < size; i++) {
      PollingEntry& e = components[i];
      if ( e.deadline <= ms_counter ) {
        uint16_t desired_delay = e.component.poll();
        e.deadline = ms_counter + desired_delay;
      }
    }
    ms_counter++;
    _delay_ms(1);
  }
}