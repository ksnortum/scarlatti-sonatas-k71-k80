%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Minuet in G major"
  opus = "K.80"
  source = "http://vmirror.imslp.org/files/imglnks/usimg/0/08/IMSLP915348-PMLP334467-E387479_177--It.IV.199-_61_Sonate.pdf"
}

global = {
  \time 3/8
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    g''8 fs16 g d8 |
    b8 g d' |
    g8 fs16 g d8 |
    b8 g ef' |
    d8( cs) g |
    fs16 e d8 d' |
    c8( b) f |
    ef16 d c8 c' |
    
    \barNumberCheck 9
    bf8 a g |
    fs!16 e d8 f' |
    ef8( d c) |
    b!16 a g8 bf' |
    af8 g f |
    ef( d c) |
    bf8 a g |
    fs8 d' g, |
    
    \barNumberCheck 17
    fs8 g8.\trill fs32 g |
    a8 d, b' |
    c8 d, b' |
    a4. |
  }
  \repeat volta 2 {
    d8 cs16 d a8 |
    fs8 d a' |
    d8 cs16 d a8 |
    fs8 d bf'' |
    
    \barNumberCheck 25
    a8 gs d |
    cs16 b a8 a' |
    g8( fs c!) |
    b16 a g8 af' |
    af8 g f |
    ef16 d c8 c' |
    bf8( a g) |
    fs8( e d) |
    
    \barNumberCheck 33
    c8 b a |
    b16 a g8 d' |
    f,( e) d |
    e8 g c |
    b8 a8.\trill g32 a |
    d,8 g' c, |
    b8 a4\trill |
    g4. |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    g4 d8 |
    g,4. |
    r8 r d' |
    g,4. |
    r8 r a' |
    d,4. |
    r8 r g |
    c,4. |
    
    \barNumberCheck 9
    cs4. |
    d4. |
    fs!4. |
    g4. |
    b!4. |
    c4. |
    cs4. |
    d4 b!8 |
    
    \barNumberCheck 17
    a8 b g |
    fs8 d g |
    a8 fs g |
    d4. |
  }
  \repeat volta 2 {
    r8 r a |
    d4. |
    r8 r a |
    d4. |
    
    \barNumberCheck 25
    r8 r e |
    a,4. |
    r8 r d |
    g,4. |
    b4. |
    c4. |
    cs4. |
    d4. |
    
    \barNumberCheck 33
    fs4. |
    g4. |
    b,4. |
    c4 c'8 |
    d8 d, c' |
    b8 b, c |
    d4 d,8 |
    g4. |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 8 = 132
    s4. * 16 |
    
    \barNumberCheck 17
    s4. * 2 |
    s8 s s |
    s4. |
  }
  \repeat volta 2 {
    s4. * 4 |
    
    \barNumberCheck 25
    s4. * 8 |
    
    \barNumberCheck 33
    s4. * 6 |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        { s4. * 2 | }
        {
          \tempo 8 = 116 s8 \tempo 8 = 108 s \tempo 8 = 96 s |
          \tempo 8 = 84 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  s4. * 6 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 6 \break
  s4. * 7 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \tempi >>
    \new Staff = "lower" << \leftHand \tempi >>
  >>
  \midi {}
}
