# Score Template planning

Bass materials:
- Plucking
- Striking (Chopstick)
- Fingering (Regular, Hammer On/off, Harmonic, Mute)
- Sliding (Brass Mallet)
- Spring Drum (Muted/Unmuted, Chords, Gliss)
- Bow

Fingering staff (scordatura):
D4+14c (296 Hz)
C#4-20c (274 Hz)
D#3-6c (155 Hz)
B2+7c (124 Hz)

thus music must be always relative*.
Chord diagrams will be used for spring drum movements/alterations

Each string to have its own staff for fingering
- regular note-heads are regular fingerings
- harmonics have circles with a harmonic number in brackets if necessary,
- hammer on/off have...
- dampened strings have...

- Brass mallet slides between two notes, ratchet sound on fingerboard, so circle
  between two staves, with vertical lines for ratchet sound (or other solution)
- Spring drum is across four notes, so box notes, arrows on top for direction to
  pull and X to dampen.

- Bow, striking and plucking positions on bottom staff (bridge to start of f.b.)

Score template should have:
- Spring drum movements staff/voice
- Brass mallet doublestop staff/Voice
- Fingering/playing staves/voices

And these should be postprocessed:
- Spring drum staff/voice:
- Brass mallet staff/voice:
- Fingering/playing staves/voices:

## VERSION 2:

Hammered notes on a tab staff
- Plucked notes with symbol over notehead, otherwise always hammered.
Brass mallet notes boxed or with a circle between the string lines
- Make this a rhythmic staff with indicators for fret positions and string-space
  positions, then postprocess it as a new voice in the main staff that places its
  notes in the correct staff spaces.
Spring drum chords notes are highlighted vertically
- minimumFret must be set to one fret above current spring drum position
