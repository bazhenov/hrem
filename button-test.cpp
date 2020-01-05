#include <avr/io.h>
#include <util/delay.h>
#include <lib/button.h>
#include <lib/DigitalOutput.h>

int main() {
  
  Button<Port::B> button(2);

  DigitalOutput<Port::B> led(1);

  for (;;) {
    if (button.peek() == Response::Click) {
      led.toggle();
      _delay_ms(100);
    }
  }
}