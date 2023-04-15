use_bpm 128

live_loop :met do
  sleep 8
end


live_loop :octave_riff, sync: :met do
    play :cs5, release: 5, note_slide: 1
    sleep 4
    s = play :cs6, release: 5, note_slide: 1
    sleep 4
end

###
live_loop :octave_riff, sync: :met do
  ##| use_synth :saw
  s = play :cs5, release: 5, note_slide: 1
  sleep 3
  control s, note: :cs6
  sleep 1
  s = play :cs6, release: 5, note_slide: 1
  sleep 3
  control s, note: :cs5
  sleep 1
end
