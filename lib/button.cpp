#include "button.h"
#include <avr/sfr_defs.h>
#include <avr/io.h>

#define POLL_INTERVAL 10

template <class PORT, int PIN>
Button<PORT, PIN>::Button(buttonCallback* callback)
  : _callback(callback), _state(RELEASED) {

  PORT::ddr() &= ~_BV(PIN);
  PORT::port() |= _BV(PIN);
}

template <class PORT, int PIN>
uint16_t Button<PORT, PIN>::poll() {
  bool pressed = (PORT::pin() & _BV(PIN)) == 0;
  switch ( _state ) {
    case RELEASED:
      if ( pressed )
        _state = MAYBE_PRESSED;
      break;

    case MAYBE_PRESSED:
      _state = pressed ? PRESSED : RELEASED;
      break;

    case PRESSED:
      if ( pressed ) {
        if ( _pressDuration++ > 100 ) {
          _state = LONG_PRESSED;
          _pressDuration = 0;
          _callback(LongPress);
        }
      } else {
        _state = MAYBE_RELEASED;
        _pressDuration = 0;
      }
      break;

    case LONG_PRESSED:
      if ( !pressed ) {
        _state = LONG_PRESS_MAYBE_RELEASE;
      }
      break;

    case LONG_PRESS_MAYBE_RELEASE:
      _state = pressed ? LONG_PRESSED : RELEASED;
      break;

    case MAYBE_RELEASED:
      _state = pressed ? PRESSED : RELEASED;
      if ( !pressed )
        _callback(Click);
      break;
  }
  return POLL_INTERVAL;
}