#notes and chords

play :c4
sleep 0.5
play :e4
sleep 0.5
play :g4
sleep 1
play :c4
play :e4
play :g4
sleep 1

[:c4,:e4,:g4].each do |n|
    play n
    sleep 0.5
end

[:c4,:e4,:g4].each do |n|
    play n
end

play (chord :c4, :major) 