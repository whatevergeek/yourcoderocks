use_bpm 128

live_loop :met do
  sleep 8
end

define :send_to_bespoke do |n|
  midi n, port: "bifrost_2"
end

define :mel2bars do
  send_to_bespoke :fs4
  sleep 0.5
  2.times do
    send_to_bespoke :e4
    sleep 0.5
  end
  sleep 0.5
  4.times do
    send_to_bespoke :e4
    sleep 0.5
  end
end

define :melendpart do
  sleep 0.5
  send_to_bespoke :cs5
  sleep 0.5
  send_to_bespoke :b4
  sleep 0.5
  send_to_bespoke :gs4
  sleep 0.5
end

live_loop :melody, sync: :met do
  mel2bars
  2.times do
    send_to_bespoke :ds4
    sleep 0.5
  end
  2.times do
    send_to_bespoke :e4
    sleep 0.5
  end
  melendpart
  mel2bars
  2.times do
    send_to_bespoke :cs4
    sleep 0.5
  end
  2.times do
    send_to_bespoke :b3
    sleep 0.5
  end
  melendpart
end