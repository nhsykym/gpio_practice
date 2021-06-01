require 'pi_piper'
include PiPiper

pin_blue = PiPiper::Pin.new(pin: 17, direction: :out)
pin_red = PiPiper::Pin.new(pin: 18, direction: :out)

loop do
  pin_blue.on
  pin_red.off
  sleep 0.5
  pin_blue.off
  pin_red.on
  sleep 0.5
end