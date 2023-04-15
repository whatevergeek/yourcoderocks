use_bpm 128

define :mel2bars do
  play :fs4
  sleep 0.5
  2.times do
    play :e4
    sleep 0.5
  end
  sleep 0.5
  4.times do
    play :e4
    sleep 0.5
  end
end

define :melendpart do
  sleep 0.5
  play :cs5
  sleep 0.5
  play :b4
  sleep 0.5
  play :gs4
  sleep 0.5
end

live_loop :melody do
  mel2bars
  2.times do
    play :ds4
    sleep 0.5
  end
  2.times do
    play :e4
    sleep 0.5
  end
  melendpart
  mel2bars
  2.times do
    play :cs4
    sleep 0.5
  end
  2.times do
    play :b3
    sleep 0.5
  end
  melendpart
end