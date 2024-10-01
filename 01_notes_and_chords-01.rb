
#notes and chords
play 60
sleep 1
play :c4
# show midi note mapping https://www.inspiredacoustics.com/en/MIDI_note_numbers_and_center_frequencies

[48,60,72].each do |n|
    play n
    sleep 1
end
[:c3,:c4,:c5].each do |n|
    play n
    sleep 1
end