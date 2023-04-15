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
  ##| stop
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

chord_volume = 2
chprog = (ring
          (chord :cs4, :minor),
          (chord :e4, :major),
          (chord :b3, :major),
          (chord :a3, :major))
live_loop :chords, sync: :met do
  use_synth :supersaw
  play chprog.tick, amp: chord_volume
  sleep 2
end

live_loop :kick, sync: :met do
  sample :bd_haus
  sleep 1
end

live_loop :snare, sync: :met do
  ##| stop
  sleep 1
  sample :sn_dolf
  sleep 1
end

live_loop :octave_riff, sync: :met do
  stop
  use_synth :saw
  s = play :cs5, release: 5, note_slide: 1
  sleep 3
  control s, note: :cs6
  sleep 1
  s = play :cs6, release: 5, note_slide: 1
  sleep 3
  control s, note: :cs5
  sleep 1
end



