#include <avr/io.h>
#include <util/delay.h>
#include <lib/button.h>
#include <lib/DigitalOutput.h>

void handle_click(EventType response);

Button<PortB> button(2, &handle_click);
DigitalOutput<PortB> led(1);

int main() {
  for (;;) {
    button.peek();
    _delay_ms(10);
  }
}

void handle_click(EventType response) {
  if (response == Click)
    led.toggle();
  else if ( response == LongPress ) {
    for (int i=0; i < 3; i ++) {
      led.strobe(50);
    }
  }
};