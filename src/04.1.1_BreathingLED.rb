require 'pi_piper'
include PiPiper

pwm = PiPiper::Pwm.new pin: 18
pwm.on

loop do
  0.step(1.0, 0.01) do |v|
    pwm.value = v
    sleep 0.01
  end
  sleep 1

  1.0.step(0, -0.01) do |v|
    pwm.value = v
    sleep 0.01
  end
  sleep 1
end