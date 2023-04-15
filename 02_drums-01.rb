use_bpm 128

live_loop :met do
  sleep 8
end

live_loop :kick, sync: :met do
  sample :bd_haus
  sleep 1
end

live_loop :snare, sync: :met do
  sleep 1
  sample :sn_dolf
  sleep 1
end

live_loop :hihat, sync: :met do
  sample :drum_cymbal_closed
  sleep 0.5
end

live_loop :openhat, syn: :met do
  sample :drum_cymbal_open
  sleep 8
end