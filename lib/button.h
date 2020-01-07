#ifndef _BUTTON_H_
#define _BUTTON_H_

#include <stdint.h>
#include <avr/io.h>
#include "common.h"

enum EventType {
  None, Click, LongPress
};

typedef void buttonCallback(EventType response);

enum State {
  RELEASED, MAYBE_PRESSED, PRESSED, MAYBE_RELEASED, LONG_PRESSED, LONG_PRESS_MAYBE_RELEASE
};

template<class PORT, int PIN>
class Button : public PollBase {
  private:
  buttonCallback* _callback = 0;
  uint8_t _pressDuration = 0;
  State _state;

  public:
  Button(buttonCallback* callback);
  uint16_t poll();
};

#ifdef PORTB
  template class Button<PortB, 2>;
#endif

#endif