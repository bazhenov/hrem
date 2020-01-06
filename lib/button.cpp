#include "button.h"
#include <avr/sfr_defs.h>
#include <avr/io.h>

template <class P>
Button<P>::Button(uint8_t pin, buttonCallback* callback)
  : _pin(pin), _callback(callback), _state(RELEASED) {

  P::ddr() &= ~_BV(_pin);
  P::port() |= _BV(_pin);
}

template <class P>
void Button<P>::peek() {
  bool pressed = (P::pin() & _BV(_pin)) == 0;
  switch ( _state ) {
    case RELEASED:
      if ( pressed )
        _state = MAYBE_PRESSED;
      return;

    case MAYBE_PRESSED:
      _state = pressed ? PRESSED : RELEASED;
      return;

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
      return;

    case LONG_PRESSED:
      if ( !pressed ) {
        _state = LONG_PRESS_MAYBE_RELEASE;
      }
      return;

    case LONG_PRESS_MAYBE_RELEASE:
      _state = pressed ? LONG_PRESSED : RELEASED;
      return;

    case MAYBE_RELEASED:
      _state = pressed ? PRESSED : RELEASED;
      if ( !pressed )
        _callback(Click);
      return;
  }
}