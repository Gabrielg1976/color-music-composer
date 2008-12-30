# These intervals are to be combined into chords and possibly scales.
# The list below consists of the shorthand name for the interval, followed
# by the number of semitones which that interval increases the preceeding note.
# The interval designations are as follow: Perfect Unison, minor 2ND, Major 2ND,
# minor 3RD, Major 3RD, Perfect 4TH, Augmented 4TH, Diminished 5TH, Perfect 5TH,
# minor 6TH, Major 6TH, minor 7TH, Major 7TH, Perfect Octave.
:PU = 0
:m2 = 1
:M2 = 2
:m3 = 3
:M3 = 4
:P4 = 5
:aug4 = 6
:dim5 = 6
:P5 = 7
:m6 = 8
:M6 = 9
:m7 = 10
:M7 = 11
:PO = 12
# This deviates a bit from standardized notation for the interval names.
# Symbols normally used to designate intervals, such as ° and +, might 
# be tricky to work with and/or conflicting with other aspects of the code. 

# The following code is intended to take a note input along with the desired
# interval and also the direction of motion and calculate the following note
# value. A rhizome creates both roots and shoots and spawns genetic thoughts :)

#def interval(rhizome,interval,direction)
#  if direction == up
#    rhizome += interval
#  elsif direction == down
#    rhizome -= interval
#  elsif direction != up and direction != down  
#    raise ArgumentError.new('Please choose up or down :)')  
#  end
#end