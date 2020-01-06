#include <avr/io.h>
#include <util/delay.h>
#include <lib/button.h>
#include <lib/DigitalOutput.h>

void handle_click(EventType response);

Button<PortB> button(2, &handle_click);
DigitalOutput<PortB> led(1);

int main() {
  PollingEntry entries[] = {
    {button}
  };

  run_poll_loop(entries, sizeof(entries) / sizeof(entries[0]));
}

void handle_click(EventType response) {
  if (response == Click)
    led.toggle();
  else if ( response == LongPress ) {
    for (int i=0; i < 3; i ++) {
      led.strobe(50);
    }
  }
}