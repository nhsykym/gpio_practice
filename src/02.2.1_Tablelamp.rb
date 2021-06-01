require 'pi_piper'
include PiPiper

led = PiPiper::Pin.new(pin: 17, direction: :out)
button = PiPiper::Pin.new(pin: 18, direction: :in, pull: :down, trigger: :rising)
led_state = false

loop do
  button.wait_for_change
  button.read
  led_state = !(led_state)
  led_state ? led.on : led.off
end