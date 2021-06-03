require 'pi_piper'
include PiPiper

led = PiPiper::Pin.new(pin: 17, direction: :out)
button = PiPiper::Pin.new(pin: 18, direction: :in, pull: :up)

loop do
  button.read
  if button.value == 0
    led.on
    puts 'buzzer turned on >>>'
  else
    led.off
    puts 'buzzer turned off <<<'
  end
end