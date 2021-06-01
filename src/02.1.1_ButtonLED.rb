require 'pi_piper'
include PiPiper

led = PiPiper::Pin.new(pin: 17, direction: :out)
button = PiPiper::Pin.new(pin: 18, direction: :in, pull: :down)

loop do
  button.read
  if button.value == 0
    led.on
  else
    led.off
  end
end