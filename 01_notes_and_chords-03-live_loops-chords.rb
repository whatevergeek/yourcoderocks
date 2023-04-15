#notes and chords

live_loop :chords do
    play (chord :cs4, :minor) 
    sleep 1
end
###
live_loop :chords do
    play (chord :cs4, :minor)
    sleep 1
    play (chord :e4, :major)
    sleep 1
    play (chord :b3, :major)
    sleep 1
    play (chord :a3, :major)
    sleep 1
end
###
use_bpm 128
chprog = (ring
            (chord :cs4, :minor),
            (chord :e4, :major),
            (chord :b3, :major),
            (chord :a3, :major))
live_loop :chords do
    play chprog.tick
    sleep 2
end
###
