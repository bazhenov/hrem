#include <avr/io.h>
#include <util/delay.h>
#include <lib/button.h>
#include <lib/DigitalOutput.h>

void handle_click(Response response);

Button<Port::B> button(2, &handle_click);
DigitalOutput<Port::B> led(1);

int main() {
  for (;;) {
    button.peek();
    _delay_ms(10);
  }
}

void handle_click(Response response) {
  if (response == Click)
    led.toggle();
  else if ( response == LongPress ) {
    for (int i=0; i < 3; i ++) {
      led.toggle();
      _delay_ms(50);
      led.toggle();
      _delay_ms(50);
    }
  }
};