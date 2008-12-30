# Construct arrays of MIDI values for cromatic labels.
# The MIDI range is 0-127 and middle C is 60.
# 0 is C[0] 127 is G[10]. Values above 127 are octave shifted down.
:A = [9,21,33,45,57,69,81,93,105,117,117]
:A+ = [10,22,34,46,58,70,82,94,106,118,118]
:B = [11,23,35,47,59,71,83,95,107,119,119]
:C = [0,12,24,36,48,60,72,84,96,108,120]
:C+ = [1,13,25,37,49,61,73,85,97,109,121]
:D = [2,14,26,38,50,62,74,86,98,110,122]
:D+ = [3,15,27,39,51,63,75,87,99,111,123]
:E = [4,16,28,40,52,64,76,88,100,112,124]
:F = [5,17,29,41,53,65,77,89,101,113,125]
:F+ = [6,18,30,42,54,66,78,90,102,114,126]
:G = [7,19,31,43,55,67,79,91,103,115,127]
:G+ = [8,20,32,44,56,68,80,92,104,116,116]
# Is there a way to generate the arrays above from 0 to 127 using a function?
# This might be desirable so as to avoid error. This might also be helpful
# should the reference note (C[0] and/or C[5]) ever change in the MIDI spec or otherwise.

# Another construction of the chromatic, demonstrating vibrational frequencies
# will possibly be desirable. I am unsure of the formula for the equal tempered 
# frequency quantizations of the chromatic scale. 